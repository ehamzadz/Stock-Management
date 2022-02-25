unit auth_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.Objects, FMX.Ani, System.Rtti,
  FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, Data.DB, Data.Win.ADODB;

type
  TForm1 = class(TForm)
    Rectangle1: TRectangle;
    rect_topBar: TRectangle;
    Text1: TText;
    rect_close: TRectangle;
    Text2: TText;
    Text3: TText;
    Text4: TText;
    Edit_username: TEdit;
    Edit_password: TEdit;
    btn_login: TRectangle;
    Text7: TText;
    Text5: TText;
    ColorAnimation1: TColorAnimation;
    orange: TBrushObject;
    Text6: TText;
    qry1: TADOQuery;
    procedure rect_topBarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure rect_closeClick(Sender: TObject);
    procedure Text6Click(Sender: TObject);
    procedure btn_loginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses datamodule, register_u, dashboard;

procedure TForm1.btn_loginClick(Sender: TObject);
var
  user,pass :string;
begin

  user := edit_username.text;
  pass := edit_password.text;

  qry1.SQL.Clear;
  //qry1.SQL.Add('select username from employee WHERE username = '+ quotedstr(user) +' UNION select username from it_users WHERE username = '+quotedstr(user));
  qry1.SQL.Add('select count(username) from employee');
  qry1.SQL.Add('WHERE (username = '+ quotedstr(user) +') and (password = '+ quotedstr(pass) +')');
  qry1.SQL.Add('UNION ');
  qry1.SQL.Add('select count(username) from it_users');
  qry1.SQL.Add('WHERE (username = '+ quotedstr(user) +') and (password = '+ quotedstr(pass) +')');
  qry1.Open;

  qry1.First;
  qry1.Next;

  if (qry1.Fields[0].asinteger<>0) then begin
    Visible := False;
    try
      dashboard.Form2.ShowModal; // Shows the Form
    finally
      Visible := true;
      // Makes Form1 visible again
    end;
  end else begin
    showmessage('Failed');
  end;


end;

procedure TForm1.rect_closeClick(Sender: TObject);
begin
  application.Terminate;
end;

procedure TForm1.rect_topBarMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  if (Button = TMouseButton.mbleft) then StartWindowDrag;
end;

procedure TForm1.Text6Click(Sender: TObject);
begin

  Visible := False;
  try
    register_u.Form3.ShowModal; // Shows the Form
  finally
    Visible := true;
    // Makes Form1 visible again
  end;

end;

end.
