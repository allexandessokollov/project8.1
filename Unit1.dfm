object Form1: TForm1
  Left = 243
  Top = 140
  Width = 716
  Height = 646
  Caption = 'Form1'
  Color = clWhite
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Trebuchet MS'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 24
  object Label1: TLabel
    Left = 432
    Top = 8
    Width = 91
    Height = 24
    Caption = 'Enter SNP:'
  end
  object Label2: TLabel
    Left = 432
    Top = 80
    Width = 117
    Height = 24
    Caption = 'Enter Grades:'
  end
  object Label3: TLabel
    Left = 488
    Top = 112
    Width = 59
    Height = 24
    Caption = 'Physics'
  end
  object Label4: TLabel
    Left = 504
    Top = 152
    Width = 42
    Height = 24
    Caption = 'Math'
  end
  object Label5: TLabel
    Left = 528
    Top = 192
    Width = 21
    Height = 24
    Caption = 'CS'
  end
  object Label6: TLabel
    Left = 464
    Top = 232
    Width = 84
    Height = 24
    Caption = 'Chemistry'
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 425
    Height = 601
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object createFile: TButton
    Left = 440
    Top = 368
    Width = 153
    Height = 41
    Caption = 'Create file'
    TabOrder = 1
    OnClick = createFileClick
  end
  object openFile: TButton
    Left = 440
    Top = 416
    Width = 153
    Height = 41
    Caption = 'Open file'
    TabOrder = 2
    OnClick = openFileClick
  end
  object Button1: TButton
    Left = 432
    Top = 264
    Width = 265
    Height = 41
    Caption = 'Add element'
    TabOrder = 3
    OnClick = Button1Click
  end
  object saveFile: TButton
    Left = 440
    Top = 464
    Width = 153
    Height = 41
    Caption = 'Save file'
    TabOrder = 4
  end
  object enterSNP: TEdit
    Left = 432
    Top = 40
    Width = 265
    Height = 32
    TabOrder = 5
    Text = 'Surname N.P.'
  end
  object physics: TEdit
    Left = 560
    Top = 104
    Width = 41
    Height = 32
    TabOrder = 6
  end
  object math: TEdit
    Left = 560
    Top = 144
    Width = 41
    Height = 32
    TabOrder = 7
  end
  object cs: TEdit
    Left = 560
    Top = 184
    Width = 41
    Height = 32
    TabOrder = 8
  end
  object chemstry: TEdit
    Left = 560
    Top = 224
    Width = 41
    Height = 32
    TabOrder = 9
  end
  object OpenDialog1: TOpenDialog
    Filter = 'All files|*.*|Text file|*.txt'
    FilterIndex = 3
    Left = 656
    Top = 400
  end
  object SaveDialog1: TSaveDialog
    Filter = 'All files|*.*|Text files|*.txt|Data files|*.dat'
    Options = [ofEnableSizing]
    Left = 656
    Top = 368
  end
end
