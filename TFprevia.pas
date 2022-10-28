unit TFprevia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, JvExStdCtrls, JvCombobox, JvDBCombobox;

type
  TFrm_previa = class(TForm)
    Btn_Fechar: TButton;
    Label1: TLabel;
    DBGridVisualizar: TDBGrid;
    DataSource1: TDataSource;
    BtnDeletar: TButton;
    lblFiltroCategoria: TLabel;
    lblFiltroAquisicao: TLabel;
    btnBuscar: TButton;
    JvDBCBFiltroCategoria: TJvDBComboBox;
    JvDBCBFiltroIdioma: TJvDBComboBox;
    JvDBCBFiltroAquisicao: TJvDBComboBox;
    lbltlivros: TLabel;
    lblTotaldeLivros: TLabel;
    btnEditar: TButton;
    btnSalvarGrid: TButton;
    BtnRelat�rio: TButton;
    lblFiltroIdioma: TLabel;
    procedure Btn_FecharClick(Sender: TObject);
    procedure BtnDeletarClick(Sender: TObject);
//    procedure FormCreate(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarGridClick(Sender: TObject);
    procedure BtnRelat�rioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_previa: TFrm_previa;

implementation

{$R *.dfm}

uses U_DMconexao, TFinicial, UniT_relatorio;

//C�digo para verificar os campos de filtro
procedure TFrm_previa.btnBuscarClick(Sender: TObject);
var
  SQLWhere:String;
begin
  SQLWhere := '1 = 1';
  if JvDBCBFiltroCategoria.ItemIndex > 0 then
      SQLWhere := SQLWhere +  ' and categoria = '''+JvDBCBFiltroCategoria.Values[JvDBCBFiltroCategoria.ItemIndex]+''' ';
  if JvDBCBFiltroIdioma.ItemIndex > 0 then
    SQLWhere := SQLWhere + ' and idioma = '''+JvDBCBFiltroIdioma.Values[JvDBCBFiltroIdioma.ItemIndex]+''' ';
  if JvDBCBFiltroAquisicao.ItemIndex > 0 then
    SQLWhere := SQLWhere + ' and aquisicao = '''+JvDBCBFiltroAquisicao.Values[JvDBCBFiltroAquisicao.ItemIndex]+''' ';


  if SQLWhere <> '' then
        begin
          DBGridVisualizar.DataSource.DataSet.Filtered := false;
          DBGridVisualizar.DataSource.DataSet.Filter := SQLWhere;
          DBGridVisualizar.DataSource.DataSet.Filtered := true;
          lblTotaldeLivros.Caption := IntToStr(DBGridVisualizar.DataSource.DataSet.RecordCount);
        end
  else DBGridVisualizar.DataSource.DataSet.Filtered := false
end;

procedure TFrm_previa.BtnDeletarClick(Sender: TObject);
begin

if (Application.MessageBox('Deseja realmente deletar essas informa��es?',
  'Confirma��o', MB_ICONQUESTION + MB_USEGLYPHCHARS) = mrYes) then
  DataSource1.DataSet.Delete;
end;

procedure TFrm_previa.btnEditarClick(Sender: TObject);
begin
  //Habilitar a Grido do Banco para Edi��o
  DBGridVisualizar.Options := DBGridVisualizar.Options + [dgEditing];

  btnBuscar.Enabled     := False;
  btnEditar.Enabled     := False;
  Btn_Fechar.Enabled    := False;
  BtnDeletar.Enabled    := False;
end;

procedure TFrm_previa.BtnRelat�rioClick(Sender: TObject);
begin
    Application.CreateForm(TTFrm_relatorio, TFrm_relatorio);
    TFrm_relatorio.RLReport1.Preview;

end;

procedure TFrm_previa.btnSalvarGridClick(Sender: TObject);
begin
  DataSource1.DataSet.Edit;
  DataSource1.DataSet.Post;


  btnBuscar.Enabled     := True;
  btnEditar.Enabled     := True;
  Btn_Fechar.Enabled    := True;
  BtnDeletar.Enabled    := True;
end;

procedure TFrm_previa.Btn_FecharClick(Sender: TObject);
begin
  Frm_previa.Close;
end;

end.
