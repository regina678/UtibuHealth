object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 442
  ClientWidth = 736
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 112
    Top = 109
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
    Left = 112
    Top = 152
    Width = 69
    Height = 20
    Caption = 'Gender'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 112
    Top = 193
    Width = 83
    Height = 20
    Caption = 'Sickness'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 112
    Top = 238
    Width = 100
    Height = 20
    Caption = 'Telephone'
    FocusControl = DBEdit4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 112
    Top = 280
    Width = 79
    Height = 20
    Caption = 'Address'
    FocusControl = DBEdit5
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 242
    Top = 8
    Width = 150
    Height = 44
    Caption = 'PATIENT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Button2: TButton
    Left = 585
    Top = 237
    Width = 75
    Height = 25
    Caption = 'EXIT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button2Click
  end
  object DBEdit1: TDBEdit
    Left = 232
    Top = 111
    Width = 306
    Height = 23
    DataField = 'Name'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 232
    Top = 154
    Width = 306
    Height = 23
    DataField = 'Gender'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 232
    Top = 195
    Width = 306
    Height = 23
    DataField = 'Sickness'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 232
    Top = 240
    Width = 306
    Height = 23
    DataField = 'Telephone'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 232
    Top = 277
    Width = 306
    Height = 23
    DataField = 'Address'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBNavigator1: TDBNavigator
    Left = 112
    Top = 58
    Width = 420
    Height = 25
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 306
    Width = 695
    Height = 136
    DataSource = DataSource1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=UtibuHealth;Data Source=DESKTOP-3OCRHLH'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 600
    Top = 72
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Patient'
    Left = 600
    Top = 152
    object ADOTable1ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOTable1Name: TStringField
      DisplayWidth = 31
      FieldName = 'Name'
      Size = 50
    end
    object ADOTable1Gender: TStringField
      DisplayWidth = 23
      FieldName = 'Gender'
      Size = 50
    end
    object ADOTable1Sickness: TStringField
      DisplayWidth = 16
      FieldName = 'Sickness'
      Size = 50
    end
    object ADOTable1Telephone: TStringField
      DisplayWidth = 13
      FieldName = 'Telephone'
      Size = 50
    end
    object ADOTable1Address: TStringField
      DisplayWidth = 50
      FieldName = 'Address'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 656
    Top = 64
  end
end
