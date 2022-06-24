object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 217
  ClientWidth = 465
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 20
    Top = 27
    Width = 39
    Height = 13
    Caption = 'Fun'#231#227'o:'
  end
  object Label2: TLabel
    Left = 20
    Top = 54
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label3: TLabel
    Left = 178
    Top = 54
    Width = 36
    Height = 13
    Caption = 'Sal'#225'rio:'
  end
  object Label4: TLabel
    Left = 311
    Top = 54
    Width = 33
    Height = 13
    Caption = 'B'#244'nus:'
  end
  object ComboBox1: TComboBox
    Left = 65
    Top = 24
    Width = 376
    Height = 21
    ItemIndex = 0
    TabOrder = 0
    Text = 'Administrativo'
    Items.Strings = (
      'Administrativo'
      'Vendedor'
      'Funcionario')
  end
  object Edit1: TEdit
    Left = 57
    Top = 51
    Width = 112
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 220
    Top = 51
    Width = 85
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 351
    Top = 51
    Width = 90
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 20
    Top = 94
    Width = 81
    Height = 33
    Caption = 'Cadastrar'
    TabOrder = 4
  end
  object Button2: TButton
    Left = 343
    Top = 94
    Width = 46
    Height = 33
    Caption = '<<'
    TabOrder = 5
  end
  object Button3: TButton
    Left = 395
    Top = 94
    Width = 46
    Height = 33
    Caption = '>>'
    TabOrder = 6
  end
  object Memo1: TMemo
    Left = 20
    Top = 133
    Width = 421
    Height = 60
    TabOrder = 7
  end
  object Button4: TButton
    Left = 256
    Top = 94
    Width = 81
    Height = 33
    Caption = 'Calcular Sal'#225'rio'
    TabOrder = 8
  end
end
