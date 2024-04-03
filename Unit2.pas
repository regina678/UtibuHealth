unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Unit3, Unit4, Unit5, Unit6,
  Vcl.Imaging.pngimage;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin

  Form3 := TForm3.Create(Application);
  Self.Hide;
  Form3.Show;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Form4 := TForm4.Create(Application);
  Self.Hide;
  Form4.Show;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  Form5 := TForm5.Create(Application);
  Self.Hide;
  Form5.Show;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  Form6 := TForm6.Create(Application);
  Self.Hide;
  Form6.Show;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
Close;
end;

end.

