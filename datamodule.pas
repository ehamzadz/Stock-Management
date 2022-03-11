unit datamodule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    tbl_stock: TADOTable;
    tbl_demande: TADOTable;
    tbl_demande_produit: TADOTable;
    qry: TADOQuery;
    tbl_list_demande_produits: TADOTable;
    qry_new_demandes: TADOQuery;
    tbl_produits_demande: TADOTable;
    qry_refuse: TADOQuery;
    qry_refuse_byEmp: TADOQuery;
    qry_list_demande_produits: TADOQuery;
    qry_list_demande_produits2: TADOQuery;
    qry_accept�_byEmp: TADOQuery;
    qry_accept�: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}



end.
