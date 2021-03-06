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
    TabItem6: TTabItem;
    Rectangle79: TRectangle;
    Line8: TLine;
    Rectangle83: TRectangle;
    Rectangle84: TRectangle;
    Rectangle85: TRectangle;
    Text22: TText;
    Text23: TText;
    ComboBox4: TComboBox;
    Edit9: TEdit;
    Button9: TButton;
    Button1: TButton;
    Text24: TText;
    Rectangle86: TRectangle;
    Rectangle87: TRectangle;
    btn_demander: TRectangle;
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
    navbar: TRectangle;
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
    TabItem2: TTabItem;
    Rectangle135: TRectangle;
    Rectangle136: TRectangle;
    Rectangle137: TRectangle;
    Text34: TText;
    Rectangle138: TRectangle;
    Text50: TText;
    Line10: TLine;
    Rectangle140: TRectangle;
    Text54: TText;
    Rectangle141: TRectangle;
    Text55: TText;
    Rectangle142: TRectangle;
    StringGrid1: TStringGrid;
    Rectangle149: TRectangle;
    Line15: TLine;
    Rectangle150: TRectangle;
    Edit3: TEdit;
    Rectangle151: TRectangle;
    Button4: TButton;
    Rectangle152: TRectangle;
    Text73: TText;
    Text74: TText;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    rect_topBar: TRectangle;
    Text51: TText;
    rect_close: TRectangle;
    Text75: TText;
    ColorAnimation15: TColorAnimation;
    rect_fullScreen: TRectangle;
    ColorAnimation16: TColorAnimation;
    rect_minimize: TRectangle;
    Text77: TText;
    ColorAnimation17: TColorAnimation;
    Image28: TImage;
    ColorAnimation18: TColorAnimation;
    LinkFillControlToField1: TLinkFillControlToField;
    StringGrid2: TStringGrid;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    Button7: TButton;
    Rectangle81: TRectangle;
    Rectangle82: TRectangle;
    Image29: TImage;
    Rectangle139: TRectangle;
    Text20: TText;
    Rectangle153: TRectangle;
    Image30: TImage;
    ColorAnimation19: TColorAnimation;
    Image1: TImage;
    TabItem1: TTabItem;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Text1: TText;
    Rectangle4: TRectangle;
    Text2: TText;
    Line1: TLine;
    Rectangle6: TRectangle;
    Text4: TText;
    Rectangle7: TRectangle;
    StringGrid3: TStringGrid;
    Rectangle8: TRectangle;
    Rectangle21: TRectangle;
    Rectangle22: TRectangle;
    Rectangle23: TRectangle;
    Image2: TImage;
    Rectangle24: TRectangle;
    Text5: TText;
    Rectangle25: TRectangle;
    Image3: TImage;
    ColorAnimation1: TColorAnimation;
    Text16: TText;
    Rectangle26: TRectangle;
    Line2: TLine;
    Rectangle27: TRectangle;
    Rectangle28: TRectangle;
    Button2: TButton;
    BindSourceDB4: TBindSourceDB;
    Rectangle5: TRectangle;
    Rectangle29: TRectangle;
    Image5: TImage;
    Rectangle31: TRectangle;
    Text3: TText;
    Rectangle37: TRectangle;
    Image6: TImage;
    ColorAnimation5: TColorAnimation;
    TabItem3: TTabItem;
    Rectangle38: TRectangle;
    Rectangle39: TRectangle;
    Rectangle40: TRectangle;
    Text17: TText;
    Rectangle47: TRectangle;
    Text18: TText;
    Line4: TLine;
    Rectangle48: TRectangle;
    Text19: TText;
    Rectangle49: TRectangle;
    StringGrid4: TStringGrid;
    Rectangle50: TRectangle;
    Rectangle51: TRectangle;
    Rectangle52: TRectangle;
    Rectangle53: TRectangle;
    Image8: TImage;
    Rectangle54: TRectangle;
    Text21: TText;
    Rectangle55: TRectangle;
    Image11: TImage;
    ColorAnimation6: TColorAnimation;
    Text25: TText;
    Rectangle63: TRectangle;
    Line5: TLine;
    Rectangle69: TRectangle;
    green: TBrushObject;
    BindSourceDB5: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB5: TLinkGridToDataSource;
    Rectangle72: TRectangle;
    Text32: TText;
    Rectangle73: TRectangle;
    Text35: TText;
    Rectangle74: TRectangle;
    Text36: TText;
    Rectangle75: TRectangle;
    Text37: TText;
    Text30: TText;
    TabItem5: TTabItem;
    Rectangle68: TRectangle;
    Rectangle70: TRectangle;
    Rectangle71: TRectangle;
    Text31: TText;
    Rectangle76: TRectangle;
    Text38: TText;
    Line9: TLine;
    Rectangle77: TRectangle;
    Text39: TText;
    Rectangle78: TRectangle;
    Text40: TText;
    Rectangle93: TRectangle;
    StringGrid5: TStringGrid;
    Rectangle94: TRectangle;
    Rectangle95: TRectangle;
    Rectangle96: TRectangle;
    Rectangle97: TRectangle;
    Image12: TImage;
    Rectangle98: TRectangle;
    Text44: TText;
    Rectangle99: TRectangle;
    Image13: TImage;
    ColorAnimation7: TColorAnimation;
    Text45: TText;
    Rectangle100: TRectangle;
    Line11: TLine;
    Rectangle101: TRectangle;
    Text46: TText;
    BindSourceDB6: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB6: TLinkGridToDataSource;
    Rectangle80: TRectangle;
    Rectangle88: TRectangle;
    Image20: TImage;
    Rectangle92: TRectangle;
    Text41: TText;
    Rectangle102: TRectangle;
    Image22: TImage;
    ColorAnimation9: TColorAnimation;
    Rectangle103: TRectangle;
    Rectangle104: TRectangle;
    Image23: TImage;
    Rectangle105: TRectangle;
    Text42: TText;
    Rectangle106: TRectangle;
    Image24: TImage;
    ColorAnimation10: TColorAnimation;
    TabItem8: TTabItem;
    Rectangle107: TRectangle;
    Rectangle108: TRectangle;
    Rectangle109: TRectangle;
    Text43: TText;
    Rectangle110: TRectangle;
    Text47: TText;
    Line12: TLine;
    Rectangle111: TRectangle;
    Text48: TText;
    Rectangle112: TRectangle;
    Text49: TText;
    Rectangle113: TRectangle;
    StringGrid6: TStringGrid;
    Rectangle114: TRectangle;
    Rectangle115: TRectangle;
    Rectangle116: TRectangle;
    Rectangle117: TRectangle;
    Image25: TImage;
    Rectangle118: TRectangle;
    Text52: TText;
    Rectangle119: TRectangle;
    Image26: TImage;
    ColorAnimation12: TColorAnimation;
    Text53: TText;
    Rectangle120: TRectangle;
    Line13: TLine;
    Rectangle121: TRectangle;
    Text56: TText;
    Rectangle122: TRectangle;
    Text57: TText;
    BindSourceDB7: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB7: TLinkGridToDataSource;
    BindSourceDB8: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB8: TLinkGridToDataSource;
    Rectangle123: TRectangle;
    Rectangle124: TRectangle;
    Image27: TImage;
    Rectangle125: TRectangle;
    Text58: TText;
    Rectangle126: TRectangle;
    Image31: TImage;
    ColorAnimation13: TColorAnimation;
    TabItem9: TTabItem;
    Rectangle127: TRectangle;
    Rectangle128: TRectangle;
    Rectangle129: TRectangle;
    Text59: TText;
    Rectangle130: TRectangle;
    Text60: TText;
    Line14: TLine;
    Rectangle131: TRectangle;
    Text61: TText;
    Rectangle132: TRectangle;
    Text62: TText;
    Rectangle133: TRectangle;
    Text63: TText;
    Rectangle134: TRectangle;
    StringGrid7: TStringGrid;
    Rectangle143: TRectangle;
    Rectangle144: TRectangle;
    Rectangle145: TRectangle;
    Rectangle146: TRectangle;
    Image32: TImage;
    Rectangle147: TRectangle;
    Text64: TText;
    Rectangle148: TRectangle;
    Image33: TImage;
    ColorAnimation14: TColorAnimation;
    Text65: TText;
    Rectangle154: TRectangle;
    Line16: TLine;
    Rectangle155: TRectangle;
    Text66: TText;
    BindSourceDB9: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB9: TLinkGridToDataSource;
    Rectangle156: TRectangle;
    Rectangle157: TRectangle;
    Image34: TImage;
    Rectangle158: TRectangle;
    Text67: TText;
    Rectangle159: TRectangle;
    Image35: TImage;
    ColorAnimation20: TColorAnimation;
    TabItem10: TTabItem;
    Rectangle160: TRectangle;
    Rectangle161: TRectangle;
    Rectangle162: TRectangle;
    Text68: TText;
    Rectangle163: TRectangle;
    Text69: TText;
    Line17: TLine;
    Rectangle164: TRectangle;
    Text70: TText;
    Rectangle165: TRectangle;
    Text71: TText;
    Rectangle166: TRectangle;
    Text72: TText;
    Rectangle167: TRectangle;
    StringGrid8: TStringGrid;
    Rectangle168: TRectangle;
    Rectangle169: TRectangle;
    Rectangle170: TRectangle;
    Rectangle171: TRectangle;
    Image36: TImage;
    Rectangle172: TRectangle;
    Text76: TText;
    Rectangle173: TRectangle;
    Image37: TImage;
    ColorAnimation21: TColorAnimation;
    Text78: TText;
    Rectangle174: TRectangle;
    Line18: TLine;
    Rectangle175: TRectangle;
    Text79: TText;
    BindSourceDB10: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB10: TLinkGridToDataSource;
    TabItem11: TTabItem;
    Rectangle176: TRectangle;
    Rectangle177: TRectangle;
    Rectangle178: TRectangle;
    Text80: TText;
    Rectangle179: TRectangle;
    Text81: TText;
    Line19: TLine;
    Rectangle180: TRectangle;
    Text82: TText;
    Rectangle181: TRectangle;
    Text83: TText;
    Rectangle182: TRectangle;
    Text84: TText;
    Rectangle183: TRectangle;
    StringGrid9: TStringGrid;
    Rectangle184: TRectangle;
    Rectangle185: TRectangle;
    Rectangle186: TRectangle;
    Rectangle187: TRectangle;
    Image38: TImage;
    Rectangle188: TRectangle;
    Text85: TText;
    Rectangle189: TRectangle;
    Image39: TImage;
    ColorAnimation22: TColorAnimation;
    Text86: TText;
    Rectangle190: TRectangle;
    Line20: TLine;
    Rectangle191: TRectangle;
    Text87: TText;
    BindSourceDB11: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB11: TLinkGridToDataSource;
    Rectangle192: TRectangle;
    Rectangle193: TRectangle;
    Image40: TImage;
    Rectangle194: TRectangle;
    Text88: TText;
    Rectangle195: TRectangle;
    Image41: TImage;
    ColorAnimation23: TColorAnimation;
    Rectangle196: TRectangle;
    Rectangle197: TRectangle;
    Image42: TImage;
    Rectangle198: TRectangle;
    Text89: TText;
    Rectangle199: TRectangle;
    Image43: TImage;
    ColorAnimation24: TColorAnimation;
    procedure rect_navbar_employeeClick(Sender: TObject);
    procedure Rectangle17Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Rectangle46Click(Sender: TObject);
    procedure Edit2Typing(Sender: TObject);
    procedure rect_closeClick(Sender: TObject);
    procedure rect_fullScreenClick(Sender: TObject);
    procedure rect_minimizeClick(Sender: TObject);
    procedure rect_topBarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Rectangle152Click(Sender: TObject);
    procedure Edit3Typing(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure btn_demanderClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Rectangle13Click(Sender: TObject);
    procedure Rectangle81Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Rectangle5Click(Sender: TObject);
    procedure StringGrid4CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure Rectangle37Click(Sender: TObject);
    procedure Rectangle80Click(Sender: TObject);
    procedure Rectangle103Click(Sender: TObject);
    procedure Rectangle22Click(Sender: TObject);
    procedure Rectangle123Click(Sender: TObject);
    procedure Rectangle156Click(Sender: TObject);
    procedure Rectangle170Click(Sender: TObject);
    procedure Rectangle192Click(Sender: TObject);
    procedure Rectangle186Click(Sender: TObject);
    procedure Rectangle196Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    username_globalVar :string;
    num_employee_globalVar, num_it_globalVar :integer;
  end;

var
  Form2: TForm2;
  new_demande_num :integer;

implementation

{$R *.fmx}

uses auth_u, datamodule, register_u, addProduit_u, produits_demande_u,
  refuse_produits_u, Unit7, Unit8;


// Adding new employee
procedure TForm2.btn_demanderClick(Sender: TObject);
var
  dt:Tdatetime;
  script,dtt,designation :string;
  count,i,qte,num :integer;
begin

    dt := now;

    dtt := datetimetostr(dt);
    script := 'update demande_produit SET date_demande=' + quotedstr(dtt) + ', num_employee='+ inttostr(num_employee_globalVar) +' where num_demande='+ inttostr(new_demande_num);

    showmessage(script);

    // insert (update) demande produits list to demande_produit table
    datamodule.DataModule1.qry.SQL.Clear;
    datamodule.DataModule1.qry.SQL.Add(script);
    datamodule.DataModule1.qry.ExecSQL;
    datamodule.DataModule1.tbl_demande_produit.active := false;
    datamodule.DataModule1.tbl_demande_produit.active := true;


    // insert produits to permanent table produit_demande
    count := datamodule.DataModule1.tbl_demande.RecordCount;

    datamodule.DataModule1.tbl_demande.first;
    for i := 1 to count do begin

      designation := datamodule.DataModule1.tbl_demande.FieldByName('designation').asstring;
      qte := datamodule.DataModule1.tbl_demande.FieldByName('qte').asinteger;
      num := datamodule.DataModule1.tbl_demande.FieldByName('num_demande_produit').asinteger;

      datamodule.DataModule1.qry.SQL.Clear;
      datamodule.DataModule1.qry.SQL.Add('insert into produits_demande (designation,qte,num_demande_produit) values(:designation,:qte,:num_demande_produit)');
      datamodule.DataModule1.qry.Parameters.ParamByName('designation').Value := designation;
      datamodule.DataModule1.qry.Parameters.ParamByName('qte').Value := qte;
      datamodule.DataModule1.qry.Parameters.ParamByName('num_demande_produit').Value := num;
      datamodule.DataModule1.qry.ExecSQL;

      datamodule.DataModule1.tbl_demande.next;

    end;

    // Clear temporary demande produit list
    datamodule.DataModule1.qry.SQL.Clear;
    datamodule.DataModule1.qry.SQL.Add('DELETE FROM demande');
    datamodule.DataModule1.qry.ExecSQL;

    datamodule.DataModule1.tbl_demande.active := false;
    datamodule.DataModule1.tbl_demande.active := true;

    rectangle83.Visible := false;

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  tabs.TabIndex := 1;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
    addProduit_u.Form4.ShowModal;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  register_u.Form3.text11.Visible := false;
  register_u.Form3.ShowModal; // Shows the Form
end;

procedure TForm2.Button7Click(Sender: TObject);
var
  num :string;
begin


    //username_globalVar

    // Clear temporary demande produit list
    datamodule.DataModule1.qry.SQL.Clear;
    datamodule.DataModule1.qry.SQL.Add('DELETE FROM demande');
    datamodule.DataModule1.qry.ExecSQL;

    //create new num for the nuw record
    datamodule.DataModule1.tbl_demande_produit.last;
    new_demande_num := datamodule.DataModule1.tbl_demande_produit.fields[0].asinteger + 1;

    // insert new empty record to demande produit table
    datamodule.DataModule1.qry.SQL.Clear;
    datamodule.DataModule1.qry.SQL.Add('insert into demande_produit (num_demande) values(:num_demande)');
    datamodule.DataModule1.qry.Parameters.ParamByName('num_demande').Value := new_demande_num;
    datamodule.DataModule1.qry.ExecSQL;
    datamodule.DataModule1.tbl_demande_produit.active := false;
    datamodule.DataModule1.tbl_demande_produit.active := true;
    datamodule.DataModule1.tbl_demande.active := false;
    datamodule.DataModule1.tbl_demande.active := true;
    datamodule.DataModule1.tbl_stock.active := false;
    datamodule.DataModule1.tbl_stock.active := true;
    datamodule.DataModule1.tbl_stock.refresh;

    rectangle83.Visible := true;
end;

// add produit to demande list
procedure TForm2.Button9Click(Sender: TObject);
var
  produit, qtt :string;
  qte, p :integer;
begin

    produit := ComboBox4.Items[ComboBox4.ItemIndex];
    qtt := edit9.Text;
    qte := strtoint(edit9.Text);
    //showmessage(produit+qtt);

    if (produit='') OR (qtt='') then begin
      showmessage('Completez tous les champs');
    end else begin

      // inserting produit to temporary table
      datamodule.DataModule1.qry.SQL.Clear;
      datamodule.DataModule1.qry.SQL.Add('insert into demande (designation,qte,num_demande_produit) values(:designation,:qte,:num_demande_produit)');
      datamodule.DataModule1.qry.Parameters.ParamByName('designation').Value := produit;
      datamodule.DataModule1.qry.Parameters.ParamByName('qte').Value := qte;
      datamodule.DataModule1.qry.Parameters.ParamByName('num_demande_produit').Value := new_demande_num;
      datamodule.DataModule1.qry.ExecSQL;

      datamodule.DataModule1.tbl_demande.Active := false;
      datamodule.DataModule1.tbl_demande.Active := true;
    end;


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

procedure TForm2.Edit3Typing(Sender: TObject);
var
  search :string;
begin
  search := edit3.Text;
  if search<>'' then begin
    datamodule.DataModule1.tbl_stock.Filtered := false;
    datamodule.DataModule1.tbl_stock.Filter := 'categorie like '+ quotedstr('%'+search+'%');
    datamodule.DataModule1.tbl_stock.Filtered := true;
  end else begin
    datamodule.DataModule1.tbl_stock.Filtered := false;
    datamodule.DataModule1.tbl_stock.Filter := '';
    datamodule.DataModule1.tbl_stock.Filtered := true;
  end;
end;

procedure TForm2.FormShow(Sender: TObject);
begin

    //ShowMessage(username_globalVar);

end;

procedure TForm2.Rectangle103Click(Sender: TObject);
begin
  // demande refus?e liste by employee
  datamodule.DataModule1.qry_refuse_byEmp.active := false;
  datamodule.DataModule1.qry_refuse_byEmp.active := true;
  tabs.TabIndex := 7;
end;

procedure TForm2.Rectangle123Click(Sender: TObject);
begin
  datamodule.DataModule1.qry_list_demande_produits2.active := false;
  datamodule.DataModule1.qry_list_demande_produits2.active := true;
  tabs.TabIndex := 8;
end;

procedure TForm2.Rectangle13Click(Sender: TObject);
begin
  tabs.TabIndex := 1;
end;

procedure TForm2.Rectangle152Click(Sender: TObject);
begin
    try
        datamodule.DataModule1.tbl_stock.Delete;
    except
        on E:Exception do begin
            ShowMessage('Unable to delete record. ' +
                        E.ClassName + ':' + E.Message);
        end;
    end;
end;

procedure TForm2.Rectangle156Click(Sender: TObject);
begin
  //num_employee_globalVar         EXEC GetAcceptedDemandeOfEmployee @num_emp
  datamodule.DataModule1.qry_accept?_byEmp.sql.clear;
  datamodule.DataModule1.qry_accept?_byEmp.sql.add('EXEC GetAcceptedDemandeOfEmployee @num_emp=:num_emp');
  datamodule.DataModule1.qry_accept?_byEmp.parameters.parambyname('num_emp').value := num_employee_globalVar;
  datamodule.DataModule1.qry_accept?_byEmp.open;
  tabs.TabIndex := 9;
end;

procedure TForm2.Rectangle170Click(Sender: TObject);
begin
  // send num Delivery of selected row to report form
  form8.num_delivery := strtoint(Stringgrid8.Cells[0,Stringgrid8.Selected]);
  //ShowMessage(Stringgrid8.Cells[0,Stringgrid8.Selected]);
  // filter

  form8.ADOTable2.filtered := false;
  form8.ADOTable2.filter := 'num_delivery=' + inttostr(form8.num_delivery);
  form8.ADOTable2.filtered := true;

  form8.ADOTable2.active := false;
  form8.ADOTable2.active := true;
  form8.ADOTable2.refresh;

  form8.ADOTable2.First;

  form8.ADOQuery1.filtered := false;
  form8.ADOQuery1.filter := 'num_demande=' + inttostr(form8.ADOTable2.FieldByName('num_demande').AsInteger);
  form8.ADOQuery1.filtered := true;

  form8.ADOQuery1.active := false;
  form8.ADOQuery1.active := true;
  form8.ADOQuery1.refresh;

  form8.ADOTable1.filtered := false;
  form8.ADOTable1.filter := 'num_delivery_bill=' + inttostr(form8.num_delivery);
  form8.ADOTable1.filtered := true;

  form8.ADOTable1.active := false;
  form8.ADOTable1.active := true;
  form8.ADOTable1.refresh;

  form8.frxReport1.ShowReport();
  //form8.ShowModal;
end;

procedure TForm2.Rectangle17Click(Sender: TObject);
begin
  tabs.TabIndex := 3;
end;

procedure TForm2.Rectangle186Click(Sender: TObject);
begin
// send num Delivery of selected row to report form
  form8.num_delivery := strtoint(Stringgrid9.Cells[0,Stringgrid9.Selected]);
  //ShowMessage(Stringgrid8.Cells[0,Stringgrid8.Selected]);
  // filter

  form8.ADOTable2.filtered := false;
  form8.ADOTable2.filter := 'num_delivery=' + inttostr(form8.num_delivery);
  form8.ADOTable2.filtered := true;

  form8.ADOTable2.active := false;
  form8.ADOTable2.active := true;
  form8.ADOTable2.refresh;

  form8.ADOTable2.First;

  form8.ADOQuery1.filtered := false;
  form8.ADOQuery1.filter := 'num_demande=' + inttostr(form8.ADOTable2.FieldByName('num_demande').AsInteger);
  form8.ADOQuery1.filtered := true;

  form8.ADOQuery1.active := false;
  form8.ADOQuery1.active := true;
  form8.ADOQuery1.refresh;

  form8.ADOTable1.filtered := false;
  form8.ADOTable1.filter := 'num_delivery_bill=' + inttostr(form8.num_delivery);
  form8.ADOTable1.filtered := true;

  form8.ADOTable1.active := false;
  form8.ADOTable1.active := true;
  form8.ADOTable1.refresh;

  form8.frxReport1.ShowReport();
end;

procedure TForm2.Rectangle192Click(Sender: TObject);
begin
  datamodule.DataModule1.qry_accept?.active := false;
  datamodule.DataModule1.qry_accept?.active := true;
  datamodule.DataModule1.qry_accept?.refresh;

  tabs.TabIndex := 10;
end;

procedure TForm2.Rectangle196Click(Sender: TObject);
begin    {
  datamodule.DataModule1.qry_wait_achat.active := false;
  datamodule.DataModule1.qry_wait_achat.active := true;
  datamodule.DataModule1.qry_wait_achat.refresh;
                      }
  tabs.TabIndex := 11;
end;

procedure TForm2.Rectangle22Click(Sender: TObject);
begin
  // send num demande of selected row to report form
  form7.num_demande := strtoint(Stringgrid3.Cells[0,Stringgrid3.Selected]);
  //ShowMessage(Stringgrid3.Cells[0,Stringgrid3.Selected]);

  // filter
  form7.ADOTable1.filtered := false;
  form7.ADOTable1.filter := 'num_demande=' + inttostr(form7.num_demande);
  form7.ADOTable1.filtered := true;

  form7.ADOTable1.active := false;
  form7.ADOTable1.active := true;
  form7.ADOTable1.refresh;

  form7.ADOTable1.First;

  form7.ADOTable2.filtered := false;
  form7.ADOTable2.filter := 'num_employee=' + inttostr(form7.ADOTable1.FieldByName('num_employee').AsInteger);
  form7.ADOTable2.filtered := true;

  form7.ADOTable2.active := false;
  form7.ADOTable2.active := true;
  form7.ADOTable2.refresh;

  form7.ADOTable3.filtered := false;
  form7.ADOTable3.filter := 'num_demande_produit=' + inttostr(form7.num_demande);
  form7.ADOTable3.filtered := true;

  form7.ADOTable3.active := false;
  form7.ADOTable3.active := true;
  form7.ADOTable3.refresh;

  form7.frxReport1.ShowReport();

end;

procedure TForm2.Rectangle37Click(Sender: TObject);
begin
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

procedure TForm2.Rectangle5Click(Sender: TObject);
begin
  datamodule.DataModule1.qry_new_demandes.active := false;
  datamodule.DataModule1.qry_new_demandes.active := true;
  datamodule.DataModule1.qry_new_demandes.refresh;

  tabs.TabIndex := 5;
end;

procedure TForm2.Rectangle80Click(Sender: TObject);
begin
  // demande refus?e liste
  datamodule.DataModule1.qry_refuse.active := false;
  datamodule.DataModule1.qry_refuse.active := true;

  tabs.TabIndex := 6;
end;

procedure TForm2.Rectangle81Click(Sender: TObject);
var
  script :string;
begin
  //tbl_list_demande_produits

  tabs.TabIndex := 4;

  // show only demandes of the current login employee
  datamodule.DataModule1.tbl_list_demande_produits.filtered := false;
  script := 'select * from demande_produit where num_employee =' + inttostr(num_employee_globalVar);

  datamodule.DataModule1.qry_list_demande_produits.sql.clear;
  datamodule.DataModule1.qry_list_demande_produits.sql.add(script);
  datamodule.DataModule1.qry_list_demande_produits.open;

  datamodule.DataModule1.qry_list_demande_produits.active := false;
  datamodule.DataModule1.qry_list_demande_produits.active := true;

end;

procedure TForm2.rect_closeClick(Sender: TObject);
begin
  close;
end;

procedure TForm2.rect_fullScreenClick(Sender: TObject);
begin
  if windowstate= TWindowState.wsNormal then begin
    WindowState := TWindowState.wsMaximized;
  end else begin
    if windowstate= TWindowState.wsMaximized then begin
      WindowState := TWindowState.wsNormal;
    end;
  end;
end;

procedure TForm2.rect_minimizeClick(Sender: TObject);
begin
  WindowState := TWindowState.wsMinimized;
end;

procedure TForm2.rect_navbar_employeeClick(Sender: TObject);
begin
  tabs.TabIndex := 0;
end;

procedure TForm2.rect_topBarMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  if (Button = TMouseButton.mbleft) then StartWindowDrag;
end;

procedure TForm2.StringGrid4CellDblClick(const Column: TColumn;
  const Row: Integer);
var
  num :integer;
begin

  // send num demande to produits_demande form
  num := datamodule.DataModule1.qry_new_demandes.fieldbyname('num_demande').asinteger;
  produits_demande_u.Form5.num_demande_produit := num;
  produits_demande_u.Form5.ShowModal;

end;

end.
