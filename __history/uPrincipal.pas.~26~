unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmListarAluno = class(TForm)
    grdListar: TDBGrid;
    btnEditar: TButton;
    btnAdicionar: TButton;
    btnExcluir: TButton;
    edtPesquisar: TEdit;
    btnPesquisar: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListarAluno: TfrmListarAluno;

implementation

uses dmConexao, uCadAluno;

{$R *.dfm}



procedure TfrmListarAluno.btnAdicionarClick(Sender: TObject);
begin
   uDM.qrySala.Append;
   uDM.qryAluno.Append;
   Application.CreateForm(TfrmCadAluno, frmCadAluno);
   frmCadAluno.ShowModal;
end;


procedure TfrmListarAluno.btnEditarClick(Sender: TObject);
begin
  if not uDM.qryAluno.IsEmpty then
  begin
    uDM.qryAluno.Edit;
    Application.CreateForm(TfrmCadAluno, frmCadAluno);
    frmCadAluno.ShowModal;
  end;
end;

procedure TfrmListarAluno.btnExcluirClick(Sender: TObject);
begin
 if Application.MessageBox(
 'Deseja Excluir?',
 'Confirmação',
 MB_YESNO + MB_ICONQUESTION
 ) = IDYES then
 begin
   uDM.qryAluno.Delete;
 end;
end;

procedure TfrmListarAluno.btnPesquisarClick(Sender: TObject);
begin
   uDM.qryAluno.Close;
   uDM.qryAluno.Parameters.ParamByName('pNome').Value :=
   '%' + edtPesquisar.Text + '%';
   uDM.qryAluno.Open;
end;

procedure TfrmListarAluno.FormShow(Sender: TObject);
begin
 uDM.qryAluno.Close;
 uDM.qryAluno.Parameters.ParamByName('pNome').Value := '%';
 uDM.qryAluno.Open;
end;

end.
