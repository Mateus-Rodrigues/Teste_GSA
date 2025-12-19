unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmListarAluno = class(TForm)
    grdListarAluno: TDBGrid;
    btnAdicionar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    dsListar: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListarAluno: TfrmListarAluno;

implementation

uses UDM, uCadAluno;

{$R *.dfm}

procedure TfrmListarAluno.FormShow(Sender: TObject);
begin
  conexaoDM.AbrirAlunos;
end;

procedure TfrmListarAluno.btnAdicionarClick(Sender: TObject);
begin
  conexaoDM.qryAluno.Append;
  frmCadAluno := TfrmCadAluno.Create(nil);
  try
    frmCadAluno.ShowModal;
  finally
    frmCadAluno.Free;
  end;
end;

end.
