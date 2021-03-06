unit raison_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.Objects, Data.DB, Data.Win.ADODB,
  FMX.Memo.Types, FMX.ScrollBox, FMX.Memo;

type
  TRaison = class(TForm)
    Rectangle71: TRectangle;
    Text31: TText;
    qry: TADOQuery;
    Edit1: TEdit;
    procedure Rectangle71Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Raison: TRaison;

implementation

{$R *.fmx}

uses datamodule, dashboard, produits_demande_u;

procedure TRaison.Rectangle71Click(Sender: TObject);
var
  script :string;
begin

  // insrt raison to Rufuse table
  datamodule.DataModule1.qry.SQL.Clear;
  datamodule.DataModule1.qry.SQL.Add('insert into refuse (raison,date_refuse,num_demande,num_it) values(:raison,:date_refuse,:num_demande,:num_it)');
  datamodule.DataModule1.qry.Parameters.ParamByName('raison').Value := edit1.Text;
  datamodule.DataModule1.qry.Parameters.ParamByName('date_refuse').Value := datetimetostr(now);
  datamodule.DataModule1.qry.Parameters.ParamByName('num_demande').Value := produits_demande_u.Form5.num_demande_produit;
  datamodule.DataModule1.qry.Parameters.ParamByName('num_it').Value := dashboard.Form2.num_it_globalVar;
  datamodule.DataModule1.qry.ExecSQL;

  {// Delete produits demand?
  qry.SQL.Clear;
  script := 'DELETE FROM produits_demande WHERE num_demande_produit=' + inttostr(produits_demande_u.Form5.num_demande_produit);
  qry.SQL.Add(script);
  qry.ExecSQL;}

  // update (refuser) demande produit ()
  qry.SQL.Clear;
  qry.SQL.Add('UPDATE demande_produit SET status=:status,num_it=:num_it WHERE num_demande=:num');
  qry.Parameters.ParamByName('status').Value := 'Inacceptable';
  qry.Parameters.ParamByName('num').Value := produits_demande_u.Form5.num_demande_produit;
  qry.Parameters.ParamByName('num_it').Value := dashboard.Form2.num_it_globalVar;
  qry.ExecSQL;

  // refresh demande produit list
  datamodule.DataModule1.qry_new_demandes.active := false;
  datamodule.DataModule1.qry_new_demandes.active := true;
  datamodule.DataModule1.qry_new_demandes.refresh;

  close;

end;

end.
