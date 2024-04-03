object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 442
  ClientWidth = 890
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label7: TLabel
    Left = 224
    Top = 24
    Width = 111
    Height = 33
    Caption = 'BILLING'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 104
    Top = 121
    Width = 69
    Height = 20
    Caption = 'DrugID'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 104
    Top = 160
    Width = 52
    Height = 20
    Caption = 'Price'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 104
    Top = 208
    Width = 90
    Height = 20
    Caption = 'Quantity'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 104
    Top = 251
    Width = 55
    Height = 20
    Caption = 'Total'
    FocusControl = DBEdit4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 104
    Top = 297
    Width = 85
    Height = 20
    Caption = 'Payment'
    FocusControl = DBEdit5
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBNavigator1: TDBNavigator
    Left = 104
    Top = 63
    Width = 380
    Height = 25
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 3
    Top = 339
    Width = 662
    Height = 111
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 553
    Top = 265
    Width = 75
    Height = 25
    Caption = 'EXIT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object DBEdit1: TDBEdit
    Left = 240
    Top = 102
    Width = 257
    Height = 23
    DataField = 'DrugID'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 240
    Top = 147
    Width = 257
    Height = 23
    DataField = 'Price'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit3: TDBEdit
    Left = 240
    Top = 192
    Width = 257
    Height = 23
    DataField = 'Quantity'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit4: TDBEdit
    Left = 240
    Top = 253
    Width = 257
    Height = 23
    DataField = 'Total'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit5: TDBEdit
    Left = 240
    Top = 294
    Width = 257
    Height = 23
    DataField = 'Payment'
    DataSource = DataSource1
    TabOrder = 7
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=UtibuHealth;Data Source=DESKTOP-3OCRHLH'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 552
    Top = 64
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Billing'
    Left = 600
    Top = 64
    object ADOTable1ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOTable1DrugID: TIntegerField
      DisplayWidth = 16
      FieldName = 'DrugID'
    end
    object ADOTable1Price: TStringField
      DisplayWidth = 13
      FieldName = 'Price'
      Size = 50
    end
    object ADOTable1Quantity: TIntegerField
      DisplayWidth = 20
      FieldName = 'Quantity'
    end
    object ADOTable1Total: TStringField
      DisplayWidth = 15
      FieldName = 'Total'
      Size = 50
    end
    object ADOTable1Payment: TStringField
      DisplayWidth = 50
      FieldName = 'Payment'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 544
    Top = 144
  end
end
