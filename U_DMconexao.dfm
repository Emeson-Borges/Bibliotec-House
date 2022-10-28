object DM_conexao: TDM_conexao
  OldCreateOrder = False
  Height = 339
  Width = 467
  object conexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Emeson Borges\Documents\Embarcadero\Studio\Pro' +
        'jeto Pessoal\Banco de Dados\DB.BIBLIOTECA.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 80
    Top = 64
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 272
    Top = 104
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files (x86)\Firebird\Firebird_2_5\bin\fbclient.dll'
    Left = 272
    Top = 192
  end
  object qryLivros: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM LIVROS')
    Left = 80
    Top = 136
    object qryLivrosCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryLivrosTITULO: TStringField
      FieldName = 'TITULO'
      Origin = 'TITULO'
      Required = True
    end
    object qryLivrosEDITORA: TStringField
      FieldName = 'EDITORA'
      Origin = 'EDITORA'
      Required = True
    end
    object qryLivrosDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
    object qryLivrosUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
    end
    object qryLivrosAQUISICAO: TIntegerField
      FieldName = 'AQUISICAO'
      Origin = 'AQUISICAO'
      Required = True
    end
    object qryLivrosCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      Required = True
    end
    object qryLivrosIDIOMA: TIntegerField
      FieldName = 'IDIOMA'
      Origin = 'IDIOMA'
      Required = True
    end
  end
  object DSLivros: TDataSource
    DataSet = qryLivros
    Left = 88
    Top = 216
  end
end
