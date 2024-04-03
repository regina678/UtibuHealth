object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 442
  ClientWidth = 731
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 96
    Top = 112
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
    Left = 96
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
    Left = 96
    Top = 200
    Width = 101
    Height = 20
    Caption = 'Speciality'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 96
    Top = 248
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
  object Label6: TLabel
    Left = 242
    Top = 8
    Width = 148
    Height = 44
    Caption = 'DOCTOR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 242
    Top = 109
    Width = 284
    Height = 23
    DataField = 'Name'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 242
    Top = 149
    Width = 284
    Height = 23
    DataField = 'Gender'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 242
    Top = 197
    Width = 284
    Height = 23
    DataField = 'Speciality'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 242
    Top = 245
    Width = 284
    Height = 23
    DataField = 'Telephone'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 96
    Top = 64
    Width = 430
    Height = 25
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 3
    Top = 296
    Width = 617
    Height = 168
    DataSource = DataSource1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
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
    Left = 560
    Top = 16
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Doctor'
    Left = 568
    Top = 72
    object ADOTable1ID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOTable1Name: TStringField
      DisplayWidth = 21
      FieldName = 'Name'
      Size = 50
    end
    object ADOTable1Gender: TStringField
      DisplayWidth = 23
      FieldName = 'Gender'
      Size = 50
    end
    object ADOTable1Speciality: TStringField
      DisplayWidth = 24
      FieldName = 'Speciality'
      Size = 50
    end
    object ADOTable1Telephone: TStringField
      DisplayWidth = 50
      FieldName = 'Telephone'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 480
    Top = 24
  end
end
