object conexaoDM: TconexaoDM
  Height = 480
  Width = 640
  object qryAluno: TFDQuery
    Left = 72
    Top = 152
  end
  object qrySala: TFDQuery
    Left = 72
    Top = 256
  end
  object dsAluno: TDataSource
    Left = 256
    Top = 72
  end
  object dsSala: TDataSource
    Left = 248
    Top = 184
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'F:\Teste_GSA\Teste_GSA\libmysql.dll'
    Left = 360
    Top = 136
  end
  object connectionDB: TFDConnection
    Params.Strings = (
      'Server=localhost'
      'Database=escola'
      'User_Name=root'
      'Password=@B7l5a5n3k5@'
      'CharacterSet==utf8mb4'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 80
    Top = 48
  end
end
