object CriarArquivo: TCriarArquivo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Criar Novo Hor'#225'rio'
  ClientHeight = 240
  ClientWidth = 470
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Padding.Left = 50
  Padding.Top = 30
  Padding.Right = 50
  Padding.Bottom = 30
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object p_form: TPanel
    Left = 50
    Top = 30
    Width = 370
    Height = 180
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 240
    ExplicitTop = 0
    ExplicitWidth = 460
    ExplicitHeight = 280
    object lb_nome: TLabel
      Left = 0
      Top = 0
      Width = 370
      Height = 35
      Align = alTop
      AutoSize = False
      Caption = 'Nome do Hor'#225'rio :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Raleway Medium'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 440
    end
    object btn_criar: TButton
      Left = 0
      Top = 145
      Width = 370
      Height = 35
      Align = alBottom
      Caption = 'Criar Arquivo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Raleway'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 0
      OnClick = btn_criarClick
      ExplicitLeft = 160
      ExplicitTop = 179
      ExplicitWidth = 100
    end
    object tf_nome: TEdit
      Left = 0
      Top = 35
      Width = 370
      Height = 30
      Margins.Left = 30
      Align = alTop
      AutoSize = False
      BevelInner = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Raleway'
      Font.Style = []
      MaxLength = 40
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 10
    end
    object p_field: TPanel
      Left = 0
      Top = 65
      Width = 370
      Height = 65
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 71
      object lb_n_aulas: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 20
        Width = 246
        Height = 42
        Margins.Top = 20
        Align = alLeft
        AutoSize = False
        Caption = 'N'#250'mero de aulas por dia :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Raleway Medium'
        Font.Style = []
        ParentFont = False
      end
      object tf_n_aulas: TEdit
        AlignWithMargins = True
        Left = 252
        Top = 17
        Width = 118
        Height = 30
        Margins.Left = 0
        Margins.Top = 17
        Margins.Right = 0
        Margins.Bottom = 18
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Raleway'
        Font.Style = []
        MaxLength = 2
        NumbersOnly = True
        ParentFont = False
        TabOrder = 0
      end
    end
  end
end
