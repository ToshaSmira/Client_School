object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 398
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbNameServer: TLabel
    Left = 16
    Top = 16
    Width = 65
    Height = 13
    Caption = 'Name server:'
  end
  object lbNServer: TLabel
    Left = 87
    Top = 16
    Width = 47
    Height = 13
    Caption = 'lbNServer'
  end
  object lbTimeServer: TLabel
    Left = 16
    Top = 35
    Width = 60
    Height = 13
    Caption = 'Time server:'
  end
  object lbTServer: TLabel
    Left = 87
    Top = 35
    Width = 46
    Height = 13
    Caption = 'lbnServer'
  end
  object tmServerTime: TTimer
    OnTimer = tmServerTimeTimer
    Left = 168
    Top = 16
  end
end
