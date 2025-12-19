object frmListarAluno: TfrmListarAluno
  Left = 0
  Top = 0
  Caption = 'Listar Aluno'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object grdListarAluno: TDBGrid
    Left = -8
    Top = 184
    Width = 624
    Height = 257
    DataSource = conexaoDM.dsAluno
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btnAdicionar: TButton
    Left = 536
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 1
    OnClick = btnAdicionarClick
  end
  object btnEditar: TButton
    Left = 536
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 2
    OnClick = btnEditarClick
  end
  object btnExcluir: TButton
    Left = 536
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 3
    OnClick = btnExcluirClick
  end
end
