object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Form7'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 154
    Top = 84
    Width = 53
    Height = 20
    Caption = 'Email'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 154
    Top = 177
    Width = 93
    Height = 20
    Caption = 'Username'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 154
    Top = 248
    Width = 99
    Height = 20
    Caption = 'Password'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 184
    Top = 32
    Width = 161
    Height = 46
    Caption = 'SIGN UP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 48
    Top = 400
    Width = 250
    Height = 20
    Caption = 'Already have an account?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 154
    Top = 130
    Width = 260
    Height = 23
    DataField = 'Email'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 154
    Top = 203
    Width = 250
    Height = 23
    DataField = 'Username'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 154
    Top = 288
    Width = 255
    Height = 23
    DataField = 'Password'
    DataSource = DataSource1
    TabOrder = 2
  end
  object Button1: TButton
    Left = 132
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Submit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object Button2: TButton
    Left = 280
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Exit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 334
    Top = 395
    Width = 75
    Height = 25
    Caption = 'LOGIN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button3Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=UtibuHealth;Data Source=DESKTOP-3OCRHLH'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 496
    Top = 48
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Register'
    Left = 504
    Top = 120
    object ADOTable1ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOTable1Email: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object ADOTable1Username: TStringField
      FieldName = 'Username'
      Size = 50
    end
    object ADOTable1Password: TStringField
      FieldName = 'Password'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 576
    Top = 184
  end
end
