program Project2_pessoal;

uses
  Vcl.Forms,
  ProjetoPessoal in 'ProjetoPessoal.pas' {FTela_login},
  TFinicial in 'TFinicial.pas' {Frm_inicio},
  UniT_relatorio in 'UniT_relatorio.pas' {TFrm_relatorio},
  TFprevia in 'TFprevia.pas' {Frm_previa},
  U_DMconexao in 'U_DMconexao.pas' {DM_conexao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFTela_login, FTela_login);
  Application.CreateForm(TDM_conexao, DM_conexao);
  Application.Run;
end.
