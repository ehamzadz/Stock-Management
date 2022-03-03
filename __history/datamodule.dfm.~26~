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
  object tbl_demande: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'demande'
    Left = 360
    Top = 160
  end
  object tbl_demande_produit: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'demande_produit'
    Left = 360
    Top = 232
  end
  object qry: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 168
    Top = 224
  end
  object tbl_list_demande_produits: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'demande_produit'
    Left = 360
    Top = 304
  end
  object qry_new_demandes: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from demande_produit'
      
        'inner join employee ON demande_produit.num_employee=employee .nu' +
        'm_employee'
      'where demande_produit.status='#39'en attente'#39)
    Left = 168
    Top = 296
  end
  object tbl_produits_demande: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'produits_demande'
    Left = 360
    Top = 376
  end
  object qry_refuse: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from refuse'
      'inner join it_users on refuse.num_it=it_users.num_it')
    Left = 528
    Top = 120
  end
end
