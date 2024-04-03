unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Imaging.pngimage, Unit2, Unit8;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button3: TButton;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable1ID: TAutoIncField;
    ADOTable1Username: TStringField;
    ADOTable1Password: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Username, Password: string;
  Query: TADOQuery;
  Form2: TForm2;
begin
Username := Edit1.Text;
  Password := Edit2.Text;
  Query := TADOQuery.Create(nil);
  try
    Query.Connection := ADOConnection1;
    ADOTable1.Close;
    Query.SQL.Text := 'SELECT * FROM Login WHERE Username = :Username AND Password = :Password';
    Query.Parameters.ParamByName('Username').Value := Username;
    Query.Parameters.ParamByName('Password').Value := Password;
    Query.Open;

    if not Query.IsEmpty then
    begin
      ShowMessage('Login successful');
      // Proceed to the main application logic or form
       Form2 := TForm2.Create(Application);
  Self.Hide;
  Form2.Show;
    end
    else
      ShowMessage('Invalid username or password');
  finally
    Query.Free;
  end;
end;



procedure TForm1.Button2Click(Sender: TObject);
begin
Close; // Close the form
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Form8.Show;
   Form1.Hide

end;

end.

