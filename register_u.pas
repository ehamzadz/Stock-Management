unit register_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.Ani, FMX.Objects;

type
  TForm3 = class(TForm)
    Rectangle1: TRectangle;
    rect_topBar: TRectangle;
    Text1: TText;
    rect_close: TRectangle;
    Text2: TText;
    ColorAnimation1: TColorAnimation;
    Text3: TText;
    Text4: TText;
    Edit_username: TEdit;
    Edit_password: TEdit;
    Rectangle4: TRectangle;
    Text7: TText;
    Text5: TText;
    Edit1: TEdit;
    Text6: TText;
    Text8: TText;
    Edit2: TEdit;
    Text9: TText;
    Edit3: TEdit;
    Text10: TText;
    Edit4: TEdit;
    Text11: TText;
    procedure rect_closeClick(Sender: TObject);
    procedure rect_topBarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Text11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

procedure TForm3.rect_closeClick(Sender: TObject);
begin
  application.Terminate;
end;

procedure TForm3.rect_topBarMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  if (Button = TMouseButton.mbleft) then StartWindowDrag;
end;

procedure TForm3.Text11Click(Sender: TObject);
begin
  close;
end;

end.
