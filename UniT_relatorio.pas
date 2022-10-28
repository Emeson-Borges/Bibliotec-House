unit UniT_relatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.Imaging.pngimage,
  Vcl.DBCGrids, RLFilters, RLPDFFilter, Data.DB;

type
  TTFrm_relatorio = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLImage1: TRLImage;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBtitulo: TRLDBText;
    RLDBeditora: TRLDBText;
    RLDBaquisicao: TRLDBText;
    RLDBunidade: TRLDBText;
    RLDBTcategoria: TRLDBText;
    RLDBidioma: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBdataaquisicao: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLPDFFilter1: TRLPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TFrm_relatorio: TTFrm_relatorio;

implementation

{$R *.dfm}

uses TFinicial;

end.
