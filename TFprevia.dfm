object Frm_previa: TFrm_previa
  Left = 0
  Top = 0
  Caption = 'Frm_previa'
  ClientHeight = 500
  ClientWidth = 774
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 182
    Top = 15
    Width = 316
    Height = 33
    Alignment = taCenter
    Caption = 'LIVROS CADASTRADOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lblFiltroCategoria: TLabel
    Left = 64
    Top = 327
    Width = 196
    Height = 18
    Caption = 'FILTRAR POR CATEGORIA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblFiltroAquisicao: TLabel
    Left = 518
    Top = 327
    Width = 196
    Height = 18
    Caption = 'FILTRAR POR AQUISI'#199#195'O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbltlivros: TLabel
    Left = 273
    Top = 403
    Width = 182
    Height = 23
    Caption = 'TOTAL DE LIVROS:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTotaldeLivros: TLabel
    Left = 461
    Top = 403
    Width = 12
    Height = 23
    Alignment = taCenter
    Caption = '..'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblFiltroIdioma: TLabel
    Left = 297
    Top = 327
    Width = 167
    Height = 18
    Caption = 'FILTRAR POR IDIOMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Btn_Fechar: TButton
    Left = 467
    Top = 448
    Width = 84
    Height = 33
    Caption = 'FECHAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Btn_FecharClick
  end
  object DBGridVisualizar: TDBGrid
    Left = 57
    Top = 64
    Width = 657
    Height = 257
    DataSource = DM_conexao.DSLivros
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TITULO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EDITORA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AQUISICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CATEGORIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IDIOMA'
        Visible = True
      end>
  end
  object BtnDeletar: TButton
    Left = 208
    Top = 448
    Width = 83
    Height = 33
    Caption = 'DELETAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BtnDeletarClick
  end
  object btnBuscar: TButton
    Left = 118
    Top = 448
    Width = 84
    Height = 33
    Caption = 'BUSCAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnBuscarClick
  end
  object JvDBCBFiltroCategoria: TJvDBComboBox
    Left = 80
    Top = 351
    Width = 145
    Height = 21
    Items.Strings = (
      ''
      '1 - PYTHON'
      '2 - DELPHI'
      '3 - PROGRAMA'#199#195'O'
      '4 - F'#205'SICA'
      '5 - MATEM'#193'TICA'
      '6 - HUMANAS'
      '7 - SEGURAN'#199'A DA INFORMA'#199#195'O'
      '8 - LGPD'
      '9 - MEDICINA'
      '10 - CI'#202'NCIAS EXATAS')
    TabOrder = 4
    Values.Strings = (
      ''
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12'
      '13')
    ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
    ListSettings.OutfilteredValueFont.Color = clRed
    ListSettings.OutfilteredValueFont.Height = -11
    ListSettings.OutfilteredValueFont.Name = 'Tahoma'
    ListSettings.OutfilteredValueFont.Style = []
  end
  object JvDBCBFiltroIdioma: TJvDBComboBox
    Left = 310
    Top = 351
    Width = 145
    Height = 21
    Items.Strings = (
      ''
      '1 - PORTUGU'#202'S'
      '2 - INGL'#202'S'
      '3 - ESPANHOL'
      '4 - ALEM'#195'O'
      '5 - FRANC'#202'S')
    TabOrder = 5
    Values.Strings = (
      ''
      '1'
      '2'
      '3'
      '4'
      '5')
    ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
    ListSettings.OutfilteredValueFont.Color = clRed
    ListSettings.OutfilteredValueFont.Height = -11
    ListSettings.OutfilteredValueFont.Name = 'Tahoma'
    ListSettings.OutfilteredValueFont.Style = []
  end
  object JvDBCBFiltroAquisicao: TJvDBComboBox
    Left = 542
    Top = 351
    Width = 145
    Height = 21
    Items.Strings = (
      ''
      '1 - COMPREI'
      '2 - PRESENTE')
    TabOrder = 6
    Values.Strings = (
      ''
      '1'
      '2')
    ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
    ListSettings.OutfilteredValueFont.Color = clRed
    ListSettings.OutfilteredValueFont.Height = -11
    ListSettings.OutfilteredValueFont.Name = 'Tahoma'
    ListSettings.OutfilteredValueFont.Style = []
  end
  object btnEditar: TButton
    Left = 297
    Top = 448
    Width = 77
    Height = 33
    Caption = 'EDITAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = btnEditarClick
  end
  object btnSalvarGrid: TButton
    Left = 380
    Top = 448
    Width = 81
    Height = 33
    Caption = 'SALVAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = btnSalvarGridClick
  end
  object BtnRelatório: TButton
    Left = 557
    Top = 448
    Width = 83
    Height = 33
    Caption = 'RELAT'#211'RIO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = BtnRelatórioClick
  end
  object DataSource1: TDataSource
    DataSet = DM_conexao.qryLivros
    Left = 712
    Top = 424
  end
end
