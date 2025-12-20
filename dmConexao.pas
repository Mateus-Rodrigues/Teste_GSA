unit dmConexao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TuDM = class(TDataModule)
    adoConexao: TADOConnection;
    qryAluno: TADOQuery;
    dsAluno: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uDM: TuDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
