unit register_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.Ani, FMX.Objects, Data.DB,
  Data.Win.ADODB;

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
    edit5: TEdit;
    edit6: TEdit;
    btn_register: TRectangle;
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
    qry1: TADOQuery;
    ColorAnimation18: TColorAnimation;
    procedure rect_closeClick(Sender: TObject);
    procedure rect_topBarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Text11Click(Sender: TObject);
    procedure btn_registerClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

uses datamodule;

procedure TForm3.btn_registerClick(Sender: TObject);
var
  nom,prenom,service,role,user,pass :string;
begin

  nom := edit5.text;
  prenom := edit6.text;
  service := edit1.text;
  role := edit4.text;
  user := edit3.text;
  pass := edit2.text;


  if ((nom='') OR (prenom='') OR (service='') OR (role='') OR (user='') OR (pass='') )then begin
    showmessage('Complete tous les champs!');
  end else begin
    //check if username exist or not
    qry1.SQL.Clear;
    qry1.SQL.Add('select count(username) from employee');
    qry1.SQL.Add('WHERE (username = '+ quotedstr(user) +')');
    qry1.SQL.Add('UNION ');
    qry1.SQL.Add('select count(username) from it_users');
    qry1.SQL.Add('WHERE (username = '+ quotedstr(user) +')');
    qry1.Open;

    qry1.First;
    qry1.Next;

    //inserting new user information to database
    if (qry1.Fields[0].asinteger=0) then begin
      if (service='it') OR (service='IT') then begin
        qry1.SQL.Clear;
        qry1.SQL.Add('insert into it_users (nom,prenom,service,role,username,password) values(:nom,:prenom,:service,:role,:username,:password)');
        qry1.Parameters.ParamByName('nom').Value := nom;
        qry1.Parameters.ParamByName('prenom').Value := prenom;
        qry1.Parameters.ParamByName('service').Value := service;
        qry1.Parameters.ParamByName('role').Value := role;
        qry1.Parameters.ParamByName('username').Value := user;
        qry1.Parameters.ParamByName('password').Value := pass;
        qry1.ExecSQL;
        showmessage('Inscrit avec succ?s');
        close;
      end else begin
        qry1.SQL.Clear;
        qry1.SQL.Add('insert into employee (nom,prenom,service,role,username,password) values(:nom,:prenom,:service,:role,:username,:password)');
        qry1.Parameters.ParamByName('nom').Value := nom;
        qry1.Parameters.ParamByName('prenom').Value := prenom;
        qry1.Parameters.ParamByName('service').Value := service;
        qry1.Parameters.ParamByName('role').Value := role;
        qry1.Parameters.ParamByName('username').Value := user;
        qry1.Parameters.ParamByName('password').Value := pass;
        qry1.ExecSQL;
        showmessage('Inscrit avec succ?s');
        close;
      end;

    end else begin
      showmessage('Nom d"utilisateur invalide');
    end;

    // clear all fields
    edit1.text := '';
    edit2.text := '';
    edit3.text := '';
    edit4.text := '';
    edit5.text := '';
    edit6.text := '';

    // Refresh Employee table
    datamodule.DataModule1.ADOTable1.Active := false;
    datamodule.DataModule1.ADOTable1.Active := true;

  end;



end;

procedure TForm3.rect_closeClick(Sender: TObject);
begin
  close;
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
