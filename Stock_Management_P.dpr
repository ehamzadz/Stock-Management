program Stock_Management_P;

uses
  System.StartUpCopy,
  FMX.Forms,
  auth_u in 'auth_u.pas' {Form1},
  datamodule in 'datamodule.pas' {DataModule1: TDataModule},
  dashboard in 'dashboard.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
