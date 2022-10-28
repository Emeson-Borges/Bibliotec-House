unit ProjetoPessoal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.CheckLst, Vcl.DBCtrls;

type
  TFTela_login = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BtnLogin: TButton;
    txtEmail: TEdit;
    txtSenha: TEdit;
    Label1: TLabel;
    procedure BtnLoginClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTela_login: TFTela_login;

implementation

{$R *.dfm}

uses TFinicial;

procedure TFTela_login.BtnLoginClick(Sender: TObject);
begin

if ((UpperCase(txtEmail.Text) = UpperCase('Emeson')) and (txtSenha.Text = '2022')) then
    begin
      FTela_Login.DisposeOf;
      Application.CreateForm(TFrm_inicio,Frm_inicio);
      Frm_inicio.Show;
    end

    else
      ShowMessage('Login ou senha inválidos');

end;

end.
