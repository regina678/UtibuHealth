object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 442
  ClientWidth = 769
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
    Width = 79
    Height = 33
    Caption = 'DRUG'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 88
    Top = 126
    Width = 49
    Height = 20
    Caption = 'Name'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 88
    Top = 176
    Width = 140
    Height = 20
    Caption = 'Manufacturer'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 88
    Top = 224
    Width = 52
    Height = 20
    Caption = 'Price'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 88
    Top = 278
    Width = 69
    Height = 20
    Caption = 'Dosage'
    FocusControl = DBEdit4
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
    Left = -2
    Top = 339
    Width = 699
    Height = 111
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 248
    Top = 128
    Width = 249
    Height = 23
    DataField = 'Name'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 248
    Top = 178
    Width = 249
    Height = 23
    DataField = 'Manufacturer'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 248
    Top = 221
    Width = 249
    Height = 23
    DataField = 'Price'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 248
    Top = 280
    Width = 249
    Height = 23
    DataField = 'Dosage'
    DataSource = DataSource1
    TabOrder = 5
  end
  object Button2: TButton
    Left = 574
    Top = 273
    Width = 75
    Height = 25
    Caption = 'EXIT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Button2Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=UtibuHealth;Data Source=DESKTOP-3OCRHLH'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 632
    Top = 24
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Drug'
    Left = 640
    Top = 80
    object ADOTable1ID: TAutoIncField
      DisplayWidth = 12
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOTable1Name: TStringField
      DisplayWidth = 32
      FieldName = 'Name'
      Size = 50
    end
    object ADOTable1Manufacturer: TStringField
      DisplayWidth = 29
      FieldName = 'Manufacturer'
      Size = 50
    end
    object ADOTable1Price: TStringField
      DisplayWidth = 17
      FieldName = 'Price'
      Size = 50
    end
    object ADOTable1Dosage: TStringField
      DisplayWidth = 50
      FieldName = 'Dosage'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 568
    Top = 24
  end
end
