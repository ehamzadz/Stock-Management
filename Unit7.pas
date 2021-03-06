unit Unit7;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.frxClass,
  FMX.frxDBSet, Data.DB, Data.Win.ADODB, FMX.Controls.Presentation, FMX.StdCtrls,
  System.Rtti, FMX.Grid.Style, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, FMX.ScrollBox,
  FMX.Grid;

type
  TForm7 = class(TForm)
    frxReport1: TfrxReport;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    ADOTable3: TADOTable;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    Button1: TButton;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    num_demande :integer;
  end;

var
  Form7: TForm7;

implementation

{$R *.fmx}

uses datamodule, dashboard;

procedure TForm7.FormShow(Sender: TObject);
var
  nmm :string;
begin

  ADOTable1.filtered := false;
  ADOTable1.filter := 'num_demande=' + inttostr(num_demande);
  ADOTable1.filtered := true;

  ADOTable1.active := false;
  ADOTable1.active := true;
  ADOTable1.refresh;

  ADOTable1.First;

  ADOTable2.filtered := false;
  ADOTable2.filter := 'num_employee=' + inttostr(ADOTable1.FieldByName('num_employee').AsInteger);
  ADOTable2.filtered := true;

  ADOTable2.active := false;
  ADOTable2.active := true;
  ADOTable2.refresh;

  ADOTable3.filtered := false;
  ADOTable3.filter := 'num_demande_produit=' + inttostr(num_demande);
  ADOTable3.filtered := true;

  ADOTable3.active := false;
  ADOTable3.active := true;
  ADOTable3.refresh;
  frxReport1.ShowReport();

end;

end.
