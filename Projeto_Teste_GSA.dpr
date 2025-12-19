program Projeto_Teste_GSA;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmListarAluno},
  uCadAluno in 'uCadAluno.pas' {frmCadAluno},
  UDM in 'UDM.pas' {conexaoDM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmListarAluno, frmListarAluno);
  Application.CreateForm(TfrmCadAluno, frmCadAluno);
  Application.CreateForm(TconexaoDM, conexaoDM);
  Application.Run;
end.
