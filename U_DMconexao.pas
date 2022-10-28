unit U_DMconexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.UI,
  Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDM_conexao = class(TDataModule)
    conexao: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    qryLivros: TFDQuery;
    DSLivros: TDataSource;
    qryLivrosCODIGO: TIntegerField;
    qryLivrosTITULO: TStringField;
    qryLivrosEDITORA: TStringField;
    qryLivrosDATA: TDateField;
    qryLivrosUNIDADE: TIntegerField;
    qryLivrosAQUISICAO: TIntegerField;
    qryLivrosCATEGORIA: TIntegerField;
    qryLivrosIDIOMA: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_conexao: TDM_conexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
