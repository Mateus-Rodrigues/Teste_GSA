object conexaoDM: TconexaoDM
  Height = 480
  Width = 640
  object connectionDB: TFDConnection
    Left = 80
    Top = 48
  end
  object qryAluno: TFDQuery
    Connection = connectionDB
    Left = 72
    Top = 152
  end
  object qrySala: TFDQuery
    Connection = connectionDB
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
end
