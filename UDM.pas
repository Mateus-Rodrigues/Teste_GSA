unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef;

type
  TconexaoDM = class(TDataModule)
    qryAluno: TFDQuery;
    qrySala: TFDQuery;
    dsAluno: TDataSource;
    dsSala: TDataSource;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    connectionDB: TFDConnection;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbrirSalas;
    procedure AbrirAlunos;
  end;

var
  conexaoDM: TconexaoDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

// criando procedures (Funções) para carregamentos de dados
procedure TconexaoDM.AbrirSalas;
begin
  qrySala.Close;
  qrySala.SQL.Text := 'SELECT id, nome FROM sala ORDER BY nome';
  qrySala.Open;
end;

procedure TconexaoDM.AbrirAlunos;
begin
  qryAluno.Close;
  qryAluno.SQL.Text :=
  'SELECT a.id, a.nome, a.data_nascimento, a.endereco, '+
  'a.data_inclusao, a.sala_id, s.nome AS sala'+
  'FROM aluno a'+
  'JOIN sala s ON s.id = a.sala_id';
end;
end.
