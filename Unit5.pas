unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Data.DB, Vcl.Mask, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids;

type
  TForm5 = class(TForm)
    Label7: TLabel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable1ID: TAutoIncField;
    ADOTable1Name: TStringField;
    ADOTable1Manufacturer: TStringField;
    ADOTable1Price: TStringField;
    ADOTable1Dosage: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation
uses Unit2;

{$R *.dfm}

procedure TForm5.Button2Click(Sender: TObject);
begin
  Form2.Show;
  Form5.Hide

end;

end.
