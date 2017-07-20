inherited fBasePrintForm: TfBasePrintForm
  Caption = 'fBasePrintForm'
  ClientHeight = 460
  ClientWidth = 609
  Scaled = False
  OnCreate = FormCreate
  ExplicitWidth = 625
  ExplicitHeight = 499
  PixelsPerInch = 96
  TextHeight = 14
  object pcMain: TJvPageControl
    Left = 0
    Top = 0
    Width = 609
    Height = 460
    ActivePage = tsMain
    Align = alClient
    TabOrder = 0
    object tsMain: TTabSheet
      Caption = 'Change caption here'
      object pnlMain: TPanel
        Left = 0
        Top = 0
        Width = 601
        Height = 431
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 5
        Color = clMenu
        ParentBackground = False
        TabOrder = 0
        object pnlLeft: TPanel
          Left = 5
          Top = 5
          Width = 591
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          DesignSize = (
            591
            40)
          object btnPrint: TcxButton
            Left = 478
            Top = 4
            Width = 106
            Height = 27
            Anchors = [akTop, akRight]
            Caption = 'Print'
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000001111056516160687161606871616068716160687161606871616
              06871616068716160687111105650000000000000000000000000000000D0000
              001A0000001A1D1D0C82FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFE
              FDFFFDFDFBFFFEFEFBFF1D1D0C820000001A0000001A0000000D070707700909
              09850909098502020288E5E5E5FFE58743FFE5B38EFFC0B495FF59733BFF7A5C
              2BFF97693CFFE3E3DFFF020202880909098509090985070707701414147AC5BD
              BDFFC5BABAFF595959FF595959FF595959FF595959FF595959FF595959FF5959
              59FF595959FF595959FF595959FFCCBBBBFFCCBBBBFF1414147A17171775C4C2
              C2FFB8B0B0FF6F6B6BFF968A8AFF958888FF968787FF968787FF968787FF9787
              87FF978787FF978787FF716969FFCCBBBBFFCCBBBBFF171717751919196DB8B8
              B8FFA5A5A5FF202020FF605454FF5A4D4DFF5A4D4DFF5A4D4DFF5A4D4DFF5A4D
              4DFF5A4D4DFF5A4D4DFF202020FF9D9D9DFFAFAFAFFF1919196D16161658ADAD
              ADDDBEBEBEFF313131FF5C5656FF4D4444FF4D4444FF4D4444FF4D4444FF4D44
              44FF4D4444FF4E4646FF313131FF66FF66FF9D9292DD16161658121212408282
              82BFC9C9C9FF444444FF676666FF494646FF403C3CFF3F3B3BFF3F3B3BFF3F3B
              3BFF3F3B3BFF484444FF444444FFBBB1B1FF706B6BBF121212400C0C0C295C5C
              5CA0DADADAFF585858FF767676FF666666FF5F5F5FFF525151FF444343FF3C3B
              3BFF373636FF4A4949FF585858FFBFB9B9FF535353A00C0C0C29060606143D3D
              3D7FE8E8E8FF686868FF838383FF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D
              7DFF7C7C7CFF808080FF686868FFE4E4E4FF3C3C3C7F06060614010101021919
              194D222222670202028D757575FF757575FF757575FF757575FF757575FF7575
              75FF757575FF757575FF0202028D222222671919194D01010102000000000000
              0000000000003131206BFAFAF4FFF5F5EDFFF2F2EAFFEEEEE2FFE8E8D9FFE6E6
              D5FFE5E5D4FFF2F2E1FF3131206B000000000000000000000000000000000000
              00000000000031312069FAFAF3FFF2F2EAFFEEEEE2FFE8E8D9FFE6E6D5FFA4A4
              93FFA4A493FFA4A493FF2323127C000000000000000000000000000000000000
              00000000000032322168F9F9F0FFEEEEE2FFE8E8D9FFE6E6D5FFE5E5D4FFB6B6
              A5FFFFFFFFFF323221680E0E0920000000000000000000000000000000000000
              00000000000032322267FBFBEFFFF4F4E5FFF3F3E2FFF2F2E1FFF2F2E1FFC2C2
              B1FF3232226712120C2500000000000000000000000000000000000000000000
              00000000000026261A4D33332266333322663333226633332266333322663333
              226612120C240000000000000000000000000000000000000000}
            TabOrder = 0
            OnClick = btnPrintClick
          end
          object bGenerate: TcxButton
            Left = 359
            Top = 4
            Width = 113
            Height = 27
            Align = alCustom
            Anchors = [akTop, akRight]
            Caption = 'Generate'
            LookAndFeel.NativeStyle = True
            OptionsImage.Glyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              0800000000000001000000000000000000000001000000000000009800000098
              0000009800000098000000980000009800000098000000980000009800000098
              000000970000009700000095000000920000018E010001880100028002000475
              040007630700095409000C450C000F3A0F0010341000132D1300152715001720
              17001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
              2100222222002323230024242400252525002626260027272700282828002929
              29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
              3100323232003333330034343400353535003636360037373700383838003939
              39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
              4100424242004343430044444400454545004646460047474700484848004949
              49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
              5100525252005353530054545400555555005656560057575700585858005959
              59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E006867650073706C007D78
              7300958F8800A9A29A00B9B2AA00CAC2B800D9D0C500E8DED200F1E8DD00F8F0
              E700FBF5ED00FDF8F200FEF9F500FEFAF600FEFBF700FEFCF800FEFCF900FEFC
              FA00FEFCFA00FEFCFA00FEFCFA00FEFCF900FEFBF800FEFBF700FEFAF400FEF9
              F200FEF8F000FEF7EF00FEF7EE00FEF6ED00FEF6EC00FEF5EB00FEF5EA00FEF4
              E900FEF4E800FEF3E600FEF2E400FEF1E200FEF0DE00FEEFDD00FEEEDB00FEED
              DA00FEEDD900FEEDD900FEEDD800FEECD800FEECD700FEEBD600FEEBD500FEEB
              D400FEEAD300FEE9D100FEE8CF00FEE8CE00FEE7CC00FEE5C900FEE3C500FEE2
              C200FEE1C000FEE0BE00FEDFBD00FEDFBC00FEDFBC00FEDEBB00FEDEBA00FEDD
              B900FEDDB800FDDCB700FDDCB600FDDBB500FDDBB500FCDBB700FBDBB800F9DB
              B900F6DABA00F1D7BA00EAD3BA00E2CFB900D9C9B700CBC0B400C1BAB200B5B3
              B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
              B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C4B5
              C400C9A9C900CD9FCD00D295D200D58BD500DB7ADB00E263E200E850E800ED40
              ED00F133F100F526F500F916F900FB0CFB00FD07FD00FD04FD00FE02FE00FE01
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE01FC00FA0CE500F420C000EC3A8C00E5515F00DE653700DB712100D87A
              0F00D77E0700D6800200D6810100D6810000D6810000D5820000D5820000D582
              0000D5820000D5820000D5820000D5820000D5820000D5820000DEDEDEDEDEDE
              DEDEDEDEDEDEDEDEDEDEDEDEFBFBFBFBFBFBFBFBFBFBFBFBDEDEDEFB88909496
              98999DA2A5A5A5A5FBDEDEFB868990939798999CA2A5A5A5FBDEDEFB84090909
              09090909090909A5FBDEDEFB80848688909496989A9DA2A5FBDEDEFB7C090909
              09090909090909A2FBDEDEFB797C80838688909497989A9DFBDEDEFB6E090909
              090909090909099AFBDEDEFB726E797C8184868890949698FBDEDEFB71090909
              0909090909090997FBDEDEFB7171756E797C808387889094FBDEDEFB71090909
              0909090909090990FBDEDEFB71717171756E797C80838688FBDEDEDEFBFBFBFB
              FBFBFBFBFBFBFBFBDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE}
            TabOrder = 1
            OnClick = bGenerateClick
          end
        end
        object pnlReport: TPanel
          Left = 5
          Top = 45
          Width = 591
          Height = 348
          Align = alClient
          BevelOuter = bvNone
          Caption = 'pnlReport'
          TabOrder = 1
          object rvMain: TQRPreview
            Left = 0
            Top = 0
            Width = 591
            Height = 348
            HorzScrollBar.Tracking = True
            VertScrollBar.Tracking = True
            Align = alClient
            BevelInner = bvNone
            Ctl3D = True
            Padding.Top = 5
            Padding.Bottom = 5
            ParentCtl3D = False
            TabOrder = 0
            PageNumber = 1
            Zoom = 80
          end
          object qrMain: TQuickRep
            Left = 10
            Top = 6
            Width = 571
            Height = 739
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Functions.Strings = (
              'PAGENUMBER'
              'COLUMNNUMBER'
              'REPORTTITLE')
            Functions.DATA = (
              '0'
              '0'
              #39#39)
            OnPreview = qrMainPreview
            Options = [FirstPageHeader, LastPageFooter]
            Page.Columns = 1
            Page.Orientation = poPortrait
            Page.PaperSize = Letter
            Page.Continuous = False
            Page.Values = (
              88.900000000000000000
              2794.000000000000000000
              88.900000000000000000
              2159.000000000000000000
              88.900000000000000000
              88.900000000000000000
              0.000000000000000000)
            PrinterSettings.Copies = 1
            PrinterSettings.OutputBin = Auto
            PrinterSettings.Duplex = False
            PrinterSettings.FirstPage = 0
            PrinterSettings.LastPage = 0
            PrinterSettings.UseStandardprinter = False
            PrinterSettings.UseCustomBinCode = False
            PrinterSettings.CustomBinCode = 0
            PrinterSettings.ExtendedDuplex = 0
            PrinterSettings.UseCustomPaperCode = False
            PrinterSettings.CustomPaperCode = 0
            PrinterSettings.PrintMetaFile = False
            PrinterSettings.PrintQuality = 0
            PrinterSettings.Collate = 0
            PrinterSettings.ColorOption = 0
            PrintIfEmpty = True
            SnapToGrid = True
            Units = Pixels
            Zoom = 70
            PrevFormStyle = fsNormal
            PreviewInitialState = wsNormal
            PreviewWidth = 90
            PreviewHeight = 100
            PrevInitialZoom = qrZoomOther
            PreviewDefaultSaveType = stQRP
            PreviewLeft = 0
            PreviewTop = 0
          end
        end
        object pStatus: TPanel
          Left = 10
          Top = 300
          Width = 273
          Height = 83
          BevelOuter = bvNone
          TabOrder = 2
          Visible = False
          object shpStatus: TShape
            Left = 0
            Top = 0
            Width = 273
            Height = 83
            Align = alClient
            Brush.Color = 12058551
            Pen.Color = 43520
            Pen.Style = psInsideFrame
            Pen.Width = 2
            ExplicitLeft = 80
            ExplicitTop = 24
            ExplicitWidth = 65
            ExplicitHeight = 65
          end
          object lblStatus: TLabel
            Left = 46
            Top = 35
            Width = 181
            Height = 13
            Caption = 'Generating report. Please wait...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
        end
        object p_ReportFooter: TPanel
          Left = 5
          Top = 393
          Width = 591
          Height = 33
          Align = alBottom
          BevelOuter = bvNone
          BorderWidth = 1
          TabOrder = 3
          object JvGroupBox1: TJvGroupBox
            Left = 1
            Top = 1
            Width = 589
            Height = 31
            Align = alClient
            Caption = ''
            TabOrder = 0
            DesignSize = (
              589
              31)
            object lblPageNumber: TLabel
              Left = 134
              Top = 9
              Width = 64
              Height = 14
              Anchors = [akLeft, akBottom]
              Caption = 'Page 0 of 0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label1: TLabel
              Left = 9
              Top = 10
              Width = 31
              Height = 14
              Anchors = [akLeft, akBottom]
              Caption = 'Zoom'
            end
            object bFirst: TcxButton
              Left = 487
              Top = 4
              Width = 25
              Height = 23
              Hint = 'First'
              Anchors = [akRight, akBottom]
              OptionsImage.Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                0800000000000001000000000000000000000001000000000000000000000101
                0100020202000303030004040400050505000606060007070700080808000909
                09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
                1100121212001313130014141400151515001616160017171700181818001919
                19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
                2100222222002323230024242400252525002626260027272700282828002929
                29002A2A2A002B2B2B002C2C2C00322E2C0038302C003E322C004A342D005635
                2E005E362E0063362F0066362F0068362F0069372F006C382E006F392D00713A
                2C00743B2B00773D29007A3E29007B3F28007D40270080412600824225008544
                2400894623008C482100904A2000944C1E00994E1C009B4F1B009D501A009F51
                1900A0521800A2521700A3531600A4531600A5541500A7551500A9571400AC58
                1200B05A1100B25B1100B25B1000B45C0E00B55C0E00B75D0C00B95E0A00BC5F
                0800C0610600C3620500C5630400C7640200C9650200CA650100CC660100CD67
                0100CD670200CD670200CC670200CB670300CB670500CB680600CC690800CC69
                0800CD6A0900CE6B0900CE6C0A00CF6D0C00CF6F0E00D0711000D0721400D075
                1900D2781C00D47B2100D57F2700D6822D00D6832F00D5833000D4833100D383
                3200D1823300CE823600CA823A00C7823D00C6833F00C4834100C1834400BF83
                4700BB834A00B8834F00B4845300AF845900AA856000A48667009D8770009688
                7A008E8984008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
                9100929292009393930094949400959595009696960097979700989898009999
                99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
                A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
                A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00B3B2B100BCBAB800C8C5
                C200D2CECB00DAD6D200E4DFDB00EDE8E400F3EEEA00F7F4F000FAF7F400FCF9
                F700FDFBF900FDFCFA00FEFDFB00FEFDFC00FEFDFB00FEFCFA00FEFBF900FDFA
                F700FDF7F000FCF2E800FBEDDD00FBE9D600FBE6D000FAE3CA00F9DFC400F8DB
                BD00F7D8B700F7D4B000F7D3AE00F6D2AC00F6D0A900F6CFA700F6CEA600F5CD
                A400F5CCA100F3CA9F00F2C79C00F1C59800F0C39400F0C19100F0C08E00EFBE
                8B00EFBC8800EFBB8400EFB87F00EEB67C00ECB37800EBB07200EAAC6D00E8A9
                6800E7A76500E6A36000E4A05B00E29D5700E19A5300E0985000DF954B00DE94
                4B00DF924E00E0905200E18C5800E3866000E67C6D00EA6B8200EF559D00F536
                C100FA1BDF00FC0DEF00FE04FA00FE02FC00FE00FE00FE00FE00FE00FE00FE00
                FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FAFAFAFAFA34
                3740403734FAFAFAFAFAFAFAFA383F525B5F605B544135FAFAFAFAFA3D506162
                625F616161614F35FAFAFA4052615F6A6A5F5F606060615034FAFA46626A60CA
                E2696B5FE679606140FA505A707270BDD7696CDEC2EA606155355272767975BD
                D972D5BDBDE95F615C3555E9E6E6E9BDD6C6BDBDC0E96B5F633758E3DEE1E3BD
                D3C5BDBDC0E9695F633A52E1D2DCDEBDCDE5CEBDBDE95F615C3555E7C9D2DBBD
                C9E3E6D6C2E764615435FA71CFC7D2C2C8DBE2E8DAE967613EFAFA57E9C8C6CF
                D2DDE3E878706D4D38FAFAFA55E9CAC6C9D3DADFE5734F3DFAFAFAFAFA5771E4
                D7D3D6E27C463DFAFAFAFAFAFAFAFA52535350514CFAFAFAFAFA}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = bFirstClick
            end
            object bLast: TcxButton
              Left = 562
              Top = 4
              Width = 25
              Height = 23
              Hint = 'Last'
              Anchors = [akRight, akBottom]
              OptionsImage.Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                0800000000000001000000000000000000000001000000000000000000000101
                0100020202000303030004040400050505000606060007070700080808000909
                09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
                1100121212001313130014141400151515001616160017171700181818001919
                19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
                2100222222002323230024242400252525002626260027272700282828002929
                29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
                3100323232003333330034343400353535003636360037373700383838003939
                39003A3A3A003B3B3B0046434000514B450062574C00796652008B725800A584
                6300BB956D00CCA27600DAAD7F00E2B48500E7B98900ECBF9100EEC29500F0C5
                9900F2C89D00F3CA9F00F4CCA300F4CCA200F5CCA200F6CFA600F5CCA200F4CA
                9F00F3C99D00F3C69800F1C39300F0C08E00F0BE8A00EFBB8500EDB78000EDB6
                7D00ECB57B00EBB37800EBB17600EAAE7100E9AC6D00E8A96900E7A66400E6A4
                6100E6A25D00E49E5700E2984E00E0944800DE904100DB8B3A00D9853000D881
                2A00D67E2400D57B2000D3781B00D2741600CF711300CD6E1000CD6D0E00CD6B
                0B00CD6B0900CD6A0700CD690500CD680300CE680200CE680200CD670100CC66
                0200CA650200C8640200C7640300C4630500C1610700BD600900BA5E0B00B75D
                0D00B45C0F00B25B1000B05A1100AE581100AB571200A8551300A5531500A353
                1600A1521700A05118009F5119009C4F1A00984E1C00954C1D008F4920008845
                2300834225007F4027007E4027007B3E2900793D2A00763C2B00723A2D007039
                2E006E3930006E393200703D350075443B007B4E4400845E530091766B009782
                79009B8C85009D928C00A0989400A39E9C00A6A6A600A7A7A700A8A8A800A9A9
                A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
                B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
                B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
                C100C2C2C200C3C3C300C4C4C400C5C5C500C6C6C600CDCCCA00D6D2CF00DCD7
                D200E3DCD400E9DFD500EFE3D500F3E6D900F5E8DB00F6EADE00F7EDE200F8EF
                E500F9F1E900FAF3EC00FBF5EF00FCF8F300FDFAF700FEFCFB00FEFDFC00FEFE
                FD00FEFEFD00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFD00FEFE
                FD00FEFEFD00FEFDFC00FEFDFC00FEFCFB00FEFCFA00FEFBF800FDF8F700FDF3
                F600FDE4F500FDD0F500FDBBF600FDA2F600FE8BF700FE6CF800FE45FA00FE24
                FB00FE0CFD00FE03FD00FE01FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
                FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FAFAFAFAFA9B
                9A92929A9BFAFAFAFAFAFAFAFA9892857E7A797D83929AFAFAFAFAFA95877676
                757A78787676879AFAFAFA9285767A70707A7A79797976879BFAFA8E76746863
                727372614F79797692FA877E6D6C63D545707347DF7A7976829A846C686761DF
                DF486C45DF797A787D9A826764645CE6DFDFCC45DF73717A799A80615B5F56E3
                DFDFCD46DF73717A7998845F515953DFDF4F6647DF7A7A787D9B82644F514FE7
                4F60644CDF717976839AFA6F4FCC4F4F53576049D06D747693FAFA8165CCCE4F
                4E596264686D748999FAFAFA83654FCE4F52575C636A8795FAFAFAFAFA816E61
                474C485F678E95FAFAFAFAFAFAFAFA848282868689FAFAFAFAFA}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = bLastClick
            end
            object bNext: TcxButton
              Left = 537
              Top = 4
              Width = 25
              Height = 23
              Hint = 'Next'
              Anchors = [akRight, akBottom]
              OptionsImage.Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                0800000000000001000000000000000000000001000000000000000000000101
                0100020202000303030004040400050505000606060007070700080808000909
                09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
                1100121212001313130014141400151515001616160017171700181818001919
                19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
                2100222222002323230024242400252525002626260027272700282828002929
                29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
                310035323100423431004F3531005B373200613832006538320067393200693A
                32006C3D33006F40340073443500774936007E50390084563B008C5E3E009668
                41009F704400A7774600AE7B4A00B4804D00C48C5500D1965C00D99D6100DEA2
                6500E2A56800E4A76A00E5A96C00E6A96C00E7AA6D00E8AD7300E8AC6F00E8AC
                6F00E8AC6F00E8AC6E00E8AB6C00E8AA6B00E7A96900E7A86700E7A66400E6A5
                6200E6A46000E6A25D00E5A05A00E49E5700E39C5300E1984D00DD924700D98B
                3F00D0823600C97A3100BD6E2900B4662500AB5F2300A35822009C532200954E
                22008E4A23008846240085442500834325008242250083422500834325008544
                2400884523008D482100924A1E00954C1D00984D1B009D4F1900A1511700A553
                1500A7541300AA561100AD571000B0580E00B2590D00B55A0C00B65B0B00B95D
                0900BD5E0700C05E0500C35F0400C5600400C7600300C8620200C9630200CA64
                0200CB650200CC660300CD680400CE690400CF6A0600CF6C0800CF6D0A00CF6F
                0E00CF711200CD721500CB731B00C6772800BE7D3A00B4845300A58F79009999
                99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
                A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800ADAB
                A900B2AEAB00BBB4AD00C3B9AE00CABDB000D0C0B000D6C3AF00DCC5AE00E1C7
                AC00E8C8A800ECC8A500EEC9A300F0C8A100F1C89F00F1C79D00F1C69A00F1C4
                9700F1C39500F1C49700F2C69900F2C79B00F2C79D00F2C89E00F2C99F00F2CA
                A100F2CDA600F2CFAB00F3D1B000F3D3B300F3D4B500F3D5B800F3D7BA00F3D8
                BD00F2DAC000F3DBC300F3DEC800F3E1CE00F4E5D500F5EAE000F7F1EC00F9F6
                F400FBFAF900FCFBFB00FDFDFD00FDFDFD00FEFEFE00FEFEFE00FEFEFE00FEFE
                FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
                FE00FEFEFD00FEFDFC00FEFDFC00FEFDFB00FEFCFB00FEFCFB00FEFBFB00FEFA
                FB00FEF3FB00FEE7FC00FED7FC00FEBCFD00FE94FD00FE65FE00FE3EFE00FE21
                FE00FE10FE00FE06FE00FE02FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
                FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FAFAFAFAFA37
                396E6E3938FAFAFAFAFAFAFAFA396E7D848A8A857E7138FAFAFAFAFA6E7A8E8E
                8C8A8B8C8D8F7A39FAFAFA6E7D8E898C8C8A89898A8B8E7A37FAFA768E8E9090
                8A8A9190888A8B8E6EFA7B83925DCF6186864FCF4C888A8D7F397D94624FDEDE
                60864FDEE4BA938C85397F615FBADEDEDEC7CDE7DEDEC78A8B39815B54C0DEDE
                DEC7CFE7DEE2C68A8B397E57BAC3DEDE4F61BADEE5BA918C85387F5FC4C4D1BA
                6161C1D04F89898E7E39FA94C1C9C0BC515B5A5F93908C8E6EFAFA8060CACABA
                BA585F6195928F7939FAFAFA7E60C4CBC2BA4F585F947A6EFAFAFAFAFA806449
                BAB7BA4996696EFAFAFAFAFAFAFAFA7D6565667C79FAFAFAFAFA}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnClick = bNextClick
            end
            object bPrevious: TcxButton
              Left = 512
              Top = 4
              Width = 25
              Height = 23
              Hint = 'Previous'
              Anchors = [akRight, akBottom]
              OptionsImage.Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                0800000000000001000000000000000000000001000000000000000000000101
                0100020202000303030004040400050505000606060007070700080808000909
                09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
                1100121212001313130014141400151515001616160017171700181818001919
                19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
                2100222222002323230024242400252525002626260027272700282828002929
                29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
                3100323232003333330034343400353535003636360037373700383838003939
                39003D3A3900483A3700533936005D3934006339330066393200683932006A39
                31006C3C31006F3F310072423100764631007E4C30008A522D00995A2A00B068
                2700C0722600CA772500CF7A2400D27B2400D37C2300D47B2100D3791F00D379
                1D00D2761A00D1741700D0711200CF6E0F00CE6C0C00CD6B0A00CD6A0700CC69
                0500CD680400CE680200CF680100CE680100CD670100CD670100CB660100CA66
                0200C9650200C8640300C7640300C6640400C3620500C0610700BD5F0900BA5E
                0B00B85D0C00B65D0D00B45C0F00B25B1000B15B1100AE591100AB571300A755
                1500A5541500A4531600A3531600A2521700A1521800A05118009E5119009C50
                1A009A4F1B00984E1C00944C1E00914A1F008E4821008B472200884523008644
                240083422500824225008142260081422600814227008243280083462A00844A
                2F00864F350088553C00895C46008A6653008C7367008E827B0095918D009B93
                8B00A0958900AC978100B6987A00BE997400C59A6F00CA9B6B00CE9B6800D29B
                6400D69B6100D89B5E00DA9B5C00DC9B5B00DD9B5A00DD9B5900DE9B5800DE9B
                5800DF9B5700DF9A5600DF9A5500E0995400E0995300E0995200E0995200E098
                5100E0985000E0985000DF964D00DF954C00DE944A00DF954D00DF964E00DF9A
                5500E19F5E00E2A36400E3A66800E3A76B00E5AA6E00E6AC7200E7AE7500E9B1
                7800E9B37C00E8B58100E9B88700EABD8F00EAC19700EBC59F00EDCEAE00F0D6
                BC00F2DCC600F5E3D000F7E7D800F8EBDF00F9EFE500FAF4ED00FCF9F500FDFC
                FB00FDFCFC00FDFCFB00FDFBFA00FDF9F900FDF6F800FDF3F700FCECF500FCE3
                F400FCD5F300FDC7F400FDB3F500FD8FF800FE6AFA00FE45FC00FE1CFE00FE0D
                FE00FE06FE00FE02FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
                FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
                FE00FE02FC00FD0DF500FB1DEB00F934DD00F650CB00F469BC00F376B400F287
                AA00F295A200F2A59B00F2B19600F2BA9200F2C09200F2C49400F3C59600F3C7
                9900F3C89B00F3C99D00F4CA9F00F4CBA000F5CBA000F5CCA100E2E2E2E2E23F
                418383413FE2E2E2E2E2E2E2E241836F666160666D8140E2E2E2E2E286715C5B
                5A605E5E5C5C7141E2E2E2836F5C62575760626060605C713FE2E27B5B586059
                4E585762604D605C83E27167535153B6C6B55959A3C6BB5C6C416F514EAEC0CA
                CAB35ABACACABB5D65416CAEABC4CACACABFC1CACACABC605F4169B3B9C3CACA
                CABFC1CACACABC605F426EB5FEBAFFCACABD4EB2CACABB5D66406CB0C1FEF6FC
                C8FBABAEAEC8BB5C6D41E24AFFC3FFF6FFBBB4AD4E4E595C86E2E26AAEC2C3FF
                FFBAB2AB4E535A7341E2E2E26DAEC1C4C1FBBCB9A44F7186E2E2E2E2E26B4AB3
                BDFCBEB54B7B86E2E2E2E2E2E2E2E26F6C49707074E2E2E2E2E2}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = bPreviousClick
            end
            object speZoom: TcxSpinEdit
              Left = 51
              Top = 4
              Anchors = [akLeft, akBottom]
              Properties.MaxValue = 150.000000000000000000
              Properties.MinValue = 75.000000000000000000
              Properties.OnEditValueChanged = speZoomPropertiesEditValueChanged
              TabOrder = 4
              Value = 100
              OnClick = speZoomPropertiesEditValueChanged
              Width = 57
            end
          end
        end
      end
    end
  end
end
