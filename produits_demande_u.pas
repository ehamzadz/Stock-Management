unit produits_demande_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Grid, Data.DB,
  Data.Win.ADODB, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, FMX.Objects, FMX.StdCtrls;

type
  TForm5 = class(TForm)
    StringGrid4: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Rectangle63: TRectangle;
    Line5: TLine;
    Rectangle68: TRectangle;
    Rectangle70: TRectangle;
    Text30: TText;
    Rectangle71: TRectangle;
    Text31: TText;
    Rectangle33: TRectangle;
    Rectangle34: TRectangle;
    Text6: TText;
    Line3: TLine;
    Rectangle41: TRectangle;
    Text27: TText;
    Rectangle36: TRectangle;
    Text8: TText;
    Rectangle69: TRectangle;
    qry: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure Rectangle71Click(Sender: TObject);
    procedure Rectangle70Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    num_demande_produit :integer;
  end;

var
  Form5: TForm5;

implementation

{$R *.fmx}

uses dashboard, datamodule, raison_u;

procedure TForm5.FormShow(Sender: TObject);
begin

  datamodule.DataModule1.tbl_produits_demande.filtered := false;
  datamodule.DataModule1.tbl_produits_demande.filter := 'num_demande_produit=' + inttostr(num_demande_produit);
  datamodule.DataModule1.tbl_produits_demande.filtered := true;

  datamodule.DataModule1.tbl_produits_demande.active := false;
  datamodule.DataModule1.tbl_produits_demande.active := true;
  datamodule.DataModule1.tbl_produits_demande.refresh;

end;

procedure TForm5.Rectangle70Click(Sender: TObject);
var
  cat :string;
  num_delivery,num_achat,qte,i,id_record, test :integer;
begin

  test := 0;

  // accepter la demande + modifier demande_produits|status|delivery


  // add refresh accepted demande produits list
  //.............

  datamodule1.tbl_produits_demande.first;

  qry.SQL.Clear;
  qry.SQL.Add('insert into delivery (date_delivery,num_demande,num_it) values(:date_delivery,:num_demande,:num_it)');
  qry.Parameters.ParamByName('date_delivery').Value := datetimetostr(now);
  qry.Parameters.ParamByName('num_demande').Value := num_demande_produit;
  qry.Parameters.ParamByName('num_it').Value := dashboard.Form2.num_it_globalVar;
  qry.ExecSQL;
  qry.SQL.Clear;
  qry.SQL.Add('select * from delivery order by date_delivery ASC');
  qry.open;

  qry.last;

  num_delivery := qry.FieldByName('num_delivery').AsInteger;
  // search for available produit
  while not datamodule1.tbl_produits_demande.Eof do begin
    // get cat + qte from selected row in grid
    cat := Stringgrid4.Cells[1,Stringgrid4.Selected];
    qte := strtoint(Stringgrid4.Cells[2,Stringgrid4.Selected]);

    // count available produit
    qry.SQL.Clear;
    qry.SQL.Add('select count(id_record) as id_record from status WHERE (categorie=:cat and destination=:status)');
    qry.Parameters.ParamByName('cat').Value := cat;
    qry.Parameters.ParamByName('status').Value := 'stock';
    qry.open;

    qry.First;
    if (qry.FieldByName('id_record').AsInteger>=qte) then begin

      for i := 1 to qte do begin
        qry.SQL.Clear;
        qry.SQL.Add('select * from status WHERE (categorie=:cat and destination=:status)');
        qry.Parameters.ParamByName('cat').Value := cat;
        qry.Parameters.ParamByName('status').Value := 'stock';
        qry.open;
        qry.First;
        id_record := qry.FieldByName('id_record').AsInteger;

        qry.SQL.Clear;
        qry.SQL.Add('UPDATE status SET destination=:destination where id_record=:id_record');
        qry.Parameters.ParamByName('destination').Value := num_demande_produit;
        qry.Parameters.ParamByName('id_record').Value := id_record;
        qry.ExecSQL;
      end;
      qry.SQL.Clear;
      qry.SQL.Add('insert into produits_delivery (designation,qte,num_delivery_bill) values(:designation,:qte,:num_delivery_bill)');
      qry.Parameters.ParamByName('designation').Value := cat;
      qry.Parameters.ParamByName('qte').Value := qte;
      qry.Parameters.ParamByName('num_delivery_bill').Value := num_delivery;
      qry.ExecSQL;
      showmessage(inttostr(num_delivery));
      close;
    end else begin
      // insert data to produits_achat


      showmessage('00');
      case MessageDlg('Certains produits sont en rupture de stock, souhaitez-vous commander maintenant ?', System.UITypes.TMsgDlgType.mtInformation,
        [
          System.UITypes.TMsgDlgBtn.mbYes,
          System.UITypes.TMsgDlgBtn.mbNo,
          System.UITypes.TMsgDlgBtn.mbCancel
        ], 0) of

        mrYES:  begin
                  // send produit to produit_achat table
                  // test if demande achat produit created
                  if test=0 then begin
                    qry.SQL.Clear;
                    qry.SQL.Add('insert into demande_achat (date_dem_achat,num_it) values(:date_delivery,:num_it)');
                    qry.Parameters.ParamByName('date_delivery').Value := datetimetostr(now);
                    qry.Parameters.ParamByName('num_it').Value := dashboard.Form2.num_it_globalVar;
                    qry.ExecSQL;
                    // get last demande achat num
                    qry.SQL.Clear;
                    qry.SQL.Add('select * from demande_achat');
                    qry.Open;
                    qry.Last;
                    num_achat := qry.FieldByName('num_dem_achat').AsInteger;
                    test := 1;
                  end;

                  // add produits to produits_demande_achat
                  qry.SQL.Clear;
                  qry.SQL.Add('insert into wait_achat (designation,qte,num_dem_achat) values(:designation,:qte,:num_dem_achat)');
                  qry.Parameters.ParamByName('designation').Value := cat;
                  qry.Parameters.ParamByName('qte').Value := qte;
                  qry.Parameters.ParamByName('num_dem_achat').Value := num_achat;
                  qry.ExecSQL;

                  ShowMessage('You chose Yes');
                  close;
                end;

        mrNo:   begin
                  ShowMessage('You chose No');
                  close;
                end;

        mrCancel:
          ShowMessage('You chose Cancel');

      end;

    end;



    //showmessage(Stringgrid4.Cells[1,Stringgrid4.Selected]);
    datamodule1.tbl_produits_demande.next;

  end;

  // update (accepter) demande produit
  qry.SQL.Clear;
  qry.SQL.Add('UPDATE demande_produit SET status=:status,num_it=:num_it WHERE num_demande=:num');
  qry.Parameters.ParamByName('status').Value := 'Accept?';
  qry.Parameters.ParamByName('num').Value := produits_demande_u.Form5.num_demande_produit;
  qry.Parameters.ParamByName('num_it').Value := dashboard.Form2.num_it_globalVar;
  qry.ExecSQL;


end;

procedure TForm5.Rectangle71Click(Sender: TObject);
var
  script :string;
begin

  try
    raison_u.Raison.ShowModal;
  finally
    close;
  end;

end;

end.
