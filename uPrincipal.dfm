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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 168
    Width = 616
    Height = 273
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btnEditar: TButton
    Left = 520
    Top = 79
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 1
    OnClick = btnEditarClick
  end
  object btnAdicionar: TButton
    Left = 520
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 2
    OnClick = btnAdicionarClick
  end
  object btnExcluir: TButton
    Left = 520
    Top = 110
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 3
    OnClick = btnExcluirClick
  end
end
