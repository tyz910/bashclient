object MainForm: TMainForm
  Left = 397
  Top = 362
  Width = 534
  Height = 378
  Caption = 'bClient'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TestStatusBar: TStatusBar
    Left = 0
    Top = 325
    Width = 526
    Height = 19
    Panels = <>
  end
  object MainPageControl: TPageControl
    Left = 0
    Top = 0
    Width = 526
    Height = 325
    ActivePage = TestTabSheet
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 1
    object BashTabSheet: TTabSheet
      Caption = 'Bash'
      OnEnter = BashTabSheetEnter
      object BashNavBar: TdxNavBar
        Left = 0
        Top = 0
        Width = 518
        Height = 294
        Align = alClient
        ActiveGroupIndex = 0
        DefaultStyles.GroupHeader.BackColor = clBtnFace
        DefaultStyles.GroupHeader.BackColor2 = clBtnFace
        DefaultStyles.GroupHeader.Font.Charset = DEFAULT_CHARSET
        DefaultStyles.GroupHeader.Font.Color = clBtnText
        DefaultStyles.GroupHeader.Font.Height = -11
        DefaultStyles.GroupHeader.Font.Name = 'MS Sans Serif'
        DefaultStyles.GroupHeader.Font.Style = []
        DefaultStyles.GroupHeader.HAlignment = haLeft
        DragCopyCursor = -1119
        DragCursor = -1120
        DragDropFlags = [fAllowDragLink, fAllowDropLink, fAllowDragGroup, fAllowDropGroup]
        HotTrackedGroupCursor = crDefault
        HotTrackedLinkCursor = -1118
        View = 0
        object MainBashNavBarGroup: TdxNavBarGroup
          Caption = #1043#1083#1072#1074#1085#1072#1103
          LinksUseSmallImages = True
          SelectedLinkIndex = -1
          ShowAsIconView = False
          ShowControl = True
          TopVisibleLinkIndex = 0
          UseControl = True
          UseSmallImages = True
          Visible = True
          Links = <>
        end
        object AbyssBestBashNavBarGroup: TdxNavBarGroup
          Caption = #1051#1091#1095#1096#1077#1077' '#1041#1077#1079#1076#1085#1099
          LinksUseSmallImages = True
          SelectedLinkIndex = -1
          ShowAsIconView = False
          ShowControl = True
          TopVisibleLinkIndex = 0
          UseControl = True
          UseSmallImages = True
          Visible = True
          Links = <>
        end
        object AbyssTopBashNavBarGroup: TdxNavBarGroup
          Caption = #1058#1086#1087' '#1041#1077#1079#1076#1085#1099
          LinksUseSmallImages = True
          SelectedLinkIndex = -1
          ShowAsIconView = False
          ShowControl = True
          TopVisibleLinkIndex = 0
          UseControl = True
          UseSmallImages = True
          Visible = True
          Links = <>
        end
        object AbyssBashNavBarGroup: TdxNavBarGroup
          Caption = #1041#1077#1079#1076#1085#1072
          LinksUseSmallImages = True
          SelectedLinkIndex = -1
          ShowAsIconView = False
          ShowControl = True
          TopVisibleLinkIndex = 0
          UseControl = True
          UseSmallImages = True
          Visible = True
          Links = <>
        end
        object MainBashNavBarGroupControl: TdxNavBarGroupControl
          Left = 0
          Top = 19
          Width = 518
          Height = 218
          TabOrder = 1
          GroupIndex = 0
          OriginalHeight = 41
          object MainHtmlBrowser: THTMLViewer
            Left = 0
            Top = 0
            Width = 518
            Height = 218
            TabOrder = 0
            Align = alClient
            DefBackground = clBtnHighlight
            BorderStyle = htFocused
            HistoryMaxCount = 0
            DefFontName = 'Tahoma'
            DefPreFontName = 'Courier New'
            DefFontSize = 10
            NoSelect = False
            CharSet = DEFAULT_CHARSET
            PrintMarginLeft = 2.000000000000000000
            PrintMarginRight = 2.000000000000000000
            PrintMarginTop = 2.000000000000000000
            PrintMarginBottom = 2.000000000000000000
            PrintScale = 1.000000000000000000
            OnMouseWheel = MainHtmlBrowserMouseWheel
            OnKeyPress = MainHtmlBrowserKeyPress
          end
        end
        object AbyssBestBashNavBarGroupControl: TdxNavBarGroupControl
          Left = 0
          Top = 237
          Width = 518
          Height = 19
          TabOrder = 3
          GroupIndex = 1
          OriginalHeight = 41
        end
        object AbyssTopBashNavBarGroupControl: TdxNavBarGroupControl
          Left = 0
          Top = 256
          Width = 518
          Height = 19
          TabOrder = 4
          GroupIndex = 2
          OriginalHeight = 41
        end
        object AbyssBashNavBarGroupControl: TdxNavBarGroupControl
          Left = 0
          Top = 275
          Width = 518
          Height = 19
          TabOrder = 2
          GroupIndex = 3
          OriginalHeight = 41
        end
      end
    end
    object IThappensTabSheet: TTabSheet
      Caption = 'IT happens'
      ImageIndex = 1
    end
    object OptionsTabSheet: TTabSheet
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      ImageIndex = 2
    end
    object AboutTabSheet: TTabSheet
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      ImageIndex = 3
    end
    object TestTabSheet: TTabSheet
      Caption = 'TestTab'
      ImageIndex = 4
      object lbl1: TLabel
        Left = 0
        Top = 0
        Width = 518
        Height = 26
        Align = alTop
        AutoSize = False
        Caption = 
          #1044#1083#1103' '#1088#1072#1079#1084#1077#1097#1077#1085#1080#1103' '#1074#1089#1087#1086#1084#1086#1075#1072#1090#1077#1083#1100#1085#1099#1093' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1086#1074' '#1080' '#1090#1077#1089#1090#1086#1074'. '#1042' '#1088#1077#1083#1080#1079' '#1074#1077#1088 +
          #1089#1080#1080' '#1091#1073#1088#1072#1090#1100'.'
        WordWrap = True
      end
      object TestPageControl: TPageControl
        Left = 0
        Top = 26
        Width = 518
        Height = 268
        ActivePage = LogTabSheet
        Align = alClient
        TabOrder = 0
        object LogTabSheet: TTabSheet
          Caption = 'Log'
          DesignSize = (
            510
            240)
          object LogListBox: TListBox
            Left = 0
            Top = 0
            Width = 510
            Height = 214
            Anchors = [akLeft, akTop, akRight, akBottom]
            ItemHeight = 13
            TabOrder = 0
            OnKeyPress = LogListBoxKeyPress
          end
          object ConsoleInputEdit: TEdit
            Left = 0
            Top = 217
            Width = 510
            Height = 21
            Anchors = [akLeft, akRight, akBottom]
            TabOrder = 1
          end
        end
        object OtherTabSheet: TTabSheet
          Caption = 'Other'
          ImageIndex = 1
          DesignSize = (
            510
            240)
          object btn1: TButton
            Left = 6
            Top = 4
            Width = 75
            Height = 25
            Caption = 'btn1'
            TabOrder = 0
            OnClick = btn1Click
          end
          object edt1: TEdit
            Left = 88
            Top = 8
            Width = 201
            Height = 21
            TabOrder = 1
            Text = 'http://bash.org.ru/'
          end
          object WebTabControl: TTabControl
            Left = 0
            Top = 32
            Width = 510
            Height = 208
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 2
            object wb1: TWebBrowser
              Left = 4
              Top = 6
              Width = 502
              Height = 198
              Align = alClient
              TabOrder = 0
              ControlData = {
                4C000000E2330000771400000000000000000000000000000000000000000000
                000000004C000000000000000000000001000000E0D057007335CF11AE690800
                2B2E126208000000000000004C0000000114020000000000C000000000000046
                8000000000000000000000000000000000000000000000000000000000000000
                00000000000000000100000000000000000000000000000000000000}
            end
          end
        end
        object MemoTabSheet: TTabSheet
          Caption = 'Memo'
          ImageIndex = 2
          object Memo1: TMemo
            Left = 0
            Top = 0
            Width = 510
            Height = 240
            Align = alClient
            Lines.Strings = (
              
                '<div>&gt; xxx: '#1085#1072#1076#1086' '#1076#1086#1073#1072#1074#1080#1090#1100' '#1074#1086' '#1074#1089#1077' '#1103#1079#1099#1082#1080' '#1076#1080#1088#1077#1082#1090#1080#1074#1091' #please<br>&' +
                'gt; xxx: '#1090#1080#1087#1072' #please '
              
                'mysql_query("SET CHARACTER SET '#39'normal'#39';");<br><br>'#1052#1072#1083#1086' '#1082#1090#1086' '#1079#1085#1072#1077 +
                #1090', '#1085#1086' '#1077#1089#1090#1100' '#1090#1072#1082#1086#1081' '#1103#1079#1099#1082'. '
              
                #1053#1072#1079#1099#1074#1072#1077#1090#1089#1103' INTERCAL.<br>'#1057#1086#1079#1076#1072#1074#1072#1083#1089#1103' '#1082#1072#1082' '#1085#1072#1089#1084#1077#1096#1082#1072' '#1085#1072#1076' '#1085#1077#1073#1077#1079#1099#1079#1074#1077#1089#1090#1085 +
                #1099#1084#1080' FORTRAN '#1080' '
              
                'COBOL. '#1056#1091#1082#1086#1074#1086#1076#1089#1090#1074#1086' '#1082' '#1103#1079#1099#1082#1091' '#1089#1086#1076#1077#1088#1078#1072#1083#1086' '#1074' '#1089#1077#1073#1077' '#1088#1072#1079#1076#1077#1083' '#171#1052#1080#1085#1076#1072#1083#1080#1085#1072#187'. ' +
                #1050#1072#1082' '#1087#1086#1103#1089#1085#1103#1083#1086#1089#1100' '#1074' '
              
                #1089#1089#1099#1083#1082#1077' '#1082' '#1088#1072#1079#1076#1077#1083#1091', '#1074#1089#1077' '#1084#1072#1085#1091#1072#1083#1099' '#1089#1086#1076#1077#1088#1078#1072#1090' '#1088#1072#1079#1076#1077#1083' '#171#1055#1088#1080#1083#1086#1078#1077#1085#1080#1103#187' ('#1087#1086'-'#1072 +
                #1085#1075#1083#1080#1081#1089#1082#1080' '#171#1072#1087#1087#1077#1085#1076#1080#1082#1089#187'), '
              
                #1087#1086#1101#1090#1086#1084#1091' '#1089#1086#1079#1076#1072#1090#1077#1083#1080' '#1087#1088#1080#1085#1103#1083#1080' '#1088#1077#1096#1077#1085#1080#1077' '#1074#1082#1083#1102#1095#1080#1090#1100' '#1074' '#1089#1074#1086#1102' '#1076#1086#1082#1091#1084#1077#1085#1090#1072#1094#1080#1102' '#1082 +
                #1072#1082#1091#1102'-'#1085#1080#1073#1091#1076#1100' '#1076#1088#1091#1075#1091#1102' '
              
                #1091#1076#1072#1083#1103#1077#1084#1091#1102' '#1095#1072#1089#1090#1100' '#1095#1077#1083#1086#1074#1077#1095#1077#1089#1082#1086#1075#1086' '#1090#1077#1083#1072' '#8211' '#1089#1082#1072#1078#1077#1084', '#1084#1080#1085#1076#1072#1083#1080#1085#1099'.<br><br>'#1042 +
                ' '#1103#1079#1099#1082#1077' '#1080#1089#1087#1086#1083#1100#1079#1091#1102#1090#1089#1103' '
              
                #1084#1086#1076#1080#1092#1080#1082#1072#1090#1086#1088#1099' '#1090#1080#1087#1072' '#171#1055#1054#1046#1040#1051#1059#1049#1057#1058#1040#187'. '#1045#1089#1083#1080' '#1074' '#1087#1088#1086#1075#1088#1072#1084#1084#1077' '#1086#1085' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1090#1089#1103 +
                ' '#1085#1077' '#1076#1086#1089#1090#1072#1090#1086#1095#1085#1086' '
              
                #1095#1072#1089#1090#1086', '#1086#1085#1072' '#1085#1077' '#1087#1088#1080#1085#1080#1084#1072#1077#1090#1089#1103' '#1082#1086#1084#1087#1080#1083#1103#1090#1086#1088#1086#1084' '#1082#1072#1082' '#171#1085#1077#1076#1086#1089#1090#1072#1090#1086#1095#1085#1086' '#1074#1077#1078#1083#1080#1074#1072 +
                #1103#187'. '#1045#1089#1083#1080' '#1078#1077' '#1085#1072#1086#1073#1086#1088#1086#1090' '#1086#1085' '
              
                #1087#1086#1103#1074#1083#1103#1077#1090#1089#1103' '#1089#1083#1080#1096#1082#1086#1084' '#1095#1072#1089#1090#1086', '#1082#1086#1084#1087#1080#1083#1103#1090#1086#1088' '#1086#1090#1074#1077#1088#1075#1072#1077#1090' '#1077#1105' '#1082#1072#1082' '#171#1095#1077#1088#1077#1089#1095#1091#1088' ' +
                #1074#1077#1078#1083#1080#1074#1091#1102#187'. '#1053#1086' '#1085#1077#1089#1084#1086#1090#1088#1103' '
              
                #1085#1072' '#1085#1072#1083#1080#1095#1080#1077' '#1086#1094#1077#1085#1082#1080' '#1074#1077#1078#1083#1080#1074#1086#1089#1090#1080', '#1101#1090#1072' '#1086#1089#1086#1073#1077#1085#1085#1086#1089#1090#1100' '#1085#1077' '#1073#1099#1083#1072' '#1085#1080#1075#1076#1077' '#1076#1086#1082#1091 +
                #1084#1077#1085#1090#1080#1088#1086#1074#1072#1085#1072'. :))</div>')
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object ts1: TTabSheet
          Caption = 'ts1'
          ImageIndex = 3
          object htmlvwr1: THTMLViewer
            Left = 0
            Top = 0
            Width = 510
            Height = 240
            TabOrder = 0
            Align = alClient
            DefBackground = clBtnHighlight
            BorderStyle = htFocused
            HistoryMaxCount = 0
            DefFontName = 'Tahoma'
            DefPreFontName = 'Courier New'
            DefFontSize = 10
            NoSelect = False
            CharSet = DEFAULT_CHARSET
            PrintMarginLeft = 2.000000000000000000
            PrintMarginRight = 2.000000000000000000
            PrintMarginTop = 2.000000000000000000
            PrintMarginBottom = 2.000000000000000000
            PrintScale = 1.000000000000000000
          end
        end
      end
    end
  end
  object AntiFreeze: TIdAntiFreeze
    Left = 604
    Top = 483
  end
  object IdHTTP1: TIdHTTP
    MaxLineAction = maException
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 628
    Top = 483
  end
end
