unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Data.Win.ADODB, Vcl.Imaging.pngimage;

type
  TForm8 = class(TForm)
    Image1: TImage;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable1ID: TAutoIncField;
    ADOTable1Email: TStringField;
    ADOTable1Username: TStringField;
    ADOTable1Password: TStringField;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation
uses Unit1;

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
var
  Email, Username, Password: string;
  Query: TADOQuery;
  Form1: TForm1;
begin
Email := DBEdit1.Text;
  Username := DBEdit2.Text;
  Password := DBEdit3.Text;
  Query := TADOQuery.Create(nil);
  try
    Query.Connection := ADOConnection1;
    ADOTable1.Close;
    Query.SQL.Text := 'SELECT * FROM Register WHERE Email = :Email AND Username = :Username AND Password = :Password';
    Query.Parameters.ParamByName('Email').Value := Email;
    Query.Parameters.ParamByName('Username').Value := Username;
    Query.Parameters.ParamByName('Password').Value := Password;
    Query.Open;

    if not Query.IsEmpty then
    begin
      ShowMessage('Login successful');
      // Proceed to the main application logic or form
       Form1 := TForm1.Create(Application);
  Self.Hide;
  Form1.Show;
    end
    else
      ShowMessage('Invalid email, username or password');
  finally
    Query.Free;
  end;
end;

procedure TForm8.Button2Click(Sender: TObject);

begin
Close;
end;

procedure TForm8.Button3Click(Sender: TObject);
begin
Form1.Show;
   Form8.Hide

end;

end.
