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

uses dashboard, datamodule;

procedure TForm5.FormShow(Sender: TObject);
begin

  datamodule.DataModule1.tbl_produits_demande.filtered := false;
  datamodule.DataModule1.tbl_produits_demande.filter := 'num_demande_produit=' + inttostr(num_demande_produit);
  datamodule.DataModule1.tbl_produits_demande.filtered := true;

  datamodule.DataModule1.tbl_produits_demande.active := false;
  datamodule.DataModule1.tbl_produits_demande.active := true;
  datamodule.DataModule1.tbl_produits_demande.refresh;

end;

procedure TForm5.Rectangle71Click(Sender: TObject);
var
  script :string;
begin

  // Delete produits demand�
  qry.SQL.Clear;
  script := 'DELETE FROM produits_demande WHERE num_demande_produit=' + inttostr(num_demande_produit);
  qry.SQL.Add(script);
  qry.ExecSQL;

  // update (refuser) demande produit ()
  qry.SQL.Clear;
  qry.SQL.Add('UPDATE demande_produit SET status=:status,num_it=:num_it WHERE num_demande=:num');
  qry.Parameters.ParamByName('status').Value := 'Inacceptable';
  qry.Parameters.ParamByName('num').Value := num_demande_produit;
  qry.Parameters.ParamByName('num_it').Value := dashboard.Form2.num_it_globalVar;
  qry.ExecSQL;

  // refresh demande produit list
  datamodule.DataModule1.qry_new_demandes.active := false;
  datamodule.DataModule1.qry_new_demandes.active := true;
  datamodule.DataModule1.qry_new_demandes.refresh;

  close;

end;

end.
