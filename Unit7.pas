unit Unit7;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.frxClass,
  FMX.frxDBSet, Data.DB, Data.Win.ADODB, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm7 = class(TForm)
    frxReport2: TfrxReport;
    emp: TADOTable;
    DataSource1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    demandes: TADOTable;
    produits: TADOTable;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
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

procedure TForm7.Button1Click(Sender: TObject);
begin
      frxReport2.ShowReport();
end;

procedure TForm7.FormShow(Sender: TObject);
begin
  demandes.filtered := false;
  demandes.filter := 'num_demande=' + inttostr(num_demande);
  demandes.filtered := true;

  demandes.active := false;
  demandes.active := true;
  demandes.refresh;
end;

end.
