unit Unit8;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Grid,
  FMX.frxClass, Data.DB, Data.Win.ADODB, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, FMX.frxDBSet;

type
  TForm8 = class(TForm)
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    ADOTable3: TADOTable;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    ADOQuery1: TADOQuery;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    num_demande, num_delivery :integer;
  end;

var
  Form8: TForm8;

implementation

{$R *.fmx}

procedure TForm8.FormShow(Sender: TObject);
begin

// filter

  form8.ADOTable2.filtered := false;
  form8.ADOTable2.filter := 'num_delivery=' + inttostr(form8.num_delivery);
  form8.ADOTable2.filtered := true;

  form8.ADOTable2.active := false;
  form8.ADOTable2.active := true;
  form8.ADOTable2.refresh;

  form8.ADOTable2.First;

  form8.ADOQuery1.filtered := false;
  form8.ADOQuery1.filter := 'num_demande=' + inttostr(form8.ADOTable2.FieldByName('num_demande').AsInteger);
  form8.ADOQuery1.filtered := true;

  form8.ADOQuery1.active := false;
  form8.ADOQuery1.active := true;
  form8.ADOQuery1.refresh;

  form8.ADOTable1.filtered := false;
  form8.ADOTable1.filter := 'num_delivery_bill=' + inttostr(form8.num_delivery);
  form8.ADOTable1.filtered := true;

  form8.ADOTable1.active := false;
  form8.ADOTable1.active := true;
  form8.ADOTable1.refresh;

  form8.frxReport1.ShowReport();
end;

end.
