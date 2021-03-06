unit refuse_produits_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Grid,
  FMX.Objects, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope;

type
  TForm6 = class(TForm)
    Rectangle33: TRectangle;
    Rectangle34: TRectangle;
    Text6: TText;
    Line3: TLine;
    Rectangle41: TRectangle;
    Text27: TText;
    Rectangle36: TRectangle;
    Text8: TText;
    StringGrid4: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    num_demande_produit :integer;
  end;

var
  Form6: TForm6;

implementation

{$R *.fmx}

uses dashboard, datamodule;

procedure TForm6.FormShow(Sender: TObject);
var
  text :string;
begin



  datamodule.DataModule1.tbl_produits_demande.filtered := false;
  datamodule.DataModule1.tbl_produits_demande.filter := 'num_demande_produit=' + inttostr(num_demande_produit);
  datamodule.DataModule1.tbl_produits_demande.filtered := true;

  datamodule.DataModule1.tbl_produits_demande.active := false;
  datamodule.DataModule1.tbl_produits_demande.active := true;
  datamodule.DataModule1.tbl_produits_demande.refresh;

  text := inttostr(num_demande_produit);
  showmessage(text);
end;

end.
