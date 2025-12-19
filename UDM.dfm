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
    DriverID = 'MySQL'
    VendorLib = 'F:\Teste_GSA\Teste_GSA\libmysql.dll'
    Left = 360
    Top = 136
  end
  object connectionDB: TFDConnection
    Params.Strings = (
      'Server=127.0.0.1'
      'Database=escola'
      'User_Name=localhost'
      'Password=@B7l5a5n3k5@'
      'CharacterSet==utf8mb4'
      'UseSSL=True'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 72
    Top = 64
  end
end
