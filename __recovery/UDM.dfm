object conexaoDM: TconexaoDM
  Height = 480
  Width = 640
  object qryAluno: TFDQuery
    Connection = connectionDB
    SQL.Strings = (
      'SELECT '
      '   id_aluno,'
      '   nome,'
      '   data_nascimento,'
      '   endereco,'
      '   sala_id'
      'FROM aluno'
      'ORDER BY nome')
    Left = 72
    Top = 152
  end
  object qrySala: TFDQuery
    MasterSource = dsAluno
    Connection = connectionDB
    Left = 72
    Top = 256
  end
  object dsAluno: TDataSource
    DataSet = qryAluno
    Left = 176
    Top = 152
  end
  object dsSala: TDataSource
    DataSet = qrySala
    Left = 176
    Top = 256
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'F:\Teste_GSA\Teste_GSA\libmysql.dll'
    Left = 360
    Top = 136
  end
  object connectionDB: TFDConnection
    Params.Strings = (
      'Server=127.0.0.1'
      'Database=escola'
      'User_Name=root'
      'Password=@Blank123@'
      'CharacterSet==utf8mb4'
      'DriverID=MySQL'
      'UseSSL=False'
      'VendorLib=libmysql.dll')
    LoginPrompt = False
    Left = 72
    Top = 64
  end
  object ADOConnection1: TADOConnection
    Provider = 'Windows Search Data Source'
    Left = 376
    Top = 288
  end
  object ADOTable1: TADOTable
    Left = 472
    Top = 296
  end
  object ADOTable2: TADOTable
    Left = 552
    Top = 296
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 472
    Top = 368
  end
  object ADOQuery2: TADOQuery
    Parameters = <>
    Left = 552
    Top = 376
  end
end
