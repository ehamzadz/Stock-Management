object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 520
  Width = 718
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=db;Use Procedure for Prepare=1;Auto Tra' +
      'nslate=True;Packet Size=4096;Workstation ID=BLACKDEV;Use Encrypt' +
      'ion for Data=False;Tag with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 48
    Top = 24
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'employee'
    Left = 360
    Top = 24
  end
  object tbl_stock: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'stock'
    Left = 360
    Top = 88
  end
end
