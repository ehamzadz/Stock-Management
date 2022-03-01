program Stock_Management_P;

uses
  System.StartUpCopy,
  FMX.Forms,
  auth_u in 'auth_u.pas' {Form1},
  datamodule in 'datamodule.pas' {DataModule1: TDataModule},
  dashboard in 'dashboard.pas' {Form2},
  register_u in 'register_u.pas' {Form3},
  addProduit_u in 'addProduit_u.pas' {Form4},
  produits_demande_u in 'produits_demande_u.pas' {Form5},
  raison_u in 'raison_u.pas' {Raison},
  refuse_produits_u in 'refuse_produits_u.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TRaison, Raison);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
