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
  KeyPreview = True
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
    ActivePage = BashTabSheet
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
        object TestMemoMainTabSheet: TTabSheet
          Caption = 'TestMemoMainTabSheet'
          ImageIndex = 4
          object TestMemo: TMemo
            Left = 0
            Top = 0
            Width = 510
            Height = 240
            Align = alClient
            Lines.Strings = (
              '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">'
              '<html>'
              '<head>'
              #9'<title>bash.org.ru - '#1062#1080#1090#1072#1090#1085#1080#1082' '#1056#1091#1085#1077#1090#1072'</title>'
              
                #9'<link rel="shortcut icon" href="http://s.bash.org.ru/favicon.ic' +
                'o" type="image/vnd.microsoft.icon">'
              
                #9'<link rel="stylesheet" type="text/css" media="screen" href="htt' +
                'p://s.bash.org.ru/screen.css">'
              
                #9'<link rel="stylesheet" type="text/css" media="handheld" href="h' +
                'ttp://s.bash.org.ru/mobile.css">'
              
                #9'<link rel="alternate" title="Bash.org.ru RSS" href="http://bash' +
                '.org.ru/rss/" type="application/rss+xml">'
              
                #9'<meta http-equiv="Content-Type" content="text/html; charset=win' +
                'dows-1251">'
              
                #9'<script src="http://s.bash.org.ru/mtools.js" language="JavaScri' +
                'pt" type="text/javascript"></script> '
              ''
              '</head>'
              '<body style="margin: 0px;">'
              
                '<div style="width: auto; margin: 0px; padding: 0px 0px 0px 30px;' +
                ' background-color: #eee; font-size: 8pt;"><b>[bash.org.ru]</b> [' +
                '<a href="http://ithappens.ru">IT Happens</a>]</div>'
              '<div id="page">'
              
                #9'<div class="header"><img src="http://s.bash.org.ru/logo.gif" wi' +
                'dth="300" height="40" alt="bash.org.ru" />bash.org.ru '#8212' '#1062#1080#1090#1072#1090#1085#1080#1082 +
                ' '#1056#1091#1085#1077#1090#1072'</div>'
              #9'<div class="menu">'
              #9#9'<div style="float: left; width: 500px;">'
              
                #9#9#9#1094#1080#1090#1072#1090#1099': <b>['#1087#1086#1089#1083#1077#1076#1085#1080#1077']</b> [<a href="/random">'#1089#1083#1091#1095#1072#1081#1085#1099#1077'</a>] ' +
                '[<a href="/best">'#1083#1091#1095#1096#1080#1077'</a>] [<a href="/byrating">'#1087#1086' '#1088#1077#1081#1090#1080#1085#1075#1091'</a' +
                '>] [<a href="/faq">FAQ</a>] [<a href="/rss">RSS</a>] <br>'#1073#1077#1079#1076#1085#1072':' +
                ' [<a href="/abyss">'#1041#1077#1079#1076#1085#1072'</a>] [<a href="/abysstop">'#1090#1086#1087' '#1041#1077#1079#1076#1085#1099'</' +
                'a>] [<a href="/abyssbest">'#1083#1091#1095#1096#1077#1077' '#1041#1077#1079#1076#1085#1099'</a>] [<a href="/add">'#1076#1086#1073 +
                #1072#1074#1080#1090#1100'</a>] <br>'#1095#1090#1086'-'#1090#1086': [<a href="/comics">'#1082#1086#1084#1080#1082#1089'</a>] [<a href="' +
                'http://maillist.ru/81859/">'#1088#1072#1089#1089#1099#1083#1082#1072'</a>] [<a href="/idea">'#1076#1083#1103' '#1084#1086 +
                #1073#1080#1083#1100#1085#1080#1082#1072'</a>] [<a href="/webmaster">'#1074#1077#1073#1084#1072#1089#1090#1077#1088#1091'</a>] '
              #9#9'</div>'
              ''
              #9#9#9#9'<div style="font-size: 11px; vertical-align: top;">'
              #9#9#9#1074#1074#1077#1076#1080#1090#1077' '#1090#1077#1082#1089#1090' '#1080#1083#1080' '#1085#1086#1084#1077#1088' '#1094#1080#1090#1072#1090#1099':'
              
                #9#9#9'<form action="/"><input type="text" name="text" value="" styl' +
                'e="width: 170px; float: left;">'
              
                #9#9#9'<input type="submit" value="'#1053#1072#1081#1090#1080'" style="float: right;"></fo' +
                'rm>'
              #9#9'</div>'
              #9#9'<br style="clear: both;">'#9'</div>'
              #9#9'<div id="bar">'
              #9#9#9#9#9'<div style="float: right; display: inline;">'
              
                #9#9#9#9'<script language='#39'JavaScript'#39' type='#39'text/javascript'#39' src='#39'ht' +
                'tp://lol.bash.org.ru/b/adx.js'#39'></script>'
              ''
              
                #9#9#9#9'<iframe src="http://lol.bash.org.ru/_ad.php?zone=zone:1" all' +
                'owtransparency="true" style="background-color:#fff;" width="240"' +
                ' height="180" marginwidth="0" marginheight="0" scrolling="no" fr' +
                'ameborder="0"><a href='#39'http://lol.bash.org.ru/b/adclick.php?n=a8' +
                '222a36'#39' target='#39'_blank'#39'><img src='#39'http://lol.bash.org.ru/b/advie' +
                'w.php?what=zone:1&amp;n=a8222a36'#39' border='#39'0'#39' alt='#39#39'></a></iframe' +
                '>'
              #9#9#9'</div>'
              #9#9
              #9#9'<div class="news stats c">'
              
                #9#9#9#1055#1086#1089#1083#1077#1076#1085#1080#1077' '#1085#1086#1074#1086#1089#1090#1080': <b>23 '#1103#1085#1074#1072#1088#1103' 2009</b><p>'#1057#1072#1081#1090#1091' '#1087#1103#1090#1100' '#1083#1077#1090'. '#1057#1087 +
                #1072#1089#1080#1073#1086' '#1079#1072' '#1090#1086', '#1095#1090#1086' '#1073#1099#1083#1080' '#1089' '#1085#1072#1084#1080'. '#1053#1072#1076#1077#1077#1084#1089#1103', '#1095#1090#1086' '#1090#1072#1082' '#1073#1091#1076#1077#1090' '#1080' '#1074#1087#1088#1077#1076#1100'.<' +
                '/p><p><hr></p><p>'#1053#1072#1084' '#1080#1085#1090#1077#1088#1077#1089#1085#1086' '#1074#1072#1096#1077' '#1084#1085#1077#1085#1080#1077' '#1086' '#1082#1072#1095#1077#1089#1090#1074#1077' '#1094#1080#1090#1072#1090' '#1085#1072' '#1075 +
                #1083#1072#1074#1085#1086#1081' '#1079#1072' '#1076#1077#1082#1072#1073#1088#1100'/'#1103#1085#1074#1072#1088#1100'. <a href="http://community.livejournal.' +
                'com/russian_bashorg/258443.html">'#1045#1089#1083#1080' '#1074#1072#1084' '#1077#1089#1090#1100' '#1095#1090#1086' '#1089#1082#1072#1079#1072#1090#1100' - '#1089#1102#1076 +
                #1072'!</a></p>'
              #9#9#9'<hr>'
              
                #9#9#9'<a href="http://community.livejournal.com/russian_bashorg/">L' +
                'J-'#1089#1086#1086#1073#1097#1077#1089#1090#1074#1086'</a>'
              ''
              #9#9'</div>'
              #9'</div>'
              #9#9'<div class="news stats b">'
              #9#9'<table width="100%">'
              #9#9#9'<tr><td align="center"><b>'#1059#1090#1074#1077#1088#1078#1076#1077#1085#1086':</b> 20308</td>'
              #9#9#9'<td align="center"><b>'#1042' '#1088#1072#1089#1089#1084#1086#1090#1088#1077#1085#1080#1080':</b> 1519</td>'
              ''
              #9#9#9'<td align="center"><b>'#1059#1090#1074#1077#1088#1078#1076#1077#1085#1086' '#1089#1077#1075#1086#1076#1085#1103':</b> 6</td></tr>'
              #9#9'</table>'
              #9'</div>'#9'<div id="quotes">'
              
                #9#9'<br style="margin-top: 20px;">'#9#9'<div class="pager"><span class' +
                '="first">'#1057#1090#1088#1072#1085#1080#1094#1099':</span><span>407</span><a href="/index/406">40' +
                '6</a><a href="/index/405">405</a><a href="/index/404">404</a><sp' +
                'an>'#8230'</span><a href="/index/1">1</a><a href="/index/406">&gt;&gt;' +
                '</a></div>'
              ''
              
                #9#9'<br style="clear: both;"/><div style="font-size:smaller;"><a h' +
                'ref="/hidebad">'#1089#1087#1088#1103#1090#1072#1090#1100' '#1094#1080#1090#1072#1090#1099' '#1089' '#1086#1090#1088#1080#1094#1072#1090#1077#1083#1100#1085#1099#1084' '#1088#1077#1081#1090#1080#1085#1075#1086#1084'</a></di' +
                'v>'#9#9'<br style="clear: both;" />'
              #9#9#9#9#9#9' '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402366">402366</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402366/rulez" onclick="v(402366, 0, 0); ' +
                'return false;">+</a> <span id="v402366"> ... </span> <a href="/q' +
                'uote/402366/sux" onclick="v(402366, 1, 0); return false;">&minus' +
                ';</a> ]'
              
                #9#9#9'<a href="/quote/402366/bayan" onclick="v(402366, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-02-01 '#1074' 09:44'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>Inna:<br>'#1052#1085#1077' '#1085#1086#1095#1100#1102' '#1048#1088#1072' '#1089#1087#1072#1090#1100' '#1085#1077' '#1076#1072#1074#1072#1083#1072'! =)<br>Alex:<br>'#1055#1088 +
                #1080#1074#1099#1082#1072#1081', '#1103' '#1090#1077#1073#1077' '#1090#1086#1078#1077' '#1085#1077' '#1073#1091#1076#1091' ;)<br>Inna:<br>'#1048#1085#1090#1077#1088#1077#1089#1085#1086', '#1101#1090#1086' '#1090#1072#1082#1078#1077' ' +
                #1073#1091#1076#1077#1090' '#1074#1099#1075#1083#1103#1076#1077#1090#1100', '#1082#1072#1082' &quot;'#1048#1085#1085#1072'! '#1045#1089#1090#1100' '#1093#1086#1095#1091'!&quot; ...? =)</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402365">402365</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402365/rulez" onclick="v(402365, 0, 0); ' +
                'return false;">+</a> <span id="v402365">1091</span> <a href="/qu' +
                'ote/402365/sux" onclick="v(402365, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402365/bayan" onclick="v(402365, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-02-01 '#1074' 09:13'
              #9#9#9#9#9'</div>'
              ''
              
                #9#9'<div>'#1040#1083#1105#1085#1072': '#1073#1083#1080#1085', '#1076#1080#1090#1103' '#1074#1090#1086#1088#1086#1081' '#1095#1072#1089' '#1079#1072#1076#1091#1084#1095#1080#1074#1086' '#1078#1091#1105#1090' '#1089#1074#1086#1080' '#1085#1086#1075#1080' '#1080' '#1089 +
                #1087#1072#1090#1100' '#1085#1080' '#1088#1072#1079#1091' '#1085#1077' '#1089#1086#1073#1080#1088#1072#1077#1090#1089#1103'...<br>'#1043#1088#1072#1092' de Melville: '#1087#1086#1083#1077#1081' '#1085#1086#1075#1080' '#1089#1085 +
                #1086#1090#1074#1086#1088#1085#1099#1084'</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402364">402364</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402364/rulez" onclick="v(402364, 0, 0); ' +
                'return false;">+</a> <span id="v402364">1597</span> <a href="/qu' +
                'ote/402364/sux" onclick="v(402364, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402364/bayan" onclick="v(402364, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-02-01 '#1074' 09:11'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>'#1054#1085#1072' - '#1061#1086#1095#1091' '#1087#1103#1090#1085#1080#1094#1091'<br>'#1054#1085' - '#1040' '#1103' '#1093#1086#1095#1091' '#1074#1077#1095#1077#1088' '#1087#1103#1090#1085#1080#1094#1099', '#1086#1090#1087#1091#1089#1082 +
                ' '#1085#1072' '#1052#1072#1083#1100#1076#1080#1074#1072#1093', '#1079#1072#1084#1086#1082' '#1074' '#1048#1089#1087#1072#1085#1080#1080', '#1084#1080#1089#1089' '#1042#1089#1077#1083#1077#1085#1085#1091#1102'...<br>'#1054#1085#1072' - '#1079#1072#1095#1077#1084 +
                ' '#1090#1077#1073#1077' '#1084#1080#1089#1089' '#1042#1089#1077#1083#1077#1085#1085#1072#1103'? '#1069#1090#1086' '#1078#1077' '#1078#1077#1085#1089#1082#1080#1081' '#1090#1080#1090#1091#1083'! %)</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402363">402363</a>'
              ''
              
                #9#9#9#9#9#9'[ <a href="/quote/402363/rulez" onclick="v(402363, 0, 0); ' +
                'return false;">+</a> <span id="v402363">1924</span> <a href="/qu' +
                'ote/402363/sux" onclick="v(402363, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402363/bayan" onclick="v(402363, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-02-01 '#1074' 09:11'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>'#1086#1073#1089#1091#1078#1076#1077#1085#1080#1077' '#1076#1074#1076' '#1087#1083#1077#1077#1088#1072':<br>- '#1053#1077#1091#1078#1077#1083#1080' '#1082#1090#1086'-'#1090#1086' '#1077#1097#1077' '#1089#1090#1072#1074#1080#1090' '#1079#1072#1097 +
                #1080#1090#1091' '#1086#1090' '#1076#1077#1090#1077#1081'?!<br>- '#1059' '#1084#1077#1085#1103' '#1087#1083#1077#1084#1103#1085#1085#1080#1082' 8 '#1083#1077#1090' '#1087#1086#1089#1090#1072#1074#1080#1083' '#1079#1072#1097#1080#1090#1091', '#1095#1090#1086#1073 +
                ' '#1088#1086#1076#1080#1090#1077#1083#1080' '#1085#1077' '#1084#1077#1096#1072#1083#1080' '#1084#1091#1083#1100#1090#1099' '#1089#1084#1086#1090#1088#1077#1090#1100'.</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402362">402362</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402362/rulez" onclick="v(402362, 0, 0); ' +
                'return false;">+</a> <span id="v402362">1586</span> <a href="/qu' +
                'ote/402362/sux" onclick="v(402362, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402362/bayan" onclick="v(402362, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-02-01 '#1074' 08:46'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>xxx: '#1091' '#1090#1077#1073#1103' '#1074' '#1072#1089#1100#1082#1077' '#1075#1088#1086#1084#1082#1072#1103' '#1089#1074#1103#1079#1100' '#1077#1089#1090#1100'?<br>yyy: '#1050#1054#1053#1045#1063#1053#1054'.<' +
                '/div>'
              #9'</div>'#9#9#9'<hr class="iq"> '
              
                '<div class="q"><div><script language='#39'JavaScript'#39' type='#39'text/jav' +
                'ascript'#39' src='#39'http://lol.bash.org.ru/b/adx.js'#39'></script>'
              '<script language='#39'JavaScript'#39' type='#39'text/javascript'#39'>'
              '<!--'
              '   if (!document.phpAds_used) document.phpAds_used = '#39','#39';'
              
                '   phpAds_random = new String (Math.random()); phpAds_random = p' +
                'hpAds_random.substring(2,11);'
              '   '
              
                '   document.write ("<" + "script language='#39'JavaScript'#39' type='#39'tex' +
                't/javascript'#39' src='#39'");'
              
                '   document.write ("http://lol.bash.org.ru/b/adjs.php?n=" + phpA' +
                'ds_random);'
              '   document.write ("&amp;what=zone:2");'
              '   document.write ("&amp;exclude=" + document.phpAds_used);'
              '   if (document.referrer)'
              
                '      document.write ("&amp;referer=" + escape(document.referrer' +
                '));'
              '   document.write ("'#39'><" + "/script>");'
              '//-->'
              
                '</script><noscript><a href='#39'http://lol.bash.org.ru/b/adclick.php' +
                '?n='#39' target='#39'_blank'#39'><img src='#39'http://lol.bash.org.ru/b/adview.p' +
                'hp?what=zone:2&amp;n='#39' border='#39'0'#39' alt='#39#39'></a></noscript></div></' +
                'div><div class="q"><div style="text-align: center; font-size: 10' +
                'pt;">'#1053#1072' '#1089#1072#1081#1090#1077' <a href="http://www.platforma2009.ru/">'#1055#1083#1072#1090#1092#1086#1088#1084#1072' O' +
                'nline</a> '#1089#1090#1072#1083#1080' '#1076#1086#1089#1090#1091#1087#1085#1099' '#1073#1086#1083#1077#1077' '#1096#1077#1089#1090#1080#1076#1077#1089#1103#1090#1080' '#1090#1077#1093#1085#1080#1095#1077#1089#1082#1080#1093' '#1076#1086#1082#1083#1072#1076#1086#1074' ' +
                #1087#1086' '#1087#1088#1086#1076#1091#1082#1090#1072#1084' Microsoft, '#1072' '#1090#1072#1082#1078#1077' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1099' '#1082' '#1085#1080#1084' (' +
                #1087#1088#1077#1079#1077#1085#1090#1072#1094#1080#1080', '#1087#1088#1080#1084#1077#1088#1099' '#1082#1086#1076#1072' '#1080' '#1090#1072#1082' '#1076#1072#1083#1077#1077'). <a href="http://www.plat' +
                'forma2009.ru/">'#1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1091#1081#1090#1077#1089#1100'</a> '#1080' '#1089#1090#1072#1085#1100#1090#1077' '#1086#1076#1085#1080#1084' '#1080#1079' '#1091#1095#1072#1089#1090#1085#1080#1082 +
                #1086#1074' '#1055#1083#1072#1090#1092#1086#1088#1084#1099' Online!</div></div> '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402361">402361</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402361/rulez" onclick="v(402361, 0, 0); ' +
                'return false;">+</a> <span id="v402361">1158</span> <a href="/qu' +
                'ote/402361/sux" onclick="v(402361, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402361/bayan" onclick="v(402361, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-02-01 '#1074' 08:13'
              #9#9#9#9#9'</div>'
              ''
              
                #9#9'<div>lexUS:<br>'#1074#1082#1083#1102#1095#1080' '#1053#1058#1042' &quot;'#1050' '#1073#1072#1088#1100#1077#1088#1091'&quot;<br><br>lexUS:<' +
                'br>'#1055#1086#1083#1082#1086#1074#1085#1080#1082' '#1052#1042#1044': &quot;'#1042#1099' '#1075#1086#1074#1086#1088#1080#1090#1077', '#1095#1090#1086' 98% - '#1083#1102#1076#1077#1081' '#1085#1086#1088#1084#1072#1083#1100#1085#1099#1077'.' +
                ' '#1058#1072#1082' '#1076#1072#1074#1072#1081#1090#1077' '#1087#1086#1075#1086#1074#1086#1088#1080#1084' '#1086#1073' '#1086#1089#1090#1072#1074#1096#1080#1093#1089#1103' 10%&quot;.<br><br>lexUS:<br' +
                '>'#1059' '#1085#1080#1093' '#1090#1072#1084' '#1095#1090#1086', '#1090#1072#1073#1083#1080#1094#1072' '#1091#1084#1085#1086#1078#1077#1085#1080#1103' '#1080' '#1087#1086#1085#1103#1090#1080#1103' '#1086' '#1076#1088#1086#1073#1103#1093' '#1090#1086#1078#1077' '#1089#1074#1086#1080', ' +
                #1074#1085#1091#1090#1088#1077#1085#1085#1080#1077'?</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              ''
              #9#9#9'<a href="/quote/402360">402360</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402360/rulez" onclick="v(402360, 0, 0); ' +
                'return false;">+</a> <span id="v402360">2001</span> <a href="/qu' +
                'ote/402360/sux" onclick="v(402360, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402360/bayan" onclick="v(402360, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-31 '#1074' 20:59'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>gr00sh '#1089' '#1078#1078':<br>&quot;....'#1086#1090#1093#1074#1072#1090#1080#1083#1072' '#1089#1077#1076#1085#1103' '#1086#1090' '#1082#1072#1082#1086#1075#1086'-'#1090#1086' '#1087#1086 +
                #1083#1100#1089#1082#1086#1075#1086' '#1076#1077#1076#1091#1096#1082#1080' '#1085#1072' '#1091#1083#1080#1094#1077' '#1082#1086#1084#1087#1083#1080#1084#1077#1085#1090'.<br>'#1094#1080#1090#1080#1088#1091#1102':<br>&quot; '#1091' '#1087#1072#1085 +
                #1080' '#1085#1086#1078#1082#1080', '#1082#1072#1082' '#1091' '#1089#1080#1088#1077#1085#1099', '#1083#1080#1094#1086' '#1082#1072#1082' '#1091' '#1083#1103#1083#1080'.., '#1085#1091' '#1080' '#1076#1099#1096#1072#1090#1100' - '#1091#1093' '#1076#1099#1096#1072#1090 +
                #1100' '#1074#1072#1084' '#1077#1089#1090#1100' '#1095#1077#1084'&quot;<br>'#1089#1080#1089#1100#1082#1080' '#1085#1072#1096#1077' '#1074#1089#1077', '#1090#1086#1074#1072#1088#1080#1097#1080'!&quot;</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402359">402359</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402359/rulez" onclick="v(402359, 0, 0); ' +
                'return false;">+</a> <span id="v402359">2412</span> <a href="/qu' +
                'ote/402359/sux" onclick="v(402359, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402359/bayan" onclick="v(402359, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-31 '#1074' 10:11'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>&lt;Snoo'#1088'&gt; '#1082#1086#1084#1091'-'#1090#1086' '#1085#1088#1072#1074#1080#1090#1089#1103' '#1089#1080#1076#1077#1090#1100' '#1086#1082#1086#1083#1086' '#1082#1086#1084#1087#1072', '#1080#1075#1088#1072#1090#1100 +
                ' '#1074' '#1082#1072#1082#1086#1077'-'#1090#1086' '#1079#1072#1076#1088#1086#1090#1089#1090#1074#1086' '#1080' '#1087#1088#1077#1082#1088#1072#1089#1085#1086' '#1087#1088#1086#1074#1086#1076#1080#1090#1100' '#1074#1088#1077#1084#1103', '#1085#1072#1087#1080#1074#1072#1103#1089#1100' '#1089#1086 +
                ' '#1089#1074#1086#1080#1084#1080' '#1074#1080#1088#1090#1091#1072#1083#1100#1085#1099#1084#1080' '#1076#1088#1091#1079#1100#1103#1084#1080', '#1093#1074#1072#1089#1090#1072#1103' '#1087#1077#1088#1077#1076' '#1085#1080#1084#1080' '#1091#1088#1086#1074#1085#1077#1084' '#1087#1077#1088#1089#1086#1085 +
                #1072#1078#1072' )<br>&lt;Snoo'#1088'&gt; '#1075#1086#1088#1072#1079#1076#1086' '#1074#1077#1089#1077#1083#1077#1077' '#1074' '#1093#1086#1088#1086#1096#1077#1084' '#1087#1072#1073#1077' '#1089' '#1076#1088#1091#1079#1100#1103#1084#1080 +
                ' '#1087#1086#1089#1080#1076#1077#1090#1100', '#1080#1084#1093#1086'.<br>&lt;Torero[wrk]&gt; Snoo'#1088' '#1080' '#1091#1078#1077' '#1090#1072#1084' '#1087#1086#1093#1074#1072#1089#1090#1072 +
                #1090#1100' '#1091#1088#1086#1074#1085#1077#1084' '#1087#1077#1088#1089#1086#1085#1072#1078#1072'?</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402358">402358</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402358/rulez" onclick="v(402358, 0, 0); ' +
                'return false;">+</a> <span id="v402358">3395</span> <a href="/qu' +
                'ote/402358/sux" onclick="v(402358, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402358/bayan" onclick="v(402358, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-31 '#1074' 09:46'
              #9#9#9#9#9'</div>'
              ''
              
                #9#9'<div>'#1050'. - '#1053#1072#1090#1072#1096#1072', '#1085#1091' '#1077#1089#1083#1080' '#1087#1077#1088#1077#1074#1077#1089#1090#1080' '#1088#1091#1089#1089#1082#1086#1077' '#1089#1083#1086#1074#1086' '#1085#1072' '#1072#1085#1075#1083#1080#1081#1089#1082#1080 +
                #1081', '#1072' '#1087#1086#1090#1086#1084' '#1087#1077#1088#1077#1074#1077#1089#1090#1080' '#1086#1073#1088#1072#1090#1085#1086', '#1090#1086' '#1085#1077' '#1092#1072#1082#1090', '#1095#1090#1086' '#1087#1086#1083#1091#1095#1080#1090#1089#1103' '#1090#1086', '#1095#1090#1086' ' +
                #1090#1099' '#1080#1084#1077#1083#1072' '#1074' '#1074#1080#1076#1091'.<br>'#1053'. - '#1053#1091' '#1076#1072', '#1101#1090#1086' '#1082#1072#1082' '#1089' '#1076#1086#1083#1083#1072#1088#1072#1084#1080'!</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402357">402357</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402357/rulez" onclick="v(402357, 0, 0); ' +
                'return false;">+</a> <span id="v402357">2007</span> <a href="/qu' +
                'ote/402357/sux" onclick="v(402357, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402357/bayan" onclick="v(402357, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-31 '#1074' 09:44'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>triklozoid:<br>'#1057#1076#1072#1077#1084' '#1101#1082#1079#1072#1084#1077#1085' '#1087#1086' '#1041#1054#1058#1040#1053#1048#1050#1045'(!). '#1054#1076#1085#1072' '#1088#1072#1089#1092#1091#1092#1099 +
                #1088#1077#1085#1085#1072#1103' '#1076#1077#1074#1072#1093#1072' '#1079#1072#1103#1074#1083#1103#1077#1090': &quot;'#1059' '#1084#1077#1085#1103' '#1096#1087#1086#1088' '#1085#1080#1082#1072#1082#1080#1093' '#1085#1077#1090', '#1073#1091#1076#1091' '#1089#1076#1072#1074 +
                #1072#1090#1100' '#1089#1074#1086#1080#1084' '#1091#1084#1086#1084'&quot;. '#1048' '#1074#1086#1090' '#1101#1090#1086' '#1095#1091#1076#1086' '#1074#1099#1090#1103#1075#1080#1074#1072#1077#1090' '#1073#1080#1083#1077#1090' '#1080' '#1089#1072#1076#1080#1090#1089#1103' ' +
                #1075#1086#1090#1086#1074#1080#1090#1100#1089#1103'. '#1055#1080#1096#1077#1090' '#1090#1072#1082' '#1089#1090#1072#1088#1072#1090#1077#1083#1100#1085#1086', '#1076#1074#1072' '#1083#1080#1089#1090#1080#1082#1072' '#1040'4 '#1080#1089#1087#1080#1089#1072#1083#1072', '#1089#1072#1076#1080 +
                #1090#1089#1103' '#1086#1090#1074#1077#1095#1072#1090#1100' '#1080' '#1074#1099#1076#1072#1077#1090' '#1089' '#1090#1072#1082#1080#1084' '#1089#1077#1088#1100#1077#1079#1085#1099#1084' '#1074#1080#1076#1086#1084': &quot;'#1055#1086#1095#1082#1080' - '#1101#1090#1086 +
                ' '#1086#1088#1075#1072#1085#1099' '#1084#1072#1083#1086#1075#1086' '#1090#1072#1079#1072'!&quot;</div>'
              #9'</div>'#9#9#9' '
              #9#9#9'<hr class="iq"> '
              
                '<div class="q"><div><center><iframe src="http://lol.bash.org.ru/' +
                '_ad.php?zone=zone:3" allowtransparency="true" style="background-' +
                'color:#f3f3f3;" width="600" height="90" marginwidth="0" marginhe' +
                'ight="0" scrolling="no" frameborder="0" name="ctf" id="ctf"></if' +
                'rame></center></div></div> '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402356">402356</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402356/rulez" onclick="v(402356, 0, 0); ' +
                'return false;">+</a> <span id="v402356"> ... </span> <a href="/q' +
                'uote/402356/sux" onclick="v(402356, 1, 0); return false;">&minus' +
                ';</a> ]'
              
                #9#9#9'<a href="/quote/402356/bayan" onclick="v(402356, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-31 '#1074' 09:44'
              #9#9#9#9#9'</div>'
              ''
              
                #9#9'<div>xxx: '#1055#1086#1089#1083#1077#1076#1085#1080#1077' '#1076#1085#1080' '#1084#1077#1089#1103#1094#1072' '#8212' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086' '#1084#1077#1085#1077#1076#1078#1077#1088#1099' '#1079#1072#1085#1080 +
                #1084#1072#1102#1090#1089#1103' '#1086#1073#1079#1074#1086#1085#1082#1086#1081' '#1076#1086#1083#1078#1085#1080#1082#1086#1074'.<br>xxx: '#1057#1077#1081#1095#1072#1089' '#1074#1089#1077' '#1088#1078#1091#1090' '#1085#1072' '#1090#1077#1084#1091' &quo' +
                't;'#1040' '#1074#1086#1090' '#1092#1088#1072#1079#1072' '#39#1076#1077#1074#1091#1096#1082#1072' '#1089' '#1087#1083#1072#1090#1077#1078#1082#1072#1084#1080' '#1091#1078#1077' '#1074#1099#1077#1093#1072#1083#1072#39' '#8212' '#1101#1090#1086' '#1086#1076#1085#1086' '#1080' '#1090#1086 +
                ' '#1078#1077' '#1095#1090#1086' '#1080' '#1085#1072#1096#1077' '#39#1052#1072#1089#1090#1077#1088' '#1091#1078#1077' '#1074#1099#1077#1093#1072#1083#39' '#1080#1083#1080' '#1085#1077#1090'?&quot;</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402355">402355</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402355/rulez" onclick="v(402355, 0, 0); ' +
                'return false;">+</a> <span id="v402355">3541</span> <a href="/qu' +
                'ote/402355/sux" onclick="v(402355, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402355/bayan" onclick="v(402355, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-31 '#1074' 09:12'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>'#1093#1093#1093': '#1052#1077#1085#1103' '#1087#1077#1088#1074#1072#1103' '#1078#1077#1085#1072' '#1087#1088#1077#1076#1091#1087#1088#1077#1078#1076#1072#1083#1072', '#1095#1090#1086#1073#1099' '#1103' '#1087#1088#1072#1074#1080#1083#1100#1085#1086' '#1087#1080 +
                #1090#1072#1083#1089#1103' '#1080' '#1079#1072#1085#1080#1084#1072#1083#1089#1103' '#1089#1087#1086#1088#1090#1086#1084', '#1072' '#1090#1086', '#1084#1086#1083', '#1088#1072#1089#1090#1086#1083#1089#1090#1077#1102' '#1080' '#1080#1079'-'#1079#1072' '#1078#1080#1074#1086#1090#1072' ' +
                #1085#1077' '#1091#1074#1080#1078#1091' '#1087#1088#1080#1095#1080#1085#1085#1086#1077' '#1084#1077#1089#1090#1086'. '#1048' '#1074#1086#1090' '#1101#1090#1086#1090' '#1076#1077#1085#1100' '#1085#1072#1089#1090#1072#1083'!!! (<br>'#1091#1091#1091': '#1053#1091 +
                ', '#1086#1089#1086#1073#1086#1075#1086' '#1078#1080#1074#1086#1090#1072' '#1103' '#1091' '#1090#1077#1073#1103' '#1085#1077' '#1079#1072#1084#1077#1090#1080#1083#1072'.<br>'#1093#1093#1093': '#1069#1058#1054' '#1045#1065#1045' '#1061#1059#1046#1045'!</di' +
                'v>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402354">402354</a>'
              ''
              
                #9#9#9#9#9#9'[ <a href="/quote/402354/rulez" onclick="v(402354, 0, 0); ' +
                'return false;">+</a> <span id="v402354">274</span> <a href="/quo' +
                'te/402354/sux" onclick="v(402354, 1, 0); return false;">&minus;<' +
                '/a> ]'
              
                #9#9#9'<a href="/quote/402354/bayan" onclick="v(402354, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-31 '#1074' 09:12'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>'#1093#1093#1093': '#1045#1097#1077' '#1103' '#1093#1086#1095#1091' '#1090#1091#1092#1083#1080', '#1090#1077#1083#1077#1092#1086#1085' '#1080' '#1085#1086#1091#1090#1073#1091#1082' )<br>'#1091#1091#1091': ... '#1084#1072 +
                #1096#1080#1085#1091' '#1080' '#1074#1080#1083#1083#1091' '#1085#1072' '#1050#1072#1085#1072#1088#1072#1093'<br>'#1093#1093#1093': '#1053#1077', '#1084#1072#1096#1080#1085#1072' '#1091' '#1084#1077#1085#1103' '#1077#1089#1090#1100', '#1072' '#1074#1080#1083#1083#1072' ' +
                #1076#1072#1083#1077#1082#1086'. '#1052#1085#1077' '#1090#1091#1076#1072' '#1077#1079#1076#1080#1090#1100' '#1073#1091#1076#1077#1090' '#1085#1077#1091#1076#1086#1073#1085#1086' '#1080' '#1085#1077#1082#1086#1075#1076#1072'<br>'#1059#1059#1059': '#1090#1086#1075#1076#1072' '#1074 +
                #1080#1083#1083#1091' '#1080' '#1083#1080#1095#1085#1099#1081' '#1089#1072#1084#1086#1083#1077#1090'<br>'#1093#1093#1093': '#1063#1090#1086#1073#1099' '#1084#1085#1077' '#1077#1097#1077' '#1080' '#1087#1080#1083#1086#1090#1099' '#1073#1080#1073#1080#1082#1072#1083#1080'?!?' +
                ' '#1053#1045#1058'!!!</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402353">402353</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402353/rulez" onclick="v(402353, 0, 0); ' +
                'return false;">+</a> <span id="v402353">1524</span> <a href="/qu' +
                'ote/402353/sux" onclick="v(402353, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402353/bayan" onclick="v(402353, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-31 '#1074' 08:46'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>'#1086#1085': '#1057#1077#1081#1095#1072#1089' '#1074#1099#1079#1099#1074#1072#1083#1086' '#1085#1072#1095#1072#1083#1100#1089#1090#1074#1086', '#1093#1074#1072#1083#1080#1083#1086' '#1079#1072' '#1087#1088#1086#1076#1077#1083#1072#1085#1085#1091#1102' '#1088#1072 +
                #1073#1086#1090#1091'.<br>'#1086#1085#1072'('#1084#1077#1095#1090#1072#1090#1077#1083#1100#1085#1086'): '#1040#1075#1072', '#1077#1097#1077' '#1073#1099' '#1074#1099#1088#1072#1079#1080#1083' '#1101#1090#1086' '#1074' '#1095#1077#1084' '#1085#1080#1073#1091#1076#1100' ' +
                #1079#1074#1077#1085#1103#1097#1077#1084', '#1093#1088#1091#1089#1090#1103#1097#1077#1084' '#1080' '#1079#1077#1083#1077#1085#1086#1084'.<br>'#1086#1085': '#1082#1072#1082' '#1085#1072#1103#1074#1091' '#1074#1080#1078#1091' - '#1079#1072#1093#1086#1076#1080#1090' '#1096 +
                #1077#1092' '#1080' '#1087#1088#1080#1085#1086#1089#1080#1090' '#1085#1072#1084' '#1082#1088#1086#1082#1086#1076#1080#1083#1072' '#1074' '#1084#1077#1090#1072#1083#1083#1080#1095#1077#1089#1082#1086#1084' '#1086#1096#1077#1081#1085#1080#1082#1077', '#1079#1072#1074#1077#1088#1085#1091#1090#1086#1075 +
                #1086' '#1074' '#1086#1073#1077#1088#1090#1086#1095#1085#1091#1102' '#1073#1091#1084#1072#1075#1091'...</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402352">402352</a>'
              ''
              
                #9#9#9#9#9#9'[ <a href="/quote/402352/rulez" onclick="v(402352, 0, 0); ' +
                'return false;">+</a> <span id="v402352">2332</span> <a href="/qu' +
                'ote/402352/sux" onclick="v(402352, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402352/bayan" onclick="v(402352, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-31 '#1074' 08:13'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>swak: <br>'#1052#1072#1089#1089#1072#1078' '#1083#1080#1094#1072' - '#1080#1085#1090#1077#1088#1077#1089#1085#1086', '#1090#1099' '#1086#1090' '#1085#1077#1075#1086' '#1082#1072#1081#1092#1091#1077#1096#1100'? '#1052 +
                #1085#1077' '#1076#1077#1083#1072#1083#1080' '#1087#1086#1083#1085#1099#1081' '#1084#1072#1089#1089#1072#1078' '#1074' '#1082#1077#1084#1077#1088#1077', '#1085#1086' '#1083#1080#1094#1086' '#1090#1086#1083#1100#1082#1086' 5 '#1084#1080#1085#1091#1090' '#1080#1079' 40 '#1087 +
                #1088#1080#1084#1077#1088#1085#1086'. '#1050#1072#1078#1077#1090#1089#1103', '#1073#1099#1083#1086' '#1086#1095#1077#1085#1100' '#1087#1088#1080#1103#1090#1085#1086'<br><br>swak: <br>'#1090#1086#1083#1100#1082#1086' '#1084#1072#1089 +
                #1089#1072#1078#1080#1089#1090' '#1073#1099#1083' '#1087#1086#1083#1085#1099#1081' '#1087#1089#1080#1093'. '#1086#1085' '#1079#1072#1082#1080#1076#1099#1074#1072#1083' '#1084#1072#1089#1089#1072#1078#1085#1099#1081' '#1089#1090#1086#1083#1080#1082' '#1094#1074#1077#1090#1072#1084#1080' '#1080',' +
                ' '#1082#1086#1075#1076#1072' '#1084#1072#1089#1089#1072#1078#1080#1088#1086#1074#1072#1083', '#1095#1091#1090#1100' '#1083#1080' '#1085#1077' '#1090#1088#1072#1093#1072#1083'. '#1086#1085' '#1082#1083#1072#1083' '#1085#1086#1075#1080' '#1089#1077#1073#1077' '#1085#1072' '#1087#1083#1077 +
                #1095#1080', '#1095#1090#1086#1073' '#1080#1093' '#1084#1072#1089#1089#1080#1088#1086#1074#1072#1090#1100' '#1080' '#1089#1090#1072#1089#1082#1080#1074#1072#1083' '#1083#1080#1092' '#1082#1091#1087#1072#1083#1100#1085#1080#1082#1072'<br><br>swak: ' +
                '<br>'#1090#1072#1082' '#1095#1090#1086' '#1086#1090' '#1085#1077#1075#1086' '#1074#1089#1077' '#1096#1072#1088#1072#1093#1072#1083#1080#1089#1100', '#1090#1086#1083#1100#1082#1086' '#1103', '#1082#1072#1082' '#1076#1091#1088#1072', '#1093#1086#1076#1080#1083#1072' '#1085 +
                #1072' '#1101#1090#1086#1090' '#1084#1072#1089#1089#1072#1078'<br><br>swak: <br>'#1087#1086#1090#1086#1084#1091', '#1095#1090#1086' '#1086#1087#1083#1072#1090#1080#1083#1072' '#1089#1088#1072#1079#1091' 10 '#1089#1077#1072 +
                #1085#1089#1086#1074' :D</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402351">402351</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402351/rulez" onclick="v(402351, 0, 0); ' +
                'return false;">+</a> <span id="v402351">3955</span> <a href="/qu' +
                'ote/402351/sux" onclick="v(402351, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402351/bayan" onclick="v(402351, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-31 '#1074' 08:12'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>&lt;jojopumpununu&gt; '#1074#1095#1077#1088#1072' '#1085#1072' '#1088#1077#1082#1086#1088#1076#1077' '#1089#1083#1099#1096#1072#1083': '#1055#1077#1088#1077#1076#1072#1102' '#1087#1088 +
                #1080#1074#1077#1090' '#1087#1072#1094#1072#1085#1072#1084' '#1080#1079' '#1082#1086#1085#1089#1077#1088#1074#1072#1090#1086#1088#1080#1080' '#1053#1086#1074#1086#1089#1080#1073#1072', '#1080' '#1087#1077#1088#1077#1095#1080#1089#1083#1103#1077#1090' '#1080#1093' '#1087#1086' '#1087#1086#1075#1086 +
                #1085#1103#1083#1072#1084'...<br>&lt;jojopumpununu&gt; '#1080#1085#1090#1077#1088#1077#1089#1085#1086', '#1074' '#1053#1086#1074#1080#1089#1080#1073#1077' '#1085#1072#1089#1090#1086#1083#1100#1082 +
                #1086' '#1089#1091#1088#1086#1074#1099#1077' '#1084#1091#1079#1099#1082#1072#1085#1090#1099' '#1080#1083#1080' '#1085#1072#1089#1090#1086#1083#1100#1082#1086' '#1080#1085#1090#1077#1083#1083#1080#1075#1077#1085#1090#1085#1099#1077' '#1075#1086#1087#1085#1080#1082#1080'?</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              ''
              #9#9#9'<a href="/quote/402350">402350</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402350/rulez" onclick="v(402350, 0, 0); ' +
                'return false;">+</a> <span id="v402350"> ... </span> <a href="/q' +
                'uote/402350/sux" onclick="v(402350, 1, 0); return false;">&minus' +
                ';</a> ]'
              
                #9#9#9'<a href="/quote/402350/bayan" onclick="v(402350, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-30 '#1074' 15:45'
              #9#9#9#9#9'</div>'
              ''
              
                #9#9'<div>xxx: lol. '#1087#1088#1080#1084#1077#1088#1085#1086' '#1087#1072#1088#1072#1083#1083#1077#1083#1100#1085#1086' '#1076#1086#1082#1072#1079#1072#1083' '#1090#1086#1083#1100#1082#1086' '#1095#1090#1086' '#1086#1076#1085#1086#1084#1091' ' +
                #1095#1077#1083#1086#1074#1077#1082#1091', '#1095#1090#1086' '#1073#1086#1083#1077#1090#1100' '#1079#1072' '#1092#1091#1090#1073#1086#1083#1100#1085#1099#1081' '#1082#1083#1091#1073' '#1073#1077#1079' '#1082#1072#1082#1080#1093'-'#1090#1086' '#1086#1073#1098#1077#1082#1090#1080#1074#1085#1099#1093 +
                ' '#1092#1072#1082#1090#1086#1088#1086#1074' - '#1101#1090#1086' '#1085#1077#1089#1091#1089#1074#1077#1090#1085#1072#1103' '#1075#1083#1091#1087#1086#1089#1090#1100', '#1072' '#1076#1088#1091#1075#1086#1084#1091' - '#1095#1090#1086' '#1073#1086#1083#1077#1090#1100' '#1085#1072#1076 +
                #1086' '#1079#1072' '#1092#1091#1090#1073#1086#1083#1100#1085#1099#1093' '#1082#1083#1091#1073' '#1073#1077#1079' '#1074#1089#1103#1082#1080#1093' '#1092#1072#1082#1090#1086#1088#1086#1074', '#1080#1073#1086' '#1101#1090#1086' '#1090#1080#1087#1072' '#1082#1072#1082' '#1083#1102#1073#1086#1074 +
                #1100'! '#1090#1072#1082', '#1090#1077#1087#1077#1088#1100' '#1084#1086#1078#1085#1086' '#1089#1087#1086#1082#1086#1081#1085#1086' '#1080' '#1087#1086#1088#1072#1073#1086#1090#1072#1090#1100'. :)</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402349">402349</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402349/rulez" onclick="v(402349, 0, 0); ' +
                'return false;">+</a> <span id="v402349">3977</span> <a href="/qu' +
                'ote/402349/sux" onclick="v(402349, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402349/bayan" onclick="v(402349, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-30 '#1074' 15:12'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>xxx: <br>'#1089#1086#1074#1077#1090'. '#1074' '#1085#1072#1095#1072#1083#1077' '#1080#1084#1077#1085' '#1076#1080#1088#1077#1082#1090#1086#1088#1080#1081' '#1083#1077#1075#1082#1086' '#1074#1086#1079#1086#1073#1085#1086#1074#1083#1103 +
                #1077#1084#1086#1075#1086' '#1082#1088#1091#1087#1085#1086#1075#1086' '#1082#1086#1085#1090#1077#1085#1090#1072' '#1089#1090#1072#1074#1100#1090#1077' '#8220'_'#8221', '#1072' '#1074' '#1085#1072#1095#1072#1083#1077' '#1080#1084#1077#1085' '#1076#1080#1088#1077#1082#1090#1086#1088#1080#1081' ' +
                #1089' '#1089#1072#1084#1099#1084' '#1094#1077#1085#1085#1099#1084' '#1089#1090#1072#1074#1100#1090#1077' '#1073#1091#1082#1074#1091' '#8220'z'#8221'. '#1079#1072#1095#1077#1084'? '#1072' '#1087#1086#1082#1072' '#1086#1085#1086' '#1073#1091#1076#1077#1090' '#1091#1076#1072#1083#1103#1090 +
                #1100' '#1090#1077#1088#1072#1073#1072#1081#1090#1099' '#1093#1077#1085#1090#1072#1103', '#1074#1099' '#1091#1089#1087#1077#1077#1090#1077' '#1086#1090#1084#1077#1085#1080#1090#1100' '#1087#1088#1086#1094#1077#1089#1089', '#1087#1088#1077#1078#1076#1077' '#1095#1077#1084' '#1086#1085#1086' ' +
                #1076#1086#1073#1077#1088#1077#1090#1089#1103' '#1076#1086' '#1087#1086#1089#1083#1077#1076#1085#1077#1081' '#1073#1091#1082#1074#1099' '#1072#1083#1092#1072#1074#1080#1090#1072'.<br><br>yyy: <br>'#1085#1072#1076#1077#1102#1089#1100', ' +
                #1101#1090#1072' '#1084#1099#1089#1083#1100' '#1074#1086#1079#1085#1080#1082#1083#1072' '#1085#1077' '#1074' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1077' '#1088#1072#1073#1086#1090#1099' '#1089' '#1085#1072#1096#1080#1084' '#1089#1077#1088#1074#1077#1088#1086#1084'?</div' +
                '>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402348">402348</a>'
              ''
              
                #9#9#9#9#9#9'[ <a href="/quote/402348/rulez" onclick="v(402348, 0, 0); ' +
                'return false;">+</a> <span id="v402348">9095</span> <a href="/qu' +
                'ote/402348/sux" onclick="v(402348, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402348/bayan" onclick="v(402348, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-30 '#1074' 10:12'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>'#1093#1093#1093':<br>'#1095#1090#1086'-'#1090#1086' '#1084#1085#1077' '#1088#1072#1089#1093#1086#1090#1077#1083#1086#1089#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100#1089#1103' '#1090#1077#1084' '#1073#1083#1077#1089#1082#1086#1084' '#1076 +
                #1083#1103' '#1075#1091#1073'<br><br>yyy:<br>'#1087#1086#1095#1077#1084#1091'? )<br><br>xxx:<br>'#1103' '#1080#1084' '#1085#1072#1088#1080#1089#1086#1074#1072#1083#1072' '#1091 +
                #1078#1077' '#1076#1072#1074#1085#1086', '#1084#1077#1089#1103#1094#1072' '#1076#1074#1072' '#1085#1072#1079#1072#1076', '#1089#1077#1088#1076#1077#1095#1082#1086' '#1085#1072' '#1084#1077#1090#1072#1083#1083#1080#1095#1077#1089#1082#1086#1081' '#1076#1074#1077#1088#1080', '#1087#1086#1082 +
                #1088#1099#1090#1086#1081' '#1082#1072#1082#1086#1081'-'#1090#1086' '#1078#1077#1083#1090#1086#1081' '#1082#1088#1072#1089#1082#1086#1081'. '#1090#1072#1082' '#1074#1086#1090'. '#1073#1083#1077#1089#1082' '#1076#1086' '#1089#1080#1093' '#1087#1086#1088' '#1078#1080#1076#1082#1080#1081',' +
                ' '#1072' '#1082#1088#1072#1089#1082#1072' '#1074' '#1088#1072#1076#1080#1091#1089#1077' '#1090#1088#1077#1093' '#1089#1072#1085#1090#1080#1084#1077#1090#1088#1086#1074' '#1086#1090' '#1089#1077#1088#1076#1077#1095#1082#1072' '#1089#1083#1077#1079#1083#1072'.</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402347">402347</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402347/rulez" onclick="v(402347, 0, 0); ' +
                'return false;">+</a> <span id="v402347">3234</span> <a href="/qu' +
                'ote/402347/sux" onclick="v(402347, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402347/bayan" onclick="v(402347, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-30 '#1074' 10:11'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>&gt; xxx: '#1085#1072#1076#1086' '#1076#1086#1073#1072#1074#1080#1090#1100' '#1074#1086' '#1074#1089#1077' '#1103#1079#1099#1082#1080' '#1076#1080#1088#1077#1082#1090#1080#1074#1091' #please<br' +
                '>&gt; xxx: '#1090#1080#1087#1072' #please mysql_query(&quot;SET CHARACTER SET &#03' +
                '9;normal&#039;;&quot;);<br><br>'#1052#1072#1083#1086' '#1082#1090#1086' '#1079#1085#1072#1077#1090', '#1085#1086' '#1077#1089#1090#1100' '#1090#1072#1082#1086#1081' '#1103#1079#1099 +
                #1082'. '#1053#1072#1079#1099#1074#1072#1077#1090#1089#1103' INTERCAL.<br>'#1057#1086#1079#1076#1072#1074#1072#1083#1089#1103' '#1082#1072#1082' '#1085#1072#1089#1084#1077#1096#1082#1072' '#1085#1072#1076' '#1085#1077#1073#1077#1079#1099#1079#1074#1077 +
                #1089#1090#1085#1099#1084#1080' FORTRAN '#1080' COBOL. '#1056#1091#1082#1086#1074#1086#1076#1089#1090#1074#1086' '#1082' '#1103#1079#1099#1082#1091' '#1089#1086#1076#1077#1088#1078#1072#1083#1086' '#1074' '#1089#1077#1073#1077' '#1088#1072#1079 +
                #1076#1077#1083' '#171#1052#1080#1085#1076#1072#1083#1080#1085#1072#187'. '#1050#1072#1082' '#1087#1086#1103#1089#1085#1103#1083#1086#1089#1100' '#1074' '#1089#1089#1099#1083#1082#1077' '#1082' '#1088#1072#1079#1076#1077#1083#1091', '#1074#1089#1077' '#1084#1072#1085#1091#1072#1083#1099' ' +
                #1089#1086#1076#1077#1088#1078#1072#1090' '#1088#1072#1079#1076#1077#1083' '#171#1055#1088#1080#1083#1086#1078#1077#1085#1080#1103#187' ('#1087#1086'-'#1072#1085#1075#1083#1080#1081#1089#1082#1080' '#171#1072#1087#1087#1077#1085#1076#1080#1082#1089#187'), '#1087#1086#1101#1090#1086#1084#1091 +
                ' '#1089#1086#1079#1076#1072#1090#1077#1083#1080' '#1087#1088#1080#1085#1103#1083#1080' '#1088#1077#1096#1077#1085#1080#1077' '#1074#1082#1083#1102#1095#1080#1090#1100' '#1074' '#1089#1074#1086#1102' '#1076#1086#1082#1091#1084#1077#1085#1090#1072#1094#1080#1102' '#1082#1072#1082#1091#1102'-'#1085#1080 +
                #1073#1091#1076#1100' '#1076#1088#1091#1075#1091#1102' '#1091#1076#1072#1083#1103#1077#1084#1091#1102' '#1095#1072#1089#1090#1100' '#1095#1077#1083#1086#1074#1077#1095#1077#1089#1082#1086#1075#1086' '#1090#1077#1083#1072' '#8211' '#1089#1082#1072#1078#1077#1084', '#1084#1080#1085#1076#1072#1083#1080 +
                #1085#1099'.<br><br>'#1042' '#1103#1079#1099#1082#1077' '#1080#1089#1087#1086#1083#1100#1079#1091#1102#1090#1089#1103' '#1084#1086#1076#1080#1092#1080#1082#1072#1090#1086#1088#1099' '#1090#1080#1087#1072' '#171#1055#1054#1046#1040#1051#1059#1049#1057#1058#1040#187'. ' +
                #1045#1089#1083#1080' '#1074' '#1087#1088#1086#1075#1088#1072#1084#1084#1077' '#1086#1085' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1090#1089#1103' '#1085#1077' '#1076#1086#1089#1090#1072#1090#1086#1095#1085#1086' '#1095#1072#1089#1090#1086', '#1086#1085#1072' '#1085#1077' '#1087#1088#1080 +
                #1085#1080#1084#1072#1077#1090#1089#1103' '#1082#1086#1084#1087#1080#1083#1103#1090#1086#1088#1086#1084' '#1082#1072#1082' '#171#1085#1077#1076#1086#1089#1090#1072#1090#1086#1095#1085#1086' '#1074#1077#1078#1083#1080#1074#1072#1103#187'. '#1045#1089#1083#1080' '#1078#1077' '#1085#1072#1086#1073#1086 +
                #1088#1086#1090' '#1086#1085' '#1087#1086#1103#1074#1083#1103#1077#1090#1089#1103' '#1089#1083#1080#1096#1082#1086#1084' '#1095#1072#1089#1090#1086', '#1082#1086#1084#1087#1080#1083#1103#1090#1086#1088' '#1086#1090#1074#1077#1088#1075#1072#1077#1090' '#1077#1105' '#1082#1072#1082' '#171#1095#1077 +
                #1088#1077#1089#1095#1091#1088' '#1074#1077#1078#1083#1080#1074#1091#1102#187'. '#1053#1086' '#1085#1077#1089#1084#1086#1090#1088#1103' '#1085#1072' '#1085#1072#1083#1080#1095#1080#1077' '#1086#1094#1077#1085#1082#1080' '#1074#1077#1078#1083#1080#1074#1086#1089#1090#1080', '#1101#1090#1072' ' +
                #1086#1089#1086#1073#1077#1085#1085#1086#1089#1090#1100' '#1085#1077' '#1073#1099#1083#1072' '#1085#1080#1075#1076#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1080#1088#1086#1074#1072#1085#1072'. :))</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402346">402346</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402346/rulez" onclick="v(402346, 0, 0); ' +
                'return false;">+</a> <span id="v402346"> ... </span> <a href="/q' +
                'uote/402346/sux" onclick="v(402346, 1, 0); return false;">&minus' +
                ';</a> ]'
              
                #9#9#9'<a href="/quote/402346/bayan" onclick="v(402346, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-30 '#1074' 09:46'
              #9#9#9#9#9'</div>'
              ''
              
                #9#9'<div>Smit: '#1059' '#1084#1077#1085#1103' '#1090#1072#1082#1072#1103' '#1087#1088#1086#1073#1083#1077#1084#1072'<br>'#1085#1072' '#1092#1086#1088#1091#1084#1077' '#1077#1089#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083 +
                #1100' smit<br>'#1054#1085' '#1076#1077#1083#1072#1077#1090' '#1089#1090#1072#1074#1082#1080' '#1085#1072' '#1084#1086#1080' '#1083#1086#1090#1099', '#1074#1099#1080#1075#1088#1099#1074#1072#1077#1090', '#1103' '#1074#1099#1089#1099#1083#1072#1102'<br' +
                '>'#1088#1077#1082#1074#1080#1079#1080#1090#1099', '#1085#1086' '#1085#1072' '#1089#1074#1103#1079#1100' '#1086#1085' '#1085#1077' '#1074#1099#1093#1086#1076#1080#1090'.</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402345">402345</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402345/rulez" onclick="v(402345, 0, 0); ' +
                'return false;">+</a> <span id="v402345">2410</span> <a href="/qu' +
                'ote/402345/sux" onclick="v(402345, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402345/bayan" onclick="v(402345, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-30 '#1074' 09:13'
              #9#9#9#9#9'</div>'
              #9#9'<div>Valrog: '#1072' '#1103' '#1093#1086#1095#1091' '#1074#1099#1091#1095#1080#1090#1100#1089#1103' '#1085#1072' '#1087#1072#1083#1072#1095#1072' '#1080' '#1092#1088#1080#1083#1072#1085#1089#1080#1090#1100'</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402344">402344</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402344/rulez" onclick="v(402344, 0, 0); ' +
                'return false;">+</a> <span id="v402344">4410</span> <a href="/qu' +
                'ote/402344/sux" onclick="v(402344, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402344/bayan" onclick="v(402344, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-30 '#1074' 09:12'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>'#1052#1072#1082#1089': '#1059' '#1085#1072#1089' '#1074' '#1082#1086#1084#1087#1072#1085#1080#1080' '#1079#1072' '#1086#1087#1086#1079#1076#1072#1085#1080#1077' '#1076#1077#1085#1100#1075#1072#1084#1080' '#1085#1077' '#1085#1072#1082#1072#1079#1099#1074#1072#1102 +
                #1090'. '#1059' '#1085#1072#1089' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1083#1080' '#1073#1086#1083#1077#1077' '#1082#1088#1077#1072#1090#1080#1074#1085#1099#1081' '#1087#1086#1076#1093#1086#1076'.<br>'#1055#1088#1080#1093#1086#1078#1091' '#1089#1077#1075#1086#1076#1085 +
                #1103' '#1085#1072' '#1088#1072#1073#1086#1090#1091' '#1074#1086' '#1074#1088#1077#1084#1103', '#1074#1089#1077' '#1085#1086#1088#1084#1072#1083#1100#1085#1086', '#1087#1088#1086#1093#1086#1078#1091' '#1085#1072' '#1089#1074#1086#1077' '#1088#1072#1073#1086#1095#1077#1077' '#1084#1077#1089 +
                #1090#1086', '#1074#1082#1083#1102#1095#1072#1102' '#1082#1086#1084#1087'. '#1042#1076#1088#1091#1075' '#1089#1083#1099#1096#1091' '#1084#1091#1079#1099#1082#1091' '#1080' '#1087#1077#1089#1085#1080', '#1076#1086#1085#1086#1089#1103#1097#1080#1077#1089#1103' '#1089' '#1088#1077#1089#1077 +
                #1087#1096#1077#1085#1072'. '#1048#1076#1091' '#1085#1072' '#1074#1093#1086#1076'/'#1074#1099#1093#1086#1076'. <br>'#1053#1072' '#1074#1093#1086#1076#1077', '#1074' '#1088#1077#1089#1077#1087#1096#1077#1085#1077' '#1089#1090#1086#1103#1090' '#1094#1099#1075#1072#1085#1077 +
                ' '#1089#1086' '#1074#1089#1077#1081' '#1072#1090#1088#1080#1073#1091#1090#1080#1082#1086#1081', '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1072#1088#1080#1077#1084', '#1079#1072' '#1080#1089#1082#1083#1102#1095#1077#1085#1080#1077#1084' '#1084#1080#1096#1082#1080', '#1080' '#1082 +
                #1072#1078#1076#1086#1084#1091' '#1082#1090#1086' '#1086#1087#1086#1079#1076#1072#1083' '#1087#1086#1102#1090' '#1080#1085#1076#1080#1074#1080#1076#1091#1072#1083#1100#1085#1086' '#1087#1077#1089#1085#1080' '#1080' '#1090#1072#1085#1094#1091#1102#1090'. '#1042#1077#1089#1077#1083#1086', '#1079 +
                #1076#1086#1088#1086#1074#1086', '#1076#1077#1081#1089#1090#1074#1077#1085#1085#1086'!</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402343">402343</a>'
              ''
              
                #9#9#9#9#9#9'[ <a href="/quote/402343/rulez" onclick="v(402343, 0, 0); ' +
                'return false;">+</a> <span id="v402343">5740</span> <a href="/qu' +
                'ote/402343/sux" onclick="v(402343, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402343/bayan" onclick="v(402343, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-30 '#1074' 09:11'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>'#1086#1085#1072': '#1085#1091', '#1074#1077#1089#1085#1072', '#1101#1090#1086' '#1078#1077' '#1090#1072#1082' '#1087#1088#1077#1082#1088#1072#1089#1085#1086'! '#1090#1077#1087#1083#1086', '#1079#1077#1083#1077#1085#1100', '#1074#1077#1089#1077 +
                #1085#1085#1080#1081' '#1074#1086#1079#1076#1091#1093', '#1088#1086#1084#1072#1085#1090#1080#1082#1072', '#1083#1102#1073#1086#1074#1100', '#1084#1084#1084'... '#1072' '#1090#1099' '#1093#1086#1095#1077#1096#1100' '#1095#1090#1086#1073#1099' '#1089#1082#1086#1088#1077#1077' ' +
                #1085#1072#1089#1090#1091#1087#1080#1083#1072' '#1074#1077#1089#1085#1072'? :)<br>'#1086#1085': '#1076#1072', '#1072' '#1090#1086' '#1091' '#1084#1077#1085#1103' '#1079#1080#1084#1085#1077#1081' '#1088#1077#1079#1080#1085#1099' '#1085#1077#1090' (</' +
                'div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402342">402342</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402342/rulez" onclick="v(402342, 0, 0); ' +
                'return false;">+</a> <span id="v402342">4476</span> <a href="/qu' +
                'ote/402342/sux" onclick="v(402342, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402342/bayan" onclick="v(402342, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-30 '#1074' 08:45'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>'#1054#1073#1088#1072#1097#1077#1085#1080#1077' '#1074' '#1072#1089#1100#1082#1091' '#1090#1077#1093#1087#1086#1076#1076#1077#1088#1078#1082#1080':<br><br>'#1040#1073#1086#1085#1077#1085#1090': '#1040' '#1084#1077#1085#1103' '#1089#1077 +
                #1075#1086#1076#1085#1103' '#1076#1077#1085#1100' '#1088#1086#1078#1076#1077#1085#1080#1103'<br>'#1058#1077#1093#1087#1086#1076#1076#1077#1088#1078#1082#1072': '#1087#1086#1079#1076#1088#1072#1074#1083#1103#1102'!<br>'#1040#1073#1086#1085#1077#1085#1090': '#1057#1087#1072 +
                #1089#1080#1073#1086', '#1072' '#1087#1086#1095#1077#1084#1091' '#1089#1082#1086#1088#1086#1089#1090#1100' '#1084#1072#1083#1077#1085#1100#1082#1072#1103' '#1074' '#1087'2'#1087'?<br>'#1058#1077#1093#1087#1086#1076#1076#1077#1088#1078#1082#1072': '#1087#1086#1076#1072#1088#1086 +
                #1082'!</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402341">402341</a>'
              ''
              
                #9#9#9#9#9#9'[ <a href="/quote/402341/rulez" onclick="v(402341, 0, 0); ' +
                'return false;">+</a> <span id="v402341"> ... </span> <a href="/q' +
                'uote/402341/sux" onclick="v(402341, 1, 0); return false;">&minus' +
                ';</a> ]'
              
                #9#9#9'<a href="/quote/402341/bayan" onclick="v(402341, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-30 '#1074' 08:45'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>xxx: '#1071' '#1074#1086#1090' '#1087#1086#1089#1083#1077' '#1090#1086#1075#1086', '#1082#1072#1082' '#1074' '#1087#1086#1089#1083#1077#1076#1085#1080#1081' '#1088#1072#1079' AOL '#1080#1075#1088#1072#1083#1072#1089#1100' '#1074 +
                #1099#1082#1083#1102#1095#1072#1090#1077#1083#1077#1084', '#1078#1105#1089#1090#1082#1086' '#1091#1096#1105#1083' '#1080#1079' '#1072#1089#1100#1082#1080'. '#1058#1077#1087#1077#1088#1100' '#1084#1086#1080' '#1076#1088#1091#1079#1100#1103' '#1084#1085#1077' '#1087#1080#1096#1091#1090' '#1077 +
                '-'#1084#1101#1081#1083#1099', '#1076#1077#1073#1080#1083#1099'. '#1053#1086' '#1076#1077#1074#1091#1096#1082#1091' '#1089#1074#1086#1102' '#1089' '#1075#1086#1088#1077#1084' '#1087#1086#1087#1086#1083#1072#1084' '#1074' '#1076#1078#1072#1073#1073#1077#1088' '#1079#1072#1090#1072#1097#1080 +
                #1083' :)<br>yyy: '#1058#1072#1082#1086#1081' '#1089#1077#1073#1077' '#1090#1077#1089#1090' &quot;'#1055#1088#1086#1074#1077#1088#1100', '#1085#1091#1078#1077#1085' '#1083#1080' '#1090#1099' '#1082#1086#1084#1091'-'#1090#1086' ' +
                #1085#1072#1092#1080#1075'? '#1055#1088#1077#1076#1083#1086#1078#1080' '#1087#1086#1089#1090#1072#1074#1080#1090#1100' '#1089#1077#1073#1077' '#1076#1078#1072#1073#1073#1077#1088'.&quot;</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402340">402340</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402340/rulez" onclick="v(402340, 0, 0); ' +
                'return false;">+</a> <span id="v402340">2821</span> <a href="/qu' +
                'ote/402340/sux" onclick="v(402340, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402340/bayan" onclick="v(402340, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-30 '#1074' 08:13'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>Grunter: '#1087#1086#1093#1086#1078#1077', '#1095#1090#1086' '#1089#1083#1077#1076#1091#1102#1097#1080#1084' '#1072#1084#1077#1088#1080#1082#1072#1085#1089#1082#1080#1084' '#1087#1088#1077#1079#1080#1076#1077#1085#1090#1086#1084' '#1076 +
                #1086#1083#1078#1077#1085' '#1089#1090#1072#1090#1100' '#1074#1099#1093#1086#1076#1077#1094' '#1080#1079' '#1074#1086#1089#1090#1086#1095#1085#1086#1081' '#1077#1074#1088#1086#1087#1099' <br>Grunter: '#1080#1093' '#1090#1072#1084' '#1087#1086#1076#1073 +
                #1080#1088#1072#1102#1090' '#1087#1086#1093#1086#1078#1080#1084#1080' '#1085#1072' '#1075#1083#1072#1074#1085#1099#1093' '#1075#1077#1088#1086#1077#1074' '#1080#1079' '#1075#1090#1072'</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402339">402339</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402339/rulez" onclick="v(402339, 0, 0); ' +
                'return false;">+</a> <span id="v402339">14475</span> <a href="/q' +
                'uote/402339/sux" onclick="v(402339, 1, 0); return false;">&minus' +
                ';</a> ]'
              
                #9#9#9'<a href="/quote/402339/bayan" onclick="v(402339, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-30 '#1074' 08:12'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>xxx: '#1055#1088#1080#1060#1092#1060#1077#1090#1080#1043' '#1089#1086#1051#1085#1099#1057#1082#1086' =** '#1050#1072#1043' '#1044#1077#1051#1048#1092#1092#1060#1082#1080'??! '#1052#1085#1059' '#1057#1077#1081#1060#1072#1089' ' +
                #1092' '#1041#1086#1083#1100#1053#1080#1095#1100#1082#1059' '#1080#1044#1077#1090#1100')))<br>yyy: '#1082' '#1083#1086#1075#1086#1087#1077#1076#1091'?</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402338">402338</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402338/rulez" onclick="v(402338, 0, 0); ' +
                'return false;">+</a> <span id="v402338">2971</span> <a href="/qu' +
                'ote/402338/sux" onclick="v(402338, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402338/bayan" onclick="v(402338, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-30 '#1074' 08:11'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>kristingo<br>'#1075#1088#1091#1087#1087#1072' '#1085#1072#1079#1099#1074#1072#1077#1090#1089#1103' &quot;'#1090#1074#1086#1081' '#1089#1086#1089#1077#1076' '#1089#1074#1077#1088#1093#1091' '#1076#1077 +
                #1073#1080#1083' '#1089' '#1078#1077#1083#1072#1085#1080#1077#1084' '#1087#1077#1090#1100'&quot;<br>kristingo<br>'#1074#1086#1090' '#1089#1077#1081#1095#1072#1089' '#1080#1075#1088#1072#1077#1090' '#1090#1088#1077#1082 +
                ' &quot;'#1087#1072#1084' '#1087#1072#1084' '#1087#1072#1084' '#1087#1072#1088#1072#1088#1072#1088#1072#1084'&quot;<br>kristingo<br>'#1072' '#1085#1086#1095#1100#1102' '#1089#1083#1091#1096#1072 +
                #1102' '#1075#1088#1091#1087#1087#1091' &quot;'#1090#1074#1086#1080' '#1089#1086#1089#1077#1076#1080' '#1089#1085#1080#1079#1091' '#1083#1102#1073#1103#1090' '#1090#1088#1072#1093#1072#1090#1100#1089#1103'&quot;<br>'#1050#1088#1080#1089#1090#1086 +
                #1092#1077#1088' '#1056#1086#1073#1080#1085'<br>'#1079#1072#1073#1072#1074#1085#1072#1103' '#1075#1088#1091#1087#1087#1072' )<br>kristingo<br>'#1072#1075#1072'<br>'#1090#1072#1084' '#1085#1072' '#1074#1086#1082 +
                #1072#1083#1077' '#1073#1072#1073#1072'<br>'#1050#1088#1080#1089#1090#1086#1092#1077#1088' '#1056#1086#1073#1080#1085'<br>'#1072' '#1084#1091#1078#1080#1082' '#1085#1072' '#1095#1077#1084'? )<br>kristingo<br' +
                '>'#1072' '#1084#1091#1078#1080#1082' '#1080#1075#1088#1072#1077#1090'<br>kristingo<br>'#1085#1072' '#1073#1072#1073#1077' :D</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402337">402337</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402337/rulez" onclick="v(402337, 0, 0); ' +
                'return false;">+</a> <span id="v402337">7455</span> <a href="/qu' +
                'ote/402337/sux" onclick="v(402337, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402337/bayan" onclick="v(402337, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-29 '#1074' 14:11'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>xxx: '#1040' '#1084#1099' '#1074#1086#1090' '#1087#1088#1086#1075#1091#1083#1103#1090#1100#1089#1103' '#1089#1077#1081#1095#1072#1089' '#1087#1086#1081#1076#1077#1084' '#1089' '#1051#1077#1096#1077#1081', '#1072' '#1090#1086' '#1085#1072#1076 +
                #1086#1077#1083#1086' '#1076#1086#1084#1072' '#1089#1080#1076#1077#1090#1100'.<br>yyy: '#1055#1088#1072#1074#1080#1083#1100#1085#1086'! '#1048#1076#1080#1090#1077' '#1087#1086#1076#1099#1096#1080#1090#1077' '#1074#1086#1079#1076#1091#1093#1086#1084', '#1085#1072 +
                #1076#1086' '#1074#1077#1089#1090#1080' '#1079#1076#1086#1088#1086#1074#1099#1081' '#1086#1073#1088#1072#1079' '#1078#1080#1079#1085#1080'. '#1052#1099' '#1074#1086#1090' '#1090#1086#1083#1100#1082#1086' '#1095#1090#1086' '#1090#1086#1078#1077' '#1087#1088#1086#1075#1091#1083#1103#1083#1080#1089 +
                #1100'. '#1040#1085#1076#1088#1077#1102' '#1089#1080#1075#1072#1088#1077#1090#1099' '#1082#1091#1087#1080#1083#1080', '#1084#1085#1077' - '#1087#1080#1074#1086'.</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402336">402336</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402336/rulez" onclick="v(402336, 0, 0); ' +
                'return false;">+</a> <span id="v402336">5085</span> <a href="/qu' +
                'ote/402336/sux" onclick="v(402336, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402336/bayan" onclick="v(402336, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-29 '#1074' 13:12'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>'#1041#1099#1083' '#1089#1077#1075#1086#1076#1085#1103' '#1091' '#1076#1077#1074#1091#1096#1082#1080' ('#1086#1085#1072' - '#1073#1091#1076#1091#1097#1080#1081' '#1092#1080#1083#1086#1083#1086#1075') '#1087#1077#1088#1074#1099#1081' '#1088#1072#1079' ' +
                #1074' '#1075#1086#1089#1090#1103#1093' '#1080' '#1087#1086#1085#1103#1083', '#1095#1090#1086' '#1090#1072#1082#1086#1077' '#1087#1086'-'#1085#1072#1089#1090#1086#1103#1097#1077#1084#1091' '#1082#1091#1083#1100#1090#1091#1088#1085#1072#1103' '#1080' '#1080#1085#1090#1077#1083#1083#1080#1075#1077 +
                #1085#1090#1085#1072#1103' '#1089#1077#1084#1100#1103': '#1091' '#1085#1080#1093' '#1074' '#1089#1086#1088#1090#1080#1088#1077' '#1083#1077#1078#1072#1083' '#1090#1086#1084#1080#1082' '#1087#1086#1101#1079#1080#1080' '#1089#1077#1088#1077#1073#1088#1103#1085#1086#1075#1086' '#1074#1077#1082#1072 +
                '.</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402335">402335</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402335/rulez" onclick="v(402335, 0, 0); ' +
                'return false;">+</a> <span id="v402335">5279</span> <a href="/qu' +
                'ote/402335/sux" onclick="v(402335, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402335/bayan" onclick="v(402335, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-29 '#1074' 09:12'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>'#1052#1086#1088#1072': '#1091' '#1084#1077#1085#1103' '#1095#1072#1082#1088#1099' '#1079#1072#1082#1088#1099#1083#1080#1089#1100' (<br>'#1060#1086#1090#1086#1075#1088#1072#1092': '#1095#1077#1075#1086#1086#1086#1086#1086'?<br>' +
                #1052#1086#1088#1072': '#1101#1090#1086' '#1076#1083#1103' '#1084#1077#1085#1103' '#1082#1072#1090#1072#1089#1090#1088#1086#1092#1072'...<br>'#1052#1086#1088#1072': '#1095#1072#1082#1088#1099' '#1079#1072#1082#1088#1099#1083#1080#1089#1100'... '#1074#1089#1077 +
                '...<br>'#1060#1086#1090#1086#1075#1088#1072#1092': '#1079#1072#1087#1086#1088' '#1095#1090#1086' '#1083#1080'?<br>'#1052#1086#1088#1072': '#1080#1076#1080#1086#1090'!</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              ''
              #9#9#9'<a href="/quote/402334">402334</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402334/rulez" onclick="v(402334, 0, 0); ' +
                'return false;">+</a> <span id="v402334">9056</span> <a href="/qu' +
                'ote/402334/sux" onclick="v(402334, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402334/bayan" onclick="v(402334, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-29 '#1074' 09:11'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>xxx: '#1076#1072' '#1082#1072#1082' '#1090#1099' '#1090#1072#1084' '#1074#1086#1086#1073#1097#1077' '#1091#1076#1077#1088#1078#1072#1083#1072#1089#1100'? '#1091' '#1085#1080#1093' '#1078#1077' '#1076#1077#1074#1095#1086#1085#1082#1080' '#1074 +
                ' '#1086#1090#1076#1077#1083#1077' '#1085#1077' '#1079#1072#1076#1077#1088#1078#1080#1074#1072#1102#1090#1089#1103' '#1074#1086#1086#1073#1097#1077', '#1080#1093' '#1074#1099#1090#1091#1088#1080#1074#1072#1102#1090'!<br>yyy: '#1082#1072#1082', '#1082#1072#1082 +
                '... '#1103' '#1080#1093' '#1089#1077#1088#1076#1094#1072' '#1079#1072#1074#1086#1077#1074#1072#1083#1072' '#1089#1088#1072#1079#1091' '#1080' '#1085#1072#1074#1089#1077#1075#1076#1072'!<br>yyy: '#1087#1088#1077#1076#1089#1090#1072#1074#1100'! '#1079 +
                #1072#1093#1086#1078#1091' '#1103' '#1074' '#1087#1077#1088#1074#1099#1081' '#1088#1072#1079' '#1074' '#1086#1090#1076#1077#1083', '#1074#1089#1103' '#1090#1072#1082#1072#1103' '#1089#1090#1077#1089#1085#1080#1090#1077#1083#1100#1085#1072#1103'. '#1072' '#1087#1072#1094#1072#1085#1099' ' +
                #1089#1080#1076#1103#1090', '#1080#1075#1085#1086#1088#1103#1090' '#1084#1077#1085#1103' '#1080' '#1074' '#1082#1086#1085#1090#1088#1091' '#1088#1077#1078#1091#1090#1089#1103'. '#1072' '#1103' '#1080#1084', '#1074#1084#1077#1089#1090#1086' &quot;'#1087#1088#1080 +
                #1074#1077#1090'&quot;: '#1054'! '#1044#1040#1057#1058' '#1044#1042#1040'!</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402333">402333</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402333/rulez" onclick="v(402333, 0, 0); ' +
                'return false;">+</a> <span id="v402333">4607</span> <a href="/qu' +
                'ote/402333/sux" onclick="v(402333, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402333/bayan" onclick="v(402333, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-29 '#1074' 08:45'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>LinuxCodder: '#1050#1090#1086' '#1079#1085#1072#1077#1090' '#1082#1072#1082#1072#1103' '#8470';%:*@# '#1074#1080#1085#1090#1099' '#1092#1086#1088#1084#1072#1090#1085#1091#1083#1072'?<br' +
                '>Lari$$ka: '#1086#1081' '#1101#1090#1086' '#1103'. '#1089#1083#1091#1095#1072#1081#1085#1086', '#1090#1077#1084' '#1073#1086#1083#1077#1077', '#1095#1090#1086' '#1090#1099' '#1074#1077#1076#1100' '#1090#1072#1084' '#1077#1097#1105' '#1085#1080 +
                #1095#1077#1075#1086' '#1074#1089#1105' '#1088#1072#1074#1085#1086' '#1085#1077' '#1076#1077#1083#1072#1083'?<br>LinuxCodder: '#1042#1086'-'#1087#1077#1088#1074#1099#1093', '#1076#1077#1083#1072#1083'. '#1058#1072#1084' '#1073 +
                #1099#1083#1072' '#1091#1078#1077' '#1087#1086#1083#1085#1086#1089#1090#1100#1102' '#1085#1072#1089#1090#1088#1086#1077#1085#1085#1072#1103' '#1089#1080#1089#1090#1077#1084#1072' '#1080' '#1082#1091#1095#1072' '#1092#1072#1081#1083#1086#1074#1086#1075#1086' '#1082#1086#1085#1090#1077#1085#1090#1072'.' +
                '<br>LinuxCodder: '#1069#1090#1086' '#1073#1099#1083' '#1091#1078#1077' '#1055#1054#1051#1053#1054#1057#1058#1068#1070' '#1055#1054#1044#1053#1071#1058#1067#1049' '#1089#1077#1088#1074#1077#1088', '#1087#1086#1085#1080#1084#1072#1077#1096 +
                #1100'?<br>LinuxCodder: '#1045#1075#1086' '#1091#1078#1077' '#1084#1086#1078#1085#1086' '#1073#1099#1083#1086' '#1074#1074#1086#1076#1080#1090#1100' '#1074' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1102'... ' +
                #1101#1101#1093'... ((<br>LinuxCodder: '#1040' '#1074#1086'-'#1074#1090#1086#1088#1099#1093', '#1057#1045#1052#1068' '#1086#1090#1092#1086#1088#1084#1072#1090#1080#1088#1086#1074#1072#1085#1085#1099#1093' '#1074#1080 +
                #1085#1090#1086#1074' - '#1101#1090#1086' &quot;'#1089#1083#1091#1095#1072#1081#1085#1086'&quot; ?!</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402332">402332</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402332/rulez" onclick="v(402332, 0, 0); ' +
                'return false;">+</a> <span id="v402332">2386</span> <a href="/qu' +
                'ote/402332/sux" onclick="v(402332, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402332/bayan" onclick="v(402332, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-29 '#1074' 08:45'
              #9#9#9#9#9'</div>'
              ''
              
                #9#9'<div>xxx: '#1079#1072#1095#1077#1084' '#1090#1077#1073#1077' '#1087#1088#1072#1074#1072' - '#1085#1072' '#1084#1072#1088#1096#1088#1091#1090#1086#1095#1082#1077', '#1087#1086#1073#1083#1080#1078#1077' '#1082' '#1085#1072#1088#1086#1076#1091'<' +
                'br>yyy: '#1085#1077#1090' '#1091#1078', '#1093#1086#1095#1077#1090#1089#1103' '#1073#1086#1083#1100#1096#1077#1075#1086'<br>xxx: '#1090#1086#1075#1076#1072' '#1085#1072' '#1072#1074#1090#1086#1073#1091#1089#1077'! =D</' +
                'div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402331">402331</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402331/rulez" onclick="v(402331, 0, 0); ' +
                'return false;">+</a> <span id="v402331">6413</span> <a href="/qu' +
                'ote/402331/sux" onclick="v(402331, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402331/bayan" onclick="v(402331, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-29 '#1074' 08:13'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>'#1053#1072' '#1087#1088#1086#1096#1083#1086#1081' '#1085#1077#1076#1077#1083#1077'.<br>'#1071': '#1041#1091#1076#1077#1096#1100' '#1089' '#1085#1072#1084#1080' '#1082#1080#1085#1086' '#1089#1084#1086#1090#1088#1077#1090#1100'?<br>' +
                #1044#1086#1095#1100': '#1053#1077#1090', '#1103' '#1087#1086#1081#1076#1091' '#1040#1089#1102' '#1087#1086#1095#1080#1090#1072#1102'.<br>'#1071': '#1053#1086' '#1089#1077#1075#1086#1076#1085#1103' '#1078' '#1085#1077' '#1087#1086#1083#1091#1095#1080#1090#1089#1103'.' +
                ' '#1040#1084#1077#1088#1080#1082#1072' '#1054#1085#1083#1072#1081#1085' '#1089#1084#1077#1085#1080#1083#1072' '#1087#1088#1086#1090#1086#1082#1086#1083' '#1072#1074#1090#1086#1088#1080#1079#1072#1094#1080#1080' '#1080' '#1089#1090#1086#1088#1086#1085#1085#1080#1077' '#1082#1083#1080#1077#1085#1090#1099 +
                ' '#1090#1077#1087#1077#1088#1100'...<br>'#1044#1086#1095#1100', '#1087#1077#1088#1077#1073#1080#1074#1072#1077#1090' '#1089' '#1091#1082#1086#1088#1080#1079#1085#1086#1081': '#1052#1072#1084#1072'! '#1055#1086' '#1083#1080#1090#1077#1088#1072#1090#1091#1088#1077'!' +
                ' '#1058#1091#1088#1075#1077#1085#1077#1074#1072'!</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402330">402330</a>'
              ''
              
                #9#9#9#9#9#9'[ <a href="/quote/402330/rulez" onclick="v(402330, 0, 0); ' +
                'return false;">+</a> <span id="v402330">9028</span> <a href="/qu' +
                'ote/402330/sux" onclick="v(402330, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402330/bayan" onclick="v(402330, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-29 '#1074' 08:11'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>xxx: <br>'#1055#1086' '#1090#1077#1083#1080#1082#1091' '#1090#1086#1083#1100#1082#1086' '#1095#1090#1086' '#1074#1080#1076#1077#1083' '#1089#1084#1089'-'#1075#1086#1083#1086#1089#1086#1074#1072#1085#1080#1077'<br><b' +
                'r>xxx:<br>'#1042#1099' '#1101#1082#1086#1085#1086#1084#1080#1090#1077' '#1085#1072' '#1089#1087#1080#1095#1082#1072#1093'?<br>40% '#1044#1040'<br>60% '#1053#1045#1058'<br>'#1062#1077#1085#1072' ' +
                #1089#1084#1089'-'#1075#1086#1083#1086#1089#1086#1074#1072#1085#1080#1103' 29'#1088' '#1073#1077#1079' '#1053#1044#1057'<br><br>xxx:<br>60% '#1087#1088#1086#1094#1077#1085#1090#1086#1074' '#1083#1102#1076#1077#1081' '#1103 +
                ' '#1087#1086#1085#1080#1084#1072#1102', '#1085#1086' '#1086#1089#1090#1072#1083#1100#1085#1099#1077' '#1082#1090#1086'?</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402329">402329</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402329/rulez" onclick="v(402329, 0, 0); ' +
                'return false;">+</a> <span id="v402329">2425</span> <a href="/qu' +
                'ote/402329/sux" onclick="v(402329, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402329/bayan" onclick="v(402329, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-29 '#1074' 08:11'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>&lt;FenTaylor&gt; '#1044#1074#1086#1081#1089#1090#1074#1077#1085#1085#1086#1077' '#1095#1091#1074#1089#1090#1074#1086' '#1074#1086#1079#1085#1080#1082#1072#1077#1090', '#1082#1086#1075#1076#1072' '#1085 +
                #1072#1093#1086#1076#1080#1096#1100' '#1091#1103#1079#1074#1080#1084#1086#1089#1090#1100' '#1074' '#1089#1072#1081#1090#1077'. '#1050#1088#1080#1090#1080#1095#1077#1089#1082#1091#1102' '#1090#1072#1082#1091#1102'. '#1052#1072#1085#1103#1097#1091#1102'...<br>&lt' +
                ';FenTaylor&gt; '#1040' '#1087#1086#1090#1086#1084' '#1075#1083#1072#1079#1072' '#1087#1086#1076#1085#1080#1084#1072#1077#1096#1100', '#1091#1075#1091', '#1080' '#1095#1080#1090#1072#1077#1096#1100' '#1074' '#1079#1072#1075#1086#1083#1086 +
                #1074#1082#1077' &quot;'#1054#1073#1098#1077#1076#1080#1085#1105#1085#1085#1099#1081' '#1060#1086#1088#1091#1084' '#1041#1086#1081#1094#1086#1074#1089#1082#1080#1093' '#1050#1083#1091#1073#1086#1074' ('#1054#1060#1041#1050')&quot;</div' +
                '>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              ''
              #9#9#9'<a href="/quote/402328">402328</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402328/rulez" onclick="v(402328, 0, 0); ' +
                'return false;">+</a> <span id="v402328">4622</span> <a href="/qu' +
                'ote/402328/sux" onclick="v(402328, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402328/bayan" onclick="v(402328, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-28 '#1074' 22:59'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>'#1082#1067#1089#1072'<br>'#1085#1091' '#1074#1089#1077' '#1083#1102#1076#1080' '#1080#1084#1077#1102#1090' '#1076#1074#1077' '#1089#1090#1086#1088#1086#1085#1099', '#1082#1072#1082' '#1084#1077#1076#1072#1083#1080'...<br><' +
                'br>'#1055#1086#1076#1078#1080#1075#1072#1090#1077#1083#1100'<br>'#1072' '#1085#1077#1082#1086#1090#1086#1088#1099#1077' '#1084#1085#1086#1075#1086#1075#1088#1072#1085#1085#1099'. '#1082#1072#1082' '#1089#1090#1072#1082#1072#1085'</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402327">402327</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402327/rulez" onclick="v(402327, 0, 0); ' +
                'return false;">+</a> <span id="v402327">1624</span> <a href="/qu' +
                'ote/402327/sux" onclick="v(402327, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402327/bayan" onclick="v(402327, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-28 '#1074' 22:58'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>13.01.2009<br>'#1042#1085#1080#1084#1072#1085#1080#1077'.<br><br>'#1059#1074#1072#1078#1072#1077#1084#1099#1077' '#1072#1073#1086#1085#1077#1085#1090#1099'.<br>'#1050#1072#1085 +
                #1072#1083' TV3 Latvija '#1089#1086#1086#1073#1097#1072#1077#1090', '#1095#1090#1086' 13-14 '#1103#1085#1074#1072#1088#1103' '#1073#1091#1076#1091#1090' '#1079#1085#1072#1095#1080#1090#1077#1083#1100#1085#1099#1077' '#1087#1086#1084 +
                #1077#1093#1080' '#1085#1072' '#1080#1093' '#1082#1072#1085#1072#1083#1077'. '#1055#1086#1084#1077#1093#1080' '#1089#1074#1103#1079#1072#1085#1099' '#1089' '#1091#1083#1091#1095#1096#1077#1085#1080#1077#1084' '#1089#1080#1075#1085#1072#1083#1072' '#1089#1086' '#1089#1090#1086#1088#1086#1085#1099 +
                ' '#1087#1088#1086#1075#1088#1072#1084#1084#1086#1076#1072#1090#1077#1083#1103'.</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402326">402326</a>'
              ''
              
                #9#9#9#9#9#9'[ <a href="/quote/402326/rulez" onclick="v(402326, 0, 0); ' +
                'return false;">+</a> <span id="v402326">1986</span> <a href="/qu' +
                'ote/402326/sux" onclick="v(402326, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402326/bayan" onclick="v(402326, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-28 '#1074' 14:12'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>xxxx: '#1053#1091#1078#1077#1085' '#1089#1086#1074#1077#1090'. '#1053#1077' '#1079#1072#1085#1080#1084#1072#1083#1089#1103' '#1090#1077#1093' '#1076#1080#1079#1072#1081#1085#1086#1084' '#1074#1086#1086#1073#1097#1077'... '#1055#1086 +
                #1076#1089#1082#1072#1078#1080#1090#1077' '#1089' '#1095#1077#1075#1086' '#1085#1072#1095#1072#1090#1100'... '#1095#1090#1086' '#1087#1086#1095#1080#1090#1072#1090#1100' '#1084#1086#1078#1085#1086' '#1085#1072' '#1101#1090#1091' '#1090#1077#1084#1091', '#1082#1072#1082#1080#1077' ' +
                #1077#1089#1090#1100' '#1087#1086#1083#1077#1079#1085#1099#1077' '#1089#1072#1081#1090#1099', '#1080' '#1082#1072#1082#1080#1093' '#1086#1096#1080#1073#1086#1082' '#1083#1091#1095#1096#1077' '#1074#1086#1086#1073#1097#1077' '#1085#1077' '#1076#1077#1083#1072#1090#1100'. '#1047#1072#1088#1072 +
                #1085#1077#1077' '#1089#1087#1072#1089#1080#1073#1086'.<br>yyyy: '#1052#1086#1077#1081' '#1089#1072#1084#1086#1081' '#1073#1086#1083#1100#1096#1086#1081' '#1086#1096#1080#1073#1082#1086#1081' '#1073#1099#1083#1086' '#1089#1090#1072#1090#1100' '#1076#1080#1079#1072 +
                #1081#1085#1077#1088#1086#1084'. '#1041#1072#1085#1082#1080#1088#1086#1084', '#1103' '#1089#1084#1086#1090#1088#1077#1083#1089#1103' '#1073#1099' '#1075#1086#1088#1072#1079#1076#1086' '#1083#1091#1095#1096#1077'.</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402325">402325</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402325/rulez" onclick="v(402325, 0, 0); ' +
                'return false;">+</a> <span id="v402325">6356</span> <a href="/qu' +
                'ote/402325/sux" onclick="v(402325, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402325/bayan" onclick="v(402325, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-28 '#1074' 14:11'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>'#1043#1088#1072#1092#1080#1095#1077#1089#1082#1080#1081' '#1076#1080#1079#1072#1081#1085' '#1079#1072' '#1077#1076#1091'.<br>'#1059#1089#1083#1091#1075#1080' / '#1044#1080#1079#1072#1081#1085', '#1092#1080#1088#1084#1077#1085#1085#1099#1081' ' +
                #1089#1090#1080#1083#1100' / '#1059#1082#1088#1072#1080#1085#1072'<br>'#1061#1086#1088#1086#1096#1080#1077' '#1083#1102#1076#1080' '#1089#1076#1077#1083#1072#1102#1090' '#1087#1088#1077#1074#1086#1089#1093#1086#1076#1085#1099#1081' '#1075#1088#1072#1092#1080#1095#1077#1089#1082#1080#1081 +
                ' '#1076#1080#1079#1072#1081#1085' '#1079#1072' '#1077#1076#1091'.<br>'#1052#1099' '#1087#1088#1077#1076#1087#1086#1095#1080#1090#1072#1077#1084':<br>'#1090#1088#1102#1092#1077#1083#1080', '#1092#1091#1072'-'#1075#1088#1072', '#1080#1088#1072#1085#1089#1082#1091 +
                #1102' '#1080#1082#1088#1091', '#1090#1088#1086#1081#1085#1091#1102' '#1091#1093#1091' '#1080#1079' '#1089#1077#1083#1077#1076#1086#1095#1085#1099#1093' '#1097#1077#1082', '#1084#1077#1076#1074#1077#1078#1100#1080' '#1083#1072#1076#1086#1096#1080' '#1074' '#1089#1084#1077#1090#1072#1085#1077 +
                ', '#1092#1080#1083#1077#1081#1095#1080#1082#1080' '#1085#1086#1074#1086#1088#1086#1078#1076#1077#1085#1085#1086#1075#1086' '#1103#1075#1085#1077#1085#1082#1072', '#1082#1086#1090#1086#1088#1099#1077' '#1092#1072#1088#1096#1080#1088#1086#1074#1072#1085#1099' '#1088#1072#1082#1086#1074#1099#1084#1080 +
                ' '#1096#1077#1081#1082#1072#1084#1080' '#1089#1091#1076#1072#1095#1082#1086#1074', '#1089#1074#1077#1078#1091#1102' '#1082#1083#1091#1073#1085#1080#1082#1091' '#1085#1072' '#1083#1100#1076#1091' '#1080' '#1073#1091#1090#1099#1083#1082#1091' '#1093#1086#1083#1086#1076#1085#1086#1075#1086' '#1092 +
                #1088#1072#1085#1094#1091#1079#1089#1082#1086#1075#1086' '#1073#1088#1102#1090#1072'.<br>'#1045#1089#1083#1080' '#1076#1072#1085#1085#1086#1075#1086' '#1085#1077#1090' '#8212' '#1089#1086#1081#1076#1091#1090' '#1080' '#1073#1072#1073#1082#1080'.</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              ''
              #9#9#9'<a href="/quote/402324">402324</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402324/rulez" onclick="v(402324, 0, 0); ' +
                'return false;">+</a> <span id="v402324"> ... </span> <a href="/q' +
                'uote/402324/sux" onclick="v(402324, 1, 0); return false;">&minus' +
                ';</a> ]'
              
                #9#9#9'<a href="/quote/402324/bayan" onclick="v(402324, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-28 '#1074' 14:11'
              #9#9#9#9#9'</div>'
              ''
              
                #9#9'<div>xxx: '#1045#1044#1048#1053#1057#1058#1042#1045#1053#1053#1067#1049' '#1088#1072#1079' '#1079#1072' 22 '#1075#1086#1076#1072' '#1078#1080#1079#1085#1080' '#1087#1086#1079#1085#1072#1082#1086#1084#1080#1083#1072#1089#1100' '#1089' '#1087#1072 +
                #1088#1085#1077#1084' '#1087#1086'-'#1085#1086#1088#1084#1072#1083#1100#1085#1086#1084#1091', '#1053#1040' '#1059#1051#1048#1062#1045', '#1072' '#1085#1077' '#1074' '#1080#1085#1077#1090#1077'... '#1072' '#1086#1085', '#1089#1091#1082#1072' '#1078#1077#1085#1072#1090'.' +
                '..<br>xxx: '#1103' '#1088#1072#1079#1086#1095#1072#1088#1086#1074#1072#1085#1072' '#1074' '#1101#1090#1086#1084' '#1089#1087#1086#1089#1086#1073#1077' '#1079#1085#1072#1082#1086#1084#1089#1090#1074'...<br>xxx: '#1073#1086 +
                #1083#1100#1096#1077' '#1085#1080#1082#1086#1075#1076#1072' '#1085#1077' '#1073#1091#1076#1091' '#1079#1085#1072#1082#1086#1084#1080#1090#1100#1089#1103' '#1090#1072#1082#1080#1084#1080' '#1089#1087#1086#1089#1086#1073#1072#1084#1080', '#1074' '#1082#1086#1090#1086#1088#1099#1093' '#1085#1077#1083 +
                #1100#1079#1103' '#1086#1090#1092#1080#1083#1100#1090#1088#1086#1074#1072#1090#1100' '#1085#1077#1078#1077#1085#1072#1090#1099#1093'!</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402323">402323</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402323/rulez" onclick="v(402323, 0, 0); ' +
                'return false;">+</a> <span id="v402323">7248</span> <a href="/qu' +
                'ote/402323/sux" onclick="v(402323, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402323/bayan" onclick="v(402323, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-28 '#1074' 13:46'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>'#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' '#1089' '#1084#1077#1089#1090#1085#1086#1075#1086' '#1092#1072#1081#1083#1086#1086#1073#1084#1077#1085#1085#1080#1082#1072':<br>'#1055#1077#1088#1077#1074#1086#1076' '#1080#1075#1088#1099' '#1085#1072 +
                ' '#1074#1099#1089#1086#1090#1077'. '#1040#1082#1090#1077#1088#1099' - '#1085#1072#1089#1090#1086#1103#1097#1080#1077' '#1087#1088#1086#1092#1077#1089#1089#1080#1086#1085#1072#1083#1099'. '#1058#1086#1083#1100#1082#1086' '#1087#1088#1086#1092#1077#1089#1089#1080#1086#1085#1072#1083' '#1084 +
                #1086#1078#1077#1090' '#1089' '#1074#1099#1088#1072#1078#1077#1085#1080#1077#1084' '#1079#1072#1095#1080#1090#1099#1074#1072#1090#1100' '#1084#1072#1096#1080#1085#1085#1099#1081' '#1087#1077#1088#1077#1074#1086#1076' '#1080' '#1085#1077' '#1089#1073#1080#1074#1072#1103#1089#1100' '#1087#1088#1086#1080 +
                #1079#1085#1086#1089#1080#1090#1100' '#1085#1077#1087#1077#1088#1077#1074#1077#1076#1077#1085#1085#1099#1077' '#1089#1083#1086#1074#1072' '#1074' '#1089#1077#1088#1077#1076#1080#1085#1077' '#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1103'</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402322">402322</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402322/rulez" onclick="v(402322, 0, 0); ' +
                'return false;">+</a> <span id="v402322">8842</span> <a href="/qu' +
                'ote/402322/sux" onclick="v(402322, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402322/bayan" onclick="v(402322, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-28 '#1074' 13:13'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>'#1054#1076#1084#1080#1085', '#1082#1086#1090#1086#1088#1099#1081' '#1085#1072' '#1084#1086#1077#1084' '#1084#1077#1089#1090#1077' '#1084#1077#1089#1103#1094' '#1088#1072#1073#1086#1090#1072#1077#1090', '#1090#1086#1083#1100#1082#1086' '#1095#1090#1086' '#1085 +
                #1072#1087#1080#1089#1072#1083':<br>'#1093#1093#1093': '#1087#1088#1080#1074#1077#1090'. '#1085#1072#1087#1086#1084#1085#1080', '#1075#1076#1077' '#1085#1072#1093#1086#1076#1080#1090#1089#1103' '#1089#1077#1088#1074#1077#1088#1085#1072#1103' :) '#1072' '#1090#1086 +
                ' '#1103' '#1079#1072#1073#1099#1083' :(<br>'#1072' '#1089#1087#1088#1072#1096#1080#1074#1072#1090#1100' '#1091' '#1085#1072#1088#1086#1076#1072' '#1082#1072#1082'-'#1090#1086' '#1089#1090#1088#1105#1084#1085#1086'</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402321">402321</a>'
              ''
              
                #9#9#9#9#9#9'[ <a href="/quote/402321/rulez" onclick="v(402321, 0, 0); ' +
                'return false;">+</a> <span id="v402321">6764</span> <a href="/qu' +
                'ote/402321/sux" onclick="v(402321, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402321/bayan" onclick="v(402321, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-28 '#1074' 09:45'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>'#1080#1079' '#1085#1086#1074#1086#1089#1090#1077#1081':<br>'#1050#1086#1084#1087#1072#1085#1080#1103' Runaway Technology '#1074#1099#1087#1091#1089#1090#1080#1083#1072' '#1087#1088#1086 +
                #1075#1088#1072#1084#1084#1091' '#171'BulletFlight'#187' '#1076#1083#1103' iPod Touch '#1080' iPhone, '#1082#1086#1090#1086#1088#1072#1103' '#1087#1088#1080#1079#1074#1072#1085#1072' ' +
                #1087#1086#1084#1086#1095#1100' '#1089#1085#1072#1081#1087#1077#1088#1072#1084' '#1074' '#1087#1088#1080#1094#1077#1083#1080#1074#1072#1085#1080#1080'. '#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080' '#1084#1086#1075#1091#1090' '#1085#1072#1074#1077#1089#1080#1090#1100' iPo' +
                'd '#1085#1072' '#1074#1080#1085#1090#1086#1074#1082#1091' '#1080', '#1080#1089#1087#1086#1083#1100#1079#1091#1103' '#1087#1088#1086#1075#1088#1072#1084#1084#1091', '#1074#1074#1077#1089#1090#1080' '#1085#1077#1089#1082#1086#1083#1100#1082#1086' '#1087#1072#1088#1072#1084#1077#1090#1088#1086 +
                #1074' ('#1074#1077#1090#1077#1088', '#1074#1080#1076' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1084#1099#1093' '#1073#1086#1077#1087#1088#1080#1087#1072#1089#1086#1074', '#1088#1072#1089#1089#1090#1086#1103#1085#1080#1077' '#1076#1086' '#1094#1077#1083#1080') '#1080' '#1087#1088 +
                #1086#1080#1079#1074#1077#1089#1090#1080' '#1074#1099#1089#1090#1088#1077#1083', '#1089#1083#1077#1076#1091#1103' '#1089#1086#1074#1077#1090#1091' '#1085#1072' iPod.<br><br>'#1082#1086#1084#1084#1077#1085#1090#1099':<br>xxx' +
                ':-'#1040' '#1077#1089#1083#1080' '#1089#1085#1072#1081#1087#1077#1088#1091' '#1087#1086#1079#1074#1086#1085#1103#1090'?<br>yyy:-'#1053#1091', '#1090#1086#1075#1076#1072' iPhone '#1087#1086#1084#1086#1078#1077#1090' '#1076#1088#1091 +
                #1075#1086#1084#1091' '#1089#1085#1072#1081#1087#1077#1088#1091'.</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402320">402320</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402320/rulez" onclick="v(402320, 0, 0); ' +
                'return false;">+</a> <span id="v402320">13081</span> <a href="/q' +
                'uote/402320/sux" onclick="v(402320, 1, 0); return false;">&minus' +
                ';</a> ]'
              
                #9#9#9'<a href="/quote/402320/bayan" onclick="v(402320, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-28 '#1074' 09:45'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>xxx:<br>'#1041#1091#1076#1091#1095#1080' &quot;'#1087#1086#1089#1083#1077' '#1087#1077#1088#1077#1075#1086#1074#1086#1088#1086#1074'&quot;, '#1103' '#1089#1083#1091#1095#1072#1081#1085#1086' ' +
                #1074#1089#1090#1088#1077#1090#1080#1083' '#1089#1074#1086#1077#1075#1086' '#1076#1077#1083#1086#1074#1086#1075#1086' '#1087#1072#1088#1090#1085#1077#1088#1072' - '#1042#1077#1088#1091', '#1086#1095#1077#1085#1100' '#1087#1088#1080#1103#1090#1085#1091#1102' '#1076#1072#1084#1091', '#1082 +
                #1086#1090#1086#1088#1091#1102' '#1076#1072#1074#1085#1086' '#1085#1077' '#1074#1080#1076#1077#1083'. '#1053#1072' '#1088#1072#1076#1086#1089#1090#1103#1093' '#1086#1090' '#1074#1089#1077#1075#1086' '#1089#1077#1088#1076#1094#1072' '#1087#1086#1076#1072#1088#1080#1083' '#1077#1081' '#1093#1086 +
                #1088#1086#1096#1080#1081' '#1082#1086#1085#1100#1103#1082', '#1096#1086#1082#1086#1083#1072#1076#1085#1099#1081' '#1085#1072#1073#1086#1088', '#1077#1097#1077' '#1095#1090#1086'-'#1090#1086' '#1096#1080#1082#1072#1088#1085#1086#1077', '#1087#1086#1083#1091#1095#1080#1083#1072#1089#1100' ' +
                #1094#1077#1083#1072#1103' '#1086#1093#1072#1087#1082#1072'. '#1054#1085#1072','#1082#1086#1085#1077#1095#1085#1086', '#1088#1072#1089#1090#1072#1103#1083#1072' '#1086#1090' '#1090#1072#1082#1086#1075#1086' '#1074#1085#1080#1084#1072#1085#1080#1103','#1088#1072#1089#1094#1077#1083#1086#1074#1072 +
                #1083#1080#1089#1100' '#1074' '#1097#1077#1095#1082#1080' '#1087#1088#1080' '#1087#1088#1086#1097#1072#1085#1080#1080'. '#1042' '#1086#1073#1097#1077#1084', '#1084#1086#1084#1077#1085#1090' '#1087#1088#1080#1103#1090#1085#1099#1081' '#1076#1083#1103' '#1086#1073#1077#1080#1093' '#1089#1090 +
                #1086#1088#1086#1085'.<br><br>xxx:<br>'#1040' '#1087#1088#1080#1084#1077#1088#1085#1086' '#1095#1077#1088#1077#1079' '#1084#1077#1089#1103#1094', '#1091#1078#1077' '#1087#1088#1080' '#1089#1083#1077#1076#1091#1102#1097#1077#1081' '#1074 +
                #1089#1090#1088#1077#1095#1077', '#1042#1077#1088#1072' '#1087#1086#1073#1083#1072#1075#1086#1076#1072#1088#1080#1083#1072' '#1084#1077#1085#1103' '#1080' '#1089#1082#1072#1079#1072#1083#1072', '#1095#1090#1086' '#1087#1086#1076#1072#1088#1082#1080' '#1073#1099#1083#1080' '#1082#1083#1072#1089 +
                #1089#1085#1099#1084#1080' '#1080' '#1085#1072#1089#1090#1086#1083#1100#1082#1086' '#1096#1080#1082#1072#1088#1085#1099#1084#1080','#1095#1090#1086' '#1077#1081' '#1077#1076#1074#1072' '#1093#1074#1072#1090#1080#1083#1086' '#1076#1077#1085#1077#1075' '#1088#1072#1089#1087#1083#1072#1090#1080#1090#1100 +
                #1089#1103' '#1079#1072' '#1085#1080#1093' '#1085#1072' '#1082#1072#1089#1089#1077' '#1091#1085#1080#1074#1077#1088#1089#1072#1084#1072', '#1074' '#1082#1086#1090#1086#1088#1086#1084' '#1103' '#1080#1093' '#1087#1086#1076#1072#1088#1080#1083'.</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              ''
              #9#9#9'<a href="/quote/402319">402319</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402319/rulez" onclick="v(402319, 0, 0); ' +
                'return false;">+</a> <span id="v402319">554</span> <a href="/quo' +
                'te/402319/sux" onclick="v(402319, 1, 0); return false;">&minus;<' +
                '/a> ]'
              
                #9#9#9'<a href="/quote/402319/bayan" onclick="v(402319, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-28 '#1074' 09:13'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>Powerland: '#1074#1089#1077' '#1087#1088#1080#1076#1077#1090' '#1082' '#1090#1086#1084#1091', '#1095#1090#1086' '#1095#1077#1088#1077#1079' '#1076#1074#1072#1076#1094#1072#1090#1100' '#1083#1077#1090' '#1087#1088#1086#1075 +
                #1088#1072#1084#1084#1077#1088#1099' '#1079#1072#1073#1091#1076#1091#1090' '#1095#1090#1086' '#1090#1072#1082#1086#1077' '#1103#1079#1099#1082#1080'/'#1082#1086#1084#1087#1080#1083#1103#1090#1086#1088#1099', '#1082#1086#1090#1086#1088#1099#1077' '#1076#1072#1102#1090' '#1085#1072#1090#1080#1074#1085 +
                #1099#1081' '#1084#1072#1096#1080#1085#1085#1099#1081' '#1082#1086#1076', '#1073#1091#1076#1091#1090' '#1087#1088#1086#1075#1088#1072#1084#1084#1080#1090#1100' '#1076#1083#1103' '#1054#1057', '#1082#1086#1090#1086#1088#1072#1103' '#1088#1072#1073#1086#1090#1072#1077#1090' '#1087#1086#1076' ' +
                'silverlight, '#1082#1086#1090#1086#1088#1099#1081' '#1088#1072#1073#1086#1090#1072#1077#1090' '#1074' '#1073#1088#1072#1091#1079#1077#1088#1077', '#1082#1086#1090#1086#1088#1099#1081' '#1085#1072#1087#1080#1089#1072#1085' '#1085#1072' .NE' +
                'T, '#1080' '#1079#1072#1087#1091#1097#1077#1085#1086' '#1074#1089#1077' '#1101#1090#1086' '#1073#1091#1076#1077#1090' '#1074' '#1082#1072#1082#1086#1081'-'#1085#1080#1073#1091#1076#1100' windows 7, '#1072' '#1086#1085#1072' '#1074' '#1089#1074 +
                #1086#1102' '#1086#1095#1077#1088#1077#1076#1100' '#1073#1091#1076#1077#1090' '#1088#1072#1073#1086#1090#1072#1090#1100' '#1074' VmWare '#1087#1086#1076' '#1083#1080#1085#1091#1082#1089#1086#1084'. '#1057#1088#1077#1076#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1077 +
                #1088#1086#1074' '#1073#1091#1076#1091#1090' '#1093#1086#1076#1080#1090#1100' '#1089#1083#1091#1093#1080', '#1095#1090#1086' '#1082#1090#1086'-'#1090#1086' '#1079#1085#1072#1077#1090' '#1082#1072#1082' '#1087#1088#1086#1075#1088#1072#1084#1084#1080#1090#1100' '#1085#1077' '#1090#1086#1083#1100 +
                #1082#1086' '#1087#1086#1076' .NET, '#1085#1086' '#1080' '#1087#1086#1076' windows '#1080' linux.</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402318">402318</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402318/rulez" onclick="v(402318, 0, 0); ' +
                'return false;">+</a> <span id="v402318">4124</span> <a href="/qu' +
                'ote/402318/sux" onclick="v(402318, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402318/bayan" onclick="v(402318, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-28 '#1074' 08:46'
              #9#9#9#9#9'</div>'
              
                #9#9'<div>Malika:<br>'#1058#1105#1084#1072' '#1089#1082#1072#1079#1072#1083', '#1074' '#1085#1077#1081' '#1077#1089#1090#1100' '#1095#1090#1086'-'#1090#1086' '#1079#1084#1077#1080#1085#1086#1077'... )<br' +
                '><br>Starshina:<br>'#1072' '#1086#1085', '#1087#1086#1078#1072#1083#1091#1081', '#1087#1088#1072#1074'<br><br>Malika:<br>'#1086#1085' '#1077#1097#1105' ' +
                #1075#1086#1074#1086#1088#1080#1090' '#1095#1090#1086' '#1089#1080#1089#1072#1076#1084#1080#1085#1099' '#1086#1076#1080#1085#1072#1082#1086#1074#1086' '#1084#1099#1089#1083#1103#1090'... )<br><br>Starshina:<br' +
                '>'#1089#1080#1089#1072#1076#1084#1080#1085#1099' '#1084#1099#1089#1083#1103#1090' '#1074#1077#1088#1085#1086' '#1080' '#1090#1086#1095#1085#1086'<br>'#1080' '#1087#1086#1090#1086#1084#1091' - '#1086#1076#1080#1085#1072#1082#1086#1074#1086'</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402317">402317</a>'
              
                #9#9#9#9#9#9'[ <a href="/quote/402317/rulez" onclick="v(402317, 0, 0); ' +
                'return false;">+</a> <span id="v402317">2505</span> <a href="/qu' +
                'ote/402317/sux" onclick="v(402317, 1, 0); return false;">&minus;' +
                '</a> ]'
              
                #9#9#9'<a href="/quote/402317/bayan" onclick="v(402317, 2, 0); retur' +
                'n false;">[:||||:]</a>'
              #9#9#9#9#9#9#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-28 '#1074' 08:45'
              #9#9#9#9#9'</div>'
              ''
              
                #9#9'<div>yyyyyy: <br>'#1091' '#1084#1077#1085#1103' '#1077#1089#1090#1100' '#1082#1086#1085#1090#1072#1082#1090' '#1074' '#1072#1089#1100#1082#1077'<br>&quot;'#1087#1072#1096#1072'-'#1072#1076#1084 +
                #1080#1085'&quot;<br>yyyyy: <br>'#1074#1086#1090' '#1103' '#1074#1089#1077' '#1074#1088#1077#1084#1103' '#1077#1075#1086' '#1095#1080#1090#1072#1102' &quot;'#1087#1072#1096#1040'-'#1072#1076#1084#1048 +
                #1085'&quot;<br>'#1085#1072' '#1072#1088#1072#1073#1089#1082#1080#1081' '#1084#1072#1085#1077#1088'<br>xxxxx:<br>'#1087#1077#1088#1077#1080#1084#1077#1085#1091#1081' '#1074' '#1072#1076#1084#1080#1085'-'#1087#1072#1096 +
                #1072', '#1095#1090#1086#1073' '#1091#1078' '#1085#1072#1074#1077#1088#1085#1103#1082#1072'</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              
                #9#9#9#9#9#9'<div class="pager"><span class="first">'#1057#1090#1088#1072#1085#1080#1094#1099':</span><sp' +
                'an>407</span><a href="/index/406">406</a><a href="/index/405">40' +
                '5</a><a href="/index/404">404</a><span>'#8230'</span><a href="/index/1' +
                '">1</a><a href="/index/406">&gt;&gt;</a></div><br style="clear: ' +
                'both;" />'#9'</div>'
              ''
              
                #9'<div class="menu">'#1094#1080#1090#1072#1090#1099': <b>['#1087#1086#1089#1083#1077#1076#1085#1080#1077']</b> [<a href="/random"' +
                '>'#1089#1083#1091#1095#1072#1081#1085#1099#1077'</a>] [<a href="/best">'#1083#1091#1095#1096#1080#1077'</a>] [<a href="/byrating' +
                '">'#1087#1086' '#1088#1077#1081#1090#1080#1085#1075#1091'</a>] [<a href="/faq">FAQ</a>] [<a href="/rss">RSS<' +
                '/a>] <br>'#1073#1077#1079#1076#1085#1072': [<a href="/abyss">'#1041#1077#1079#1076#1085#1072'</a>] [<a href="/abysst' +
                'op">'#1090#1086#1087' '#1041#1077#1079#1076#1085#1099'</a>] [<a href="/abyssbest">'#1083#1091#1095#1096#1077#1077' '#1041#1077#1079#1076#1085#1099'</a>] [<a' +
                ' href="/add">'#1076#1086#1073#1072#1074#1080#1090#1100'</a>] <br>'#1095#1090#1086'-'#1090#1086': [<a href="/comics">'#1082#1086#1084#1080#1082#1089 +
                '</a>] [<a href="http://maillist.ru/81859/">'#1088#1072#1089#1089#1099#1083#1082#1072'</a>] [<a hre' +
                'f="/idea">'#1076#1083#1103' '#1084#1086#1073#1080#1083#1100#1085#1080#1082#1072'</a>] [<a href="/webmaster">'#1074#1077#1073#1084#1072#1089#1090#1077#1088#1091'</' +
                'a>] </div>'#9'<hr><center><!--Rating@Mail.ru LOGO--><a target=_top'
              'href="http://top.mail.ru/jump?from=901403"><img'
              'src="http://top.list.ru/counter?id=901403;t=49;l=1"'
              'border=0 height=31 width=88'
              
                'alt="'#1056#1077#1081#1090#1080#1085#1075'@Mail.ru"/></a> <!--/LOGO--><!--LiveInternet logo-->' +
                '<a href="http://www.liveinternet.ru/click"'
              
                'target=_blank><img src="http://counter.yadro.ru/logo?15.1" borde' +
                'r=0'
              'title="LiveInternet"'
              'alt="" width=88 height=31></a><!--/LiveInternet-->'
              ''
              
                '<a href="http://www.yandex.ru/cy?base=0&host=bash.org.ru"><img s' +
                'rc="http://www.yandex.ru/cycounter?bash.org.ru" width="88" heigh' +
                't="31" alt="'#1048#1085#1076#1077#1082#1089' '#1062#1080#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1071'ndex" border="0"></a>'
              '<!-- SpyLOG -->'
              
                '<script src="http://tools.spylog.ru/counter_cv.js" id="spylog_co' +
                'de" type="text/javascript" counter="926575" part="" track_links=' +
                '"ext" page_level="0">'
              '</script>'
              '<noscript>'
              
                '<a href="http://u9265.75.spylog.com/cnt?cid=926575&f=3&p=0" targ' +
                'et="_blank">'
              
                '<img src="http://u9265.75.spylog.com/cnt?cid=926575&p=0" alt="Sp' +
                'yLOG" border="0" width="88" height="31"></a>'
              '</noscript>'
              
                '<!--/ SpyLOG --></center>'#9'<hr><small>'#1048#1076#1077#1103' '#1087#1088#1086#1077#1082#1090#1072' &copy; bash.or' +
                'g.'
              #9'<br>'#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1080' '#1087#1083#1102#1096#1082#1080' &copy; 2004'#8212'2009, '#1082#1086#1084#1072#1085#1076#1072' bash.org.ru.'
              
                #9'<br><a href="/ads">'#1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1076#1083#1103' '#1088#1077#1082#1083#1072#1084#1086#1076#1072#1090#1077#1083#1077#1081'</a>. '#1055#1086' '#1076#1088#1091#1075#1080#1084 +
                ' '#1087#1086#1074#1086#1076#1072#1084': <a href="&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20' +
                '&#115;%75%70&#112;&#111;%72%74&#064;%62&#097;%73&#104;%2e&#111;%' +
                '72&#103;%2e&#114;&#117;">&#115;&#117;&#112;&#112;&#111;&#114;&#1' +
                '16;@&#098;&#097;&#115;&#104;&#046;&#111;&#114;&#103;&#046;&#114;' +
                '&#117;</a>.'
              #9'</small>'
              ''
              '</div>'
              
                '<!--Rating@Mail.ru COUNTER--><script language="JavaScript" type=' +
                '"text/javascript"><!--'
              'd=document;var a='#39#39';a+='#39';r='#39'+escape(d.referrer)'
              
                'js=10//--></script><script language="JavaScript1.1" type="text/j' +
                'avascript"><!--'
              'a+='#39';j='#39'+navigator.javaEnabled()'
              
                'js=11//--></script><script language="JavaScript1.2" type="text/j' +
                'avascript"><!--'
              's=screen;a+='#39';s='#39'+s.width+'#39'*'#39'+s.height'
              'a+='#39';d='#39'+(s.colorDepth?s.colorDepth:s.pixelDepth)'
              
                'js=12//--></script><script language="JavaScript1.3" type="text/j' +
                'avascript"><!--'
              
                'js=13//--></script><script language="JavaScript" type="text/java' +
                'script"><!--'
              'd.write('#39'<img src="http://top.list.ru/counter'#39'+'
              #39'?id=901403;js='#39'+js+a+'#39';rand='#39'+Math.random()+'
              #39'" height=1 width=1/>'#39')'
              'if(11<js)d.write('#39'<'#39'+'#39'!-- '#39')//--></script><noscript><img'
              'src="http://top.list.ru/counter?js=na;id=901403"'
              
                'height=1 width=1 alt=""/></noscript><script language="JavaScript' +
                '" type="text/javascript"><!--'
              'if(11<js)d.write('#39'--'#39'+'#39'>'#39')//--></script><!--/COUNTER-->'
              '<!--LiveInternet counter--><script type="text/javascript"><!--'
              'document.write("<img src='#39'http://counter.yadro.ru/hit?r"+'
              'escape(document.referrer)+((typeof(screen)=="undefined")?"":'
              '";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?'
              'screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+'
              '";"+Math.random()+'
              
                '"'#39' width=1 height=1 alt='#39#39'>")//--></script><!--/LiveInternet--><' +
                'script type="text/javascript">'
              
                'var gaJsHost = (("https:" == document.location.protocol) ? "http' +
                's://ssl." : "http://www.");'
              
                'document.write(unescape("%3Cscript src='#39'" + gaJsHost + "google-a' +
                'nalytics.com/ga.js'#39' type='#39'text/javascript'#39'%3E%3C/script%3E"));'
              '</script>'
              '<script type="text/javascript">'
              'var pageTracker = _gat._getTracker("UA-3271837-1");'
              'pageTracker._initData();'
              'pageTracker._trackPageview();'
              '</script>'
              '</body>'
              '</html>')
            ScrollBars = ssBoth
            TabOrder = 0
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
