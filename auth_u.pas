unit auth_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.Objects, FMX.Ani;

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
    Rectangle4: TRectangle;
    Text7: TText;
    Text5: TText;
    ColorAnimation1: TColorAnimation;
    orange: TBrushObject;
    procedure rect_topBarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure rect_closeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.rect_closeClick(Sender: TObject);
begin
  application.Terminate;
end;

procedure TForm1.rect_topBarMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  if (Button = TMouseButton.mbleft) then StartWindowDrag;
end;

end.
