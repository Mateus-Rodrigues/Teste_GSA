program Projeto_Teste_GSA;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmListarAluno},
  uCadAluno in 'uCadAluno.pas' {frmCadAluno},
  dmConexao in 'dmConexao.pas' {uDM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmListarAluno, frmListarAluno);
  Application.CreateForm(TfrmCadAluno, frmCadAluno);
  Application.CreateForm(TuDM, uDM);
  Application.Run;
end.
