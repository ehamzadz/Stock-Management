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
begin

  // accepter la demande + modifier demande_produits|status|delivery

  // update (accepter) demande produit
  qry.SQL.Clear;
  qry.SQL.Add('UPDATE demande_produit SET status=:status,num_it=:num_it WHERE num_demande=:num');
  qry.Parameters.ParamByName('status').Value := 'Accept�';
  qry.Parameters.ParamByName('num').Value := produits_demande_u.Form5.num_demande_produit;
  qry.Parameters.ParamByName('num_it').Value := dashboard.Form2.num_it_globalVar;
  qry.ExecSQL;

  // add refresh accepted demande produits list
  //.............

  // search for available produit
  datamodule1.tbl_produits_demande.first;

  while not datamodule1.tbl_produits_demande.Eof do begin

    cat := Stringgrid4.Cells[1,Stringgrid4.Selected];
    qry.SQL.Clear;
    qry.SQL.Add('select * from status WHERE (categorie=:cat and destination=:status)');
    qry.Parameters.ParamByName('cat').Value := cat;
    qry.Parameters.ParamByName('status').Value := 'stock';
    qry.open;

    qry.First;
    showmessage(qry.FieldByName('Designation').AsString);

    //showmessage(Stringgrid4.Cells[1,Stringgrid4.Selected]);
    datamodule1.tbl_produits_demande.next;
  end;





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
