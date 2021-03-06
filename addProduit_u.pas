unit addProduit_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.Ani, FMX.Objects, Data.DB,
  Data.Win.ADODB;

type
  TForm4 = class(TForm)
    Rectangle1: TRectangle;
    rect_topBar: TRectangle;
    Text1: TText;
    rect_close: TRectangle;
    Text2: TText;
    ColorAnimation1: TColorAnimation;
    Text3: TText;
    Text4: TText;
    edit5: TEdit;
    edit6: TEdit;
    btn_register: TRectangle;
    Text7: TText;
    Text5: TText;
    Edit2: TEdit;
    Text8: TText;
    Edit3: TEdit;
    Text9: TText;
    qry1: TADOQuery;
    ColorAnimation18: TColorAnimation;
    procedure rect_topBarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure rect_closeClick(Sender: TObject);
    procedure btn_registerClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.fmx}

uses datamodule;

procedure TForm4.btn_registerClick(Sender: TObject);
var
  code,designation,categorie,qte :string;
begin
  code := edit5.text;
  designation := edit6.text;
  categorie := edit3.text;
  qte := edit2.text;

  //check if code produit exist or not
  qry1.SQL.Clear;
  qry1.SQL.Add('select count(num_stock) from stock');
  qry1.SQL.Add('WHERE (num_stock = '+ quotedstr(code) +')');
  qry1.Open;

  qry1.First;

  //inserting new user information to database
  if (qry1.Fields[0].asinteger=0) then begin
    qry1.SQL.Clear;
    qry1.SQL.Add('insert into stock (num_stock,designation,categorie,qte) values(:num_stock,:designation,:categorie,:qte)');
    qry1.Parameters.ParamByName('num_stock').Value := code;
    qry1.Parameters.ParamByName('designation').Value := designation;
    qry1.Parameters.ParamByName('categorie').Value := categorie;
    qry1.Parameters.ParamByName('qte').Value := qte;
    qry1.ExecSQL;
    showmessage('Ajout? avec succ?s');
    // Clear all fields
    edit5.text := '';
    edit6.text := '';
    edit3.text := '';
    edit2.text := '';
    // Refresh Employee table
    datamodule.DataModule1.tbl_stock.Active := false;
    datamodule.DataModule1.tbl_stock.Active := true;
  end;

end;

procedure TForm4.rect_closeClick(Sender: TObject);
begin
  close;
end;

procedure TForm4.rect_topBarMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  if (Button = TMouseButton.mbleft) then StartWindowDrag;
end;

end.
