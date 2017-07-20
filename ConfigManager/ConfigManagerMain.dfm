object fConfigManagerMain: TfConfigManagerMain
  Left = 0
  Top = 0
  Caption = 'Configuration Manager'
  ClientHeight = 591
  ClientWidth = 1034
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmMain
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tbMain: TToolBar
    Left = 0
    Top = 0
    Width = 1034
    Height = 38
    BorderWidth = 2
    ButtonHeight = 28
    ButtonWidth = 28
    Caption = 'tbMain'
    EdgeBorders = [ebBottom]
    Images = ilMain
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    object tbSecurity: TToolButton
      Left = 0
      Top = 0
      Hint = 'Security'
      Caption = 'tbSecurity'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = tbSecurityClick
    end
    object tbSystemConfiguration: TToolButton
      Left = 28
      Top = 0
      Hint = 'System Configuration'
      Caption = 'tbSystemConfiguration'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = tbSecurityClick
    end
  end
  object pDock: TJvPanel
    Left = 0
    Top = 38
    Width = 1034
    Height = 553
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    FlatBorderColor = clBtnFace
    Align = alClient
    BevelEdges = []
    BevelOuter = bvNone
    BorderWidth = 2
    ParentBackground = False
    TabOrder = 1
  end
  object ilMain: TcxImageList
    FormatVersion = 1
    DesignInfo = 900
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00BBEE
          FD00288FC100288FC100BBEEFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BBEEFD002792
          C40003BFF40003BFF4002791C300BBEEFD00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002494C7000DC3
          F500288FC1002791C3000DC3F4002494C700BBEEFD00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BBEEFD002197
          CA001BC6F6002297C9001F9BCD001BC7F6002298CA00BBEEFD00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BBEE
          FD001E9CCE002BCBF60018A4D70014A8DD002BCBF7001E9BCE00BBEEFD00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00BBEEFD0015A8DD003DD1F7000DB1E5000AB6EA003DD1F7001BA0D400BBEE
          FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00BBEEFD0017A4D80051D7F90005BDF20003BFF40051D7F90017A5
          D80017A5D80017A5D80017A4D800BBEEFD00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00BBEEFD0014A9DD0065DDF90003BFF40066DDF90066DE
          FA0065DEFA0065DDF9004BD6F80014A9DD00BBEEFD00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00BBEEFD0010AEE2007AE4FA007AE3FB007AE4
          FA007AE4FA007AE4FB007AE4FB0059DAF90010AEE200BBEEFD00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000DB2E6008EEAFC008DEAFC008EEA
          FC008EE9FB008EEAFC0068DEFA008EEAFC0068DEF9000DB2E700FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000AB6EB00A0F0FC00A0EFFD00A0F0
          FC00A0F0FD0076E3FA0011ADE10076E2FB00A0EFFD000AB6EB00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0007B9EE00B1F5FE00B1F4FE00B1F5
          FE0081E6FB001AA1D4001AA1D40082E6FB00B0F5FE0007B9EE00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0004BDF1008BE9FB00BEF9FF008BE9
          FB002296C9002396C9008BE9FB00BDF9FF00BEF9FE0005BDF100FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BBEEFD0003BFF40093EBFC00C8FC
          FF0093EBFC0093EBFC00C8FCFF0093EBFC0003BFF400BBEEFD00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BBEEFD0003BFF40093EB
          FC00C8FCFF00C8FCFF0093EBFC0003BFF400BBEEFD00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BBEEFD0003BF
          F40003BFF40003BFF40003BFF400BBEEFD00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000321A1A6BD0BEBEFD878282EE7777
          77FA985832FC7A7370FF6C6C6CCF000000000000000000000000000000000000
          00000000000025151545301D1D5C01000002573535B4EFE1E1FF848383FFF1DC
          CFFFA84305FFC6723AFF7D7C7CFC000000000000000000000000000000000000
          00002012123AA27878FA926060FF744B4BE1AC7878FBF4E7E7FF928E8DFFB665
          2EFFA94403FFB24C01FFAF6D3AFF000000000000000000000000000000000000
          00004B2C2C88DCC2C2FFDBBDBDFFD2A7A7FFE7C2C2FFF2E5E5FFB0744AFFAB46
          00FFB96E3BFFBB6521FFC05C04FF4B2200570000000000000000000000000000
          0000140C0C23A37777F7E8D1D1FFE3C9C9FFE2C8C8FFF4E8E8FFB56630FFB272
          38FFC6C4C4FFBE9674FFC3610AFFCA6601FD9E5B09B800000000000000004D31
          317E9A6868EFA47474FFE9D1D1FFE4CCCCFFE7D0D0FFF1E5E5FFEBCBB9FFF4E8
          E5FFF3E8E8FFF2E4E4FFDB9A65FFD16A01FFDC7903FD00000000000000009E74
          74E9EDD3D3FFE6D1D1FFE3CACAFFECD7D7FFC29C9CFC866E6E9E917E7E99D0A5
          A5ECDFC2C2FFE6CFCFFFF6EDEDFFE49649FFDA7502FE0000000000000000AC7F
          7FFAEDDEDEFFF0E2E2FFE5CCCCFFF1E0E0FF7E5353CF00000000000000007D5C
          5C96E1C4C4FFE1C7C7FFDABEBEFFD5C8C8F3C16604E200000000000000002A1C
          1C3F664444A1D2B4B4FFE6CDCDFFF3E5E5FFA47A7AFE5430309F5437378ABD94
          94F4E5CCCCFFE1C7C7FFCAA5A5FFC2ABABF8190F0F3100000000000000000000
          00006B4A4A94DCBFBFFFEAD6D6FFECD9D9FFF1E2E2FFDABBBBFFE6C8C8FFEBD7
          D7FFE4CACAFFE2C6C6FFE7CACAFFC19797FF3721216C00000000000000000000
          0000C69E9EF2FDFBFBFFF7F1F1FFE9D3D3FFE6CECEFFEFDEDEFFECD9D9FFE4CA
          CAFFE3C6C6FFC19D9DFFBE9898FF9F7373F60F09091B00000000000000000000
          00006A4B4B82C39E9EF28E6565B9C7A2A2F5F2E6E6FFE8D0D0FFE6CECEFFE9D4
          D4FFDCC1C1FF5638389020141433241616390000000000000000000000000000
          00000000000004020204000000008A6262ADFBF6F6FFBE9999F27C5656B0CBA7
          A7FEE0C7C7FF5E3E3E9100000000000000000000000000000000000000000000
          0000000000000000000000000000674C4C7EC09898F3533B3B6C000000005138
          38746444449A0E0A0A1600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object mmMain: TMainMenu
    Left = 868
    object File1: TMenuItem
      Caption = '&File'
      object Exit1: TMenuItem
        Caption = 'E&xit'
      end
    end
    object About1: TMenuItem
      Caption = 'A&bout'
    end
  end
end
