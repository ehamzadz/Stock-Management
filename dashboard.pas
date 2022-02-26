unit dashboard;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, FMX.Memo.Types, FMX.Layouts, FMX.Memo, FMX.ListBox,
  FMX.StdCtrls, FMX.Edit, FMX.Ani, FMX.Objects, FMX.Controls.Presentation,
  FMX.ScrollBox, FMX.Grid, FMX.TabControl, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

type
  TForm2 = class(TForm)
    client: TRectangle;
    tabs: TTabControl;
    TabItem4: TTabItem;
    Rectangle32: TRectangle;
    Rectangle33: TRectangle;
    Rectangle34: TRectangle;
    Text6: TText;
    Rectangle35: TRectangle;
    Text7: TText;
    Line3: TLine;
    Rectangle36: TRectangle;
    Text8: TText;
    Rectangle41: TRectangle;
    Text27: TText;
    Rectangle42: TRectangle;
    Text28: TText;
    Rectangle43: TRectangle;
    grid_Employee_List: TStringGrid;
    Rectangle129: TRectangle;
    Rectangle130: TRectangle;
    Rectangle131: TRectangle;
    Rectangle132: TRectangle;
    Image24: TImage;
    Rectangle133: TRectangle;
    Text37: TText;
    Rectangle134: TRectangle;
    Image25: TImage;
    ColorAnimation13: TColorAnimation;
    Text35: TText;
    TabItem5: TTabItem;
    Rectangle47: TRectangle;
    Rectangle50: TRectangle;
    Rectangle51: TRectangle;
    Rectangle52: TRectangle;
    Text38: TText;
    Rectangle53: TRectangle;
    TextRevenu: TText;
    TextRevenuPercnt: TText;
    Text36: TText;
    Rectangle54: TRectangle;
    Rectangle55: TRectangle;
    Text49: TText;
    Rectangle63: TRectangle;
    TextDepenses: TText;
    TextDepensesPercnt: TText;
    Text52: TText;
    Rectangle88: TRectangle;
    Rectangle95: TRectangle;
    Text53: TText;
    Rectangle96: TRectangle;
    TextNet: TText;
    TextNetPercnt: TText;
    Text56: TText;
    Rectangle48: TRectangle;
    Rectangle49: TRectangle;
    Rectangle98: TRectangle;
    Rectangle103: TRectangle;
    Rectangle104: TRectangle;
    Rectangle105: TRectangle;
    Text57: TText;
    Rectangle106: TRectangle;
    Text58: TText;
    Line4: TLine;
    Rectangle108: TRectangle;
    Text60: TText;
    Text59: TText;
    Rectangle117: TRectangle;
    GridFactureAchat: TStringGrid;
    Rectangle102: TRectangle;
    Rectangle107: TRectangle;
    Rectangle109: TRectangle;
    Rectangle110: TRectangle;
    Text61: TText;
    Rectangle111: TRectangle;
    Text62: TText;
    Line5: TLine;
    Rectangle112: TRectangle;
    Text63: TText;
    Text64: TText;
    Rectangle118: TRectangle;
    GridFactureVent: TStringGrid;
    TabItem6: TTabItem;
    Rectangle79: TRectangle;
    Line8: TLine;
    Rectangle81: TRectangle;
    Edit8: TEdit;
    Button7: TButton;
    Rectangle82: TRectangle;
    ComboBox3: TComboBox;
    Text20: TText;
    Rectangle83: TRectangle;
    Rectangle84: TRectangle;
    Rectangle85: TRectangle;
    Text21: TText;
    Text22: TText;
    Text23: TText;
    ComboBox4: TComboBox;
    Edit9: TEdit;
    Edit10: TEdit;
    Button9: TButton;
    Button1: TButton;
    Text24: TText;
    Memo2: TMemo;
    Rectangle86: TRectangle;
    Rectangle87: TRectangle;
    Text25: TText;
    Edit11: TEdit;
    RecVent: TRectangle;
    Rectangle89: TRectangle;
    Image19: TImage;
    Rectangle90: TRectangle;
    Text26: TText;
    Rectangle91: TRectangle;
    Image21: TImage;
    ColorAnimation11: TColorAnimation;
    TabItem7: TTabItem;
    Rectangle56: TRectangle;
    Line7: TLine;
    Rectangle57: TRectangle;
    Edit4: TEdit;
    Button5: TButton;
    Rectangle58: TRectangle;
    ComboBox1: TComboBox;
    Text12: TText;
    Rectangle59: TRectangle;
    Rectangle60: TRectangle;
    Rectangle67: TRectangle;
    Text10: TText;
    Text11: TText;
    Text9: TText;
    ComboBox2: TComboBox;
    Edit5: TEdit;
    Edit6: TEdit;
    Button8: TButton;
    Button3: TButton;
    Text13: TText;
    Memo1: TMemo;
    Rectangle61: TRectangle;
    Rectangle62: TRectangle;
    Text14: TText;
    Edit7: TEdit;
    RecAchat: TRectangle;
    Rectangle64: TRectangle;
    Image17: TImage;
    Rectangle65: TRectangle;
    Text15: TText;
    Rectangle66: TRectangle;
    Image18: TImage;
    ColorAnimation8: TColorAnimation;
    TabItem8: TTabItem;
    Button4: TButton;
    TabItem9: TTabItem;
    Rectangle75: TRectangle;
    GridPanelLayout1: TGridPanelLayout;
    Rectangle68: TRectangle;
    Rectangle69: TRectangle;
    Rectangle71: TRectangle;
    Text16: TText;
    Rectangle72: TRectangle;
    Image20: TImage;
    ColorAnimation9: TColorAnimation;
    Rectangle73: TRectangle;
    Rectangle74: TRectangle;
    Rectangle76: TRectangle;
    Text17: TText;
    Rectangle77: TRectangle;
    Image22: TImage;
    ColorAnimation10: TColorAnimation;
    Rectangle80: TRectangle;
    GridPanelLayout2: TGridPanelLayout;
    Rectangle70: TRectangle;
    Text18: TText;
    StringGrid4: TStringGrid;
    Rectangle97: TRectangle;
    Rectangle99: TRectangle;
    Text30: TText;
    Rectangle100: TRectangle;
    Text31: TText;
    Rectangle101: TRectangle;
    Text32: TText;
    Line9: TLine;
    Rectangle78: TRectangle;
    Rectangle92: TRectangle;
    Rectangle93: TRectangle;
    Text19: TText;
    Rectangle94: TRectangle;
    Image23: TImage;
    ColorAnimation12: TColorAnimation;
    TabItem11: TTabItem;
    Rectangle113: TRectangle;
    Rectangle114: TRectangle;
    recCodeProduit: TRectangle;
    Text39: TText;
    RecQte: TRectangle;
    Text40: TText;
    RecDesignation: TRectangle;
    Text41: TText;
    RecPrix: TRectangle;
    Text42: TText;
    Line11: TLine;
    RecCategorie: TRectangle;
    Text43: TText;
    Rectangle119: TRectangle;
    GridStock: TStringGrid;
    Rectangle120: TRectangle;
    Line12: TLine;
    Rectangle121: TRectangle;
    Edit16: TEdit;
    Rectangle122: TRectangle;
    Button13: TButton;
    TabItem12: TTabItem;
    Rectangle115: TRectangle;
    Rectangle116: TRectangle;
    RecCodeFour: TRectangle;
    Text44: TText;
    RecNomFour: TRectangle;
    Text45: TText;
    Line13: TLine;
    RecDette: TRectangle;
    Text46: TText;
    RecCCP: TRectangle;
    Text47: TText;
    RecAdr: TRectangle;
    Text48: TText;
    RecPhone: TRectangle;
    Text69: TText;
    Rectangle124: TRectangle;
    GridFC: TStringGrid;
    Rectangle125: TRectangle;
    Line14: TLine;
    Rectangle126: TRectangle;
    Edit17: TEdit;
    Rectangle127: TRectangle;
    Button14: TButton;
    Rectangle123: TRectangle;
    Text65: TText;
    Text67: TText;
    TabItem1: TTabItem;
    Rectangle29: TRectangle;
    Rectangle31: TRectangle;
    RecCodeClient: TRectangle;
    Text1: TText;
    RecNomClient: TRectangle;
    Text2: TText;
    Line1: TLine;
    RecDetteC: TRectangle;
    Text3: TText;
    RecCCPC: TRectangle;
    Text4: TText;
    RecAdrC: TRectangle;
    Text5: TText;
    RecPhoneC: TRectangle;
    Text70: TText;
    Rectangle37: TRectangle;
    GridClient: TStringGrid;
    Rectangle38: TRectangle;
    Line2: TLine;
    Rectangle39: TRectangle;
    Edit1: TEdit;
    Rectangle40: TRectangle;
    Button2: TButton;
    Rectangle128: TRectangle;
    Text66: TText;
    Text68: TText;
    navbar: TRectangle;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Image2: TImage;
    Rectangle3: TRectangle;
    txtCaisse: TText;
    Rectangle4: TRectangle;
    Image8: TImage;
    ColorAnimation1: TColorAnimation;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Image6: TImage;
    Rectangle7: TRectangle;
    txtFactures: TText;
    Rectangle8: TRectangle;
    Image13: TImage;
    ColorAnimation5: TColorAnimation;
    rect_navbar_employee: TRectangle;
    Rectangle10: TRectangle;
    Image7: TImage;
    Rectangle11: TRectangle;
    txtClients: TText;
    Rectangle12: TRectangle;
    Image14: TImage;
    ColorAnimation3: TColorAnimation;
    Rectangle13: TRectangle;
    Rectangle14: TRectangle;
    Image3: TImage;
    Rectangle15: TRectangle;
    txtFournisseurs: TText;
    Rectangle16: TRectangle;
    Image9: TImage;
    ColorAnimation2: TColorAnimation;
    Rectangle17: TRectangle;
    Rectangle18: TRectangle;
    Image4: TImage;
    Rectangle19: TRectangle;
    txtStock: TText;
    Rectangle20: TRectangle;
    Image10: TImage;
    ColorAnimation4: TColorAnimation;
    Rectangle21: TRectangle;
    Rectangle22: TRectangle;
    Image1: TImage;
    Rectangle23: TRectangle;
    txtAccueil: TText;
    Rectangle24: TRectangle;
    Image11: TImage;
    ColorAnimation7: TColorAnimation;
    Rectangle25: TRectangle;
    Rectangle26: TRectangle;
    Image5: TImage;
    Rectangle27: TRectangle;
    txtStatistiques: TText;
    Rectangle28: TRectangle;
    Image12: TImage;
    ColorAnimation6: TColorAnimation;
    RecLogo: TRectangle;
    Image15: TImage;
    Rectangle30: TRectangle;
    Image16: TImage;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Rectangle9: TRectangle;
    Line6: TLine;
    Rectangle44: TRectangle;
    Edit2: TEdit;
    Rectangle45: TRectangle;
    Button6: TButton;
    Rectangle46: TRectangle;
    Text29: TText;
    Text33: TText;
    procedure rect_navbar_employeeClick(Sender: TObject);
    procedure Rectangle17Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Rectangle46Click(Sender: TObject);
    procedure Edit2Typing(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    username_globalVar :string;
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

uses auth_u, datamodule, register_u;


// Adding new employee
procedure TForm2.Button6Click(Sender: TObject);
begin
  register_u.Form3.text11.Visible := false;
  register_u.Form3.ShowModal; // Shows the Form
end;

// Employee Seachring Field
procedure TForm2.Edit2Typing(Sender: TObject);
var
  search :string;
begin
  search := edit2.Text;
  if search<>'' then begin
    datamodule.DataModule1.ADOTable1.Filtered := false;
    datamodule.DataModule1.ADOTable1.Filter := 'nom like '+ quotedstr('%'+search+'%');
    datamodule.DataModule1.ADOTable1.Filtered := true;
  end else begin
    datamodule.DataModule1.ADOTable1.Filtered := false;
    datamodule.DataModule1.ADOTable1.Filter := '';
    datamodule.DataModule1.ADOTable1.Filtered := true;
  end;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  showmessage('Bienvenue ' +
              username_globalVar);
end;

procedure TForm2.Rectangle17Click(Sender: TObject);
begin
  tabs.TabIndex := 1;
end;

// Delete selected employee
procedure TForm2.Rectangle46Click(Sender: TObject);
begin

    try
        datamodule.DataModule1.ADOTable1.Delete;
    except
        on E:Exception do begin
            ShowMessage('Unable to delete record. ' +
                        E.ClassName + ':' + E.Message);
        end;
    end;

end;

procedure TForm2.rect_navbar_employeeClick(Sender: TObject);
begin
  tabs.TabIndex := 0;
end;

end.
