object TestDllF: TTestDllF
  Left = 0
  Top = 0
  Caption = 'TestDllF'
  ClientHeight = 473
  ClientWidth = 546
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 16
    Top = 24
    Width = 505
    Height = 425
    Caption = 'Probar Dll'
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 64
      Width = 161
      Height = 15
      Caption = 'Parametros para pasar a la DLL'
    end
    object Label2: TLabel
      Left = 40
      Top = 99
      Width = 64
      Height = 15
      Caption = 'Parametro1:'
    end
    object Label3: TLabel
      Left = 40
      Top = 128
      Width = 64
      Height = 15
      Caption = 'Parametro2:'
    end
    object EditParam1: TEdit
      Left = 118
      Top = 96
      Width = 121
      Height = 23
      TabOrder = 0
      Text = 'Parametro1'
    end
    object EditParam2: TEdit
      Left = 118
      Top = 125
      Width = 121
      Height = 23
      TabOrder = 1
      Text = 'Param2etro'
    end
    object ButtonProbarDll: TButton
      Left = 296
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Probar Dll'
      TabOrder = 2
      OnClick = ButtonProbarDllClick
    end
    object MemoLog: TMemo
      Left = 40
      Top = 200
      Width = 441
      Height = 193
      ScrollBars = ssBoth
      TabOrder = 3
    end
  end
end
