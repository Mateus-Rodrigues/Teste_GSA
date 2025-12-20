object conexaoDM: TconexaoDM
  Height = 480
  Width = 640
  object conexaoDB: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Exte' +
      'nded Properties="DATABASE=escola;DB=escola;DSN=Mysql ODBC Conect' +
      'or DataSource1;NO_SCHEMA=1;PASSWORD={@Blank123@};PORT=3306;SERVE' +
      'R=127.0.0.1;UID=root;USER=root";Initial Catalog=escola'
    LoginPrompt = False
    Left = 112
    Top = 128
  end
  object qryAluno: TADOQuery
    Active = True
    Connection = conexaoDB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM aluno')
    Left = 72
    Top = 200
  end
  object ADOQuery2: TADOQuery
    Parameters = <>
    Left = 288
    Top = 216
  end
  object dsAluno: TDataSource
    DataSet = qryAluno
    Left = 72
    Top = 272
  end
end
