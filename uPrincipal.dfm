object frmListarAluno: TfrmListarAluno
  Left = 0
  Top = 0
  Caption = 'Listar Aluno'
  ClientHeight = 509
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object grdListar: TDBGrid
    Left = 0
    Top = 236
    Width = 784
    Height = 273
    Align = alBottom
    DataSource = uDM.dsAluno
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btnEditar: TButton
    Left = 701
    Top = 78
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 1
    OnClick = btnEditarClick
  end
  object btnAdicionar: TButton
    Left = 701
    Top = 47
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 2
    OnClick = btnAdicionarClick
  end
  object btnExcluir: TButton
    Left = 701
    Top = 109
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 3
    OnClick = btnExcluirClick
  end
  object edtPesquisar: TEdit
    Left = 8
    Top = 190
    Width = 497
    Height = 23
    TabOrder = 4
    TextHint = 'Pesquisar'
  end
  object btnPesquisar: TButton
    Left = 701
    Top = 189
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 5
    OnClick = btnPesquisarClick
  end
end
