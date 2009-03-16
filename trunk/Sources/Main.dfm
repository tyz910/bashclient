object MainForm: TMainForm
  Left = 634
  Top = 315
  Width = 366
  Height = 527
  Caption = 'bClient Alpha version'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MainPageControl: TPageControl
    Left = 0
    Top = 0
    Width = 358
    Height = 493
    ActivePage = OptionsTabSheet
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    OnChanging = MainPageControlChanging
    object BashTabSheet: TTabSheet
      Caption = 'Bash'
      OnEnter = BashTabSheetEnter
      DesignSize = (
        350
        462)
      object QuoteNumberLabel: TLabel
        Left = 0
        Top = 449
        Width = 29
        Height = 13
        Align = alCustom
        Anchors = [akLeft, akBottom]
        Caption = '50/50'
      end
      object QuoteBashNumberLabel: TLabel
        Left = 0
        Top = 25
        Width = 43
        Height = 13
        Align = alCustom
        Caption = '#999999'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object QuoteBashRatingLabel: TLabel
        Left = 320
        Top = 449
        Width = 30
        Height = 13
        Align = alCustom
        Alignment = taRightJustify
        Anchors = [akRight, akBottom]
        BiDiMode = bdLeftToRight
        Caption = '[9999]'
        ParentBiDiMode = False
      end
      object BashQuoteDateLabel: TLabel
        Left = 55
        Top = 25
        Width = 3
        Height = 13
      end
      object PagesRichView: TRichView
        Left = 32
        Top = 442
        Width = 281
        Height = 20
        Anchors = [akLeft]
        TabOrder = 0
        OnClick = PagesRichViewClick
        BorderStyle = bsNone
        BottomMargin = 0
        DoInPaletteMode = rvpaCreateCopies
        HScrollVisible = False
        LeftMargin = 0
        Style = rvstyl1
        VScrollVisible = False
        OnJump = PagesRichViewJump
      end
      object BashPageSelectComboBox: TComboBox
        Left = 0
        Top = 0
        Width = 329
        Height = 21
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = #1043#1083#1072#1074#1085#1072#1103
        OnChange = BashPageSelectComboBoxChange
        OnClick = BashPageSelectComboBoxClick
        Items.Strings = (
          #1043#1083#1072#1074#1085#1072#1103
          #1051#1091#1095#1096#1077#1077' '#1041#1077#1079#1076#1085#1099
          #1058#1086#1087' '#1041#1077#1079#1076#1085#1099
          #1041#1077#1079#1076#1085#1072)
      end
      object BashOrgRuHtmlViewer: TRichView
        Left = 0
        Top = 40
        Width = 350
        Height = 401
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 2
        OnMouseWheel = BashOrgRuHtmlViewerMouseWheel
        DoInPaletteMode = rvpaCreateCopies
        Style = HtmlViewerStyle
      end
      object BashRefreshButton: TBitBtn
        Left = 328
        Top = 0
        Width = 21
        Height = 21
        Anchors = [akTop, akRight]
        Caption = '&'
        TabOrder = 3
        OnClick = BashRefreshButtonClick
        Kind = bkRetry
      end
    end
    object IThappensTabSheet: TTabSheet
      Caption = 'IT happens'
      ImageIndex = 1
      OnEnter = IThappensTabSheetEnter
      DesignSize = (
        350
        462)
      object ITHQuoteNumberLabel: TLabel
        Left = 0
        Top = 449
        Width = 29
        Height = 13
        Align = alCustom
        Anchors = [akLeft, akBottom]
        Caption = '50/50'
      end
      object QuoteITHNumberLabel: TLabel
        Left = 0
        Top = 25
        Width = 31
        Height = 13
        Align = alCustom
        Caption = '#9999'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object QuoteITHRatingLabel: TLabel
        Left = 320
        Top = 449
        Width = 30
        Height = 13
        Align = alCustom
        Anchors = [akRight, akBottom]
        Caption = '[9999]'
      end
      object ITHQuoteNameLabel: TLabel
        Left = 35
        Top = 25
        Width = 3
        Height = 13
      end
      object ITHPagesRichView: TRichView
        Left = 32
        Top = 442
        Width = 283
        Height = 20
        Anchors = [akLeft]
        TabOrder = 0
        OnClick = PagesRichViewClick
        BorderStyle = bsNone
        BottomMargin = 0
        DoInPaletteMode = rvpaCreateCopies
        HScrollVisible = False
        LeftMargin = 0
        Style = rvstyl1
        VScrollVisible = False
        OnJump = PagesRichViewJump
      end
      object ITHPageSelectComboBox: TComboBox
        Left = 0
        Top = 0
        Width = 329
        Height = 21
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = #1043#1083#1072#1074#1085#1072#1103
        OnChange = BashPageSelectComboBoxChange
        OnClick = ITHPageSelectComboBoxClick
        Items.Strings = (
          #1043#1083#1072#1074#1085#1072#1103)
      end
      object ITHHtmlViewer: TRichView
        Left = 0
        Top = 40
        Width = 350
        Height = 393
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 2
        OnMouseWheel = ITHHtmlViewerMouseWheel
        DoInPaletteMode = rvpaCreateCopies
        Style = HtmlViewerStyle
      end
      object ITHRefreshButton: TBitBtn
        Left = 328
        Top = 0
        Width = 21
        Height = 21
        Anchors = [akTop, akRight]
        Caption = '&'
        TabOrder = 3
        OnClick = ITHRefreshButtonClick
        Kind = bkRetry
      end
    end
    object WoWBashTabSheet: TTabSheet
      Caption = 'WoW Bash'
      ImageIndex = 5
      DesignSize = (
        350
        462)
      object WoWBashQuoteNumberLabel: TLabel
        Left = 0
        Top = 449
        Width = 29
        Height = 13
        Align = alCustom
        Anchors = [akLeft, akBottom]
        Caption = '50/50'
      end
      object QuoteWoWBashNumberLabel: TLabel
        Left = 32
        Top = 449
        Width = 31
        Height = 13
        Align = alCustom
        Anchors = [akLeft, akBottom]
        Caption = '#9999'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object QuoteWoWBashRatingLabel: TLabel
        Left = 320
        Top = 449
        Width = 30
        Height = 13
        Align = alCustom
        Alignment = taRightJustify
        Anchors = [akRight, akBottom]
        BiDiMode = bdLeftToRight
        Caption = '[9999]'
        ParentBiDiMode = False
      end
      object WoWBashHtmlViewer: TRichView
        Left = 0
        Top = 24
        Width = 350
        Height = 417
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        OnMouseWheel = WoWBashHtmlViewerMouseWheel
        DoInPaletteMode = rvpaCreateCopies
        Style = HtmlViewerStyle
      end
      object WoWBashPageSelectComboBox: TComboBox
        Left = 0
        Top = 0
        Width = 329
        Height = 21
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = #1043#1083#1072#1074#1085#1072#1103
        OnChange = BashPageSelectComboBoxChange
        OnClick = ITHPageSelectComboBoxClick
        Items.Strings = (
          #1043#1083#1072#1074#1085#1072#1103)
      end
      object WoWBashRefreshButton: TBitBtn
        Left = 328
        Top = 0
        Width = 21
        Height = 21
        Anchors = [akTop, akRight]
        Caption = '&'
        TabOrder = 2
        OnClick = WoWBashRefreshButtonClick
        Kind = bkRetry
      end
      object WoWBashPagesRichView: TRichView
        Left = 75
        Top = 442
        Width = 240
        Height = 20
        Anchors = [akLeft]
        TabOrder = 3
        OnClick = PagesRichViewClick
        BorderStyle = bsNone
        BottomMargin = 0
        DoInPaletteMode = rvpaCreateCopies
        HScrollVisible = False
        LeftMargin = 0
        Style = rvstyl1
        VScrollVisible = False
        OnJump = PagesRichViewJump
      end
    end
    object OptionsTabSheet: TTabSheet
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      ImageIndex = 2
      object lbl2: TLabel
        Left = 0
        Top = 32
        Width = 98
        Height = 13
        Caption = 'HttpConnectTimeout'
      end
      object lbl3: TLabel
        Left = 0
        Top = 56
        Width = 84
        Height = 13
        Caption = 'HttpReadTimeout'
      end
      object FontSelectButton: TButton
        Left = 0
        Top = 0
        Width = 89
        Height = 25
        Caption = #1042#1099#1073#1086#1088' '#1096#1088#1080#1092#1090#1072
        TabOrder = 0
        OnClick = FontSelectButtonClick
      end
      object chklst1: TCheckListBox
        Left = 200
        Top = 248
        Width = 105
        Height = 57
        OnClickCheck = chklst1ClickCheck
        ItemHeight = 13
        Items.Strings = (
          #1043#1083#1072#1074#1085#1072#1103
          #1051#1091#1095#1096#1077#1077' '#1041#1077#1079#1076#1085#1099
          #1058#1086#1087' '#1041#1077#1079#1076#1085#1099
          #1041#1077#1079#1076#1085#1072)
        TabOrder = 1
        Visible = False
      end
      object TestModeCheckBox: TCheckBox
        Left = 0
        Top = 80
        Width = 97
        Height = 17
        Caption = 'Test Mode'
        TabOrder = 2
        OnClick = TestModeCheckBoxClick
      end
      object edt1: TEdit
        Left = 104
        Top = 24
        Width = 41
        Height = 21
        TabOrder = 3
        Text = '2000'
        OnChange = edt1Change
      end
      object edt2: TEdit
        Left = 104
        Top = 48
        Width = 41
        Height = 21
        TabOrder = 4
        Text = '15000'
        OnChange = edt2Change
      end
      object isLogCheckBox: TCheckBox
        Left = 0
        Top = 96
        Width = 97
        Height = 17
        Caption = #1042#1077#1089#1090#1080' '#1083#1086#1075
        TabOrder = 5
        OnClick = isLogCheckBoxClick
      end
    end
    object TestTabSheet: TTabSheet
      Caption = 'TestTab'
      ImageIndex = 4
      object lbl1: TLabel
        Left = 0
        Top = 0
        Width = 350
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
        Width = 350
        Height = 436
        ActivePage = LogTabSheet
        Align = alClient
        TabOrder = 0
        object LogTabSheet: TTabSheet
          Caption = 'Log'
          DesignSize = (
            342
            408)
          object LogListBox: TListBox
            Left = 0
            Top = 0
            Width = 342
            Height = 382
            Anchors = [akLeft, akTop, akRight, akBottom]
            ItemHeight = 13
            TabOrder = 0
          end
          object ConsoleInputEdit: TEdit
            Left = 0
            Top = 385
            Width = 342
            Height = 21
            Anchors = [akLeft, akRight, akBottom]
            TabOrder = 1
          end
        end
        object OtherTabSheet: TTabSheet
          Caption = 'TestMain'
          ImageIndex = 1
          object TestMainMemo: TMemo
            Left = 0
            Top = 0
            Width = 342
            Height = 408
            Align = alClient
            Lines.Strings = (
              '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 '
              'Transitional//EN">'
              '<html>'
              '<head>'
              #9'<title>bash.org.ru - '#1062#1080#1090#1072#1090#1085#1080#1082' '#1056#1091#1085#1077#1090#1072'</title>'
              #9'<link rel="shortcut icon" '
              'href="http://s.bash.org.ru/favicon.ico" '
              'type="image/vnd.microsoft.icon">'
              #9'<link rel="stylesheet" type="text/css" media="screen" '
              'href="http://s.bash.org.ru/screen.css">'
              #9'<link rel="stylesheet" type="text/css" media="handheld" '
              'href="http://s.bash.org.ru/mobile.css">'
              #9'<link rel="alternate" title="Bash.org.ru RSS" '
              'href="http://bash.org.ru/rss/" type="application/rss+xml">'
              #9'<meta http-equiv="Content-Type" content="text/html; '
              'charset=windows-1251">'
              #9'<script src="http://s.bash.org.ru/mtools.js" '
              'language="JavaScript" type="text/javascript"></script> '
              ''
              '</head>'
              '<body style="margin: 0px;">'
              
                '<div style="width: auto; margin: 0px; padding: 0px 0px 0px 30px;' +
                ' '
              
                'background-color: #eee; font-size: 8pt;"><b>[bash.org.ru]</b> [<' +
                'a '
              'href="http://ithappens.ru">IT Happens</a>]</div>'
              '<div id="page">'
              #9'<div class="header"><a href="/"><img '
              'src="http://s.bash.org.ru/logo.gif" width="300" height="40" '
              'alt="bash.org.ru" /></a>bash.org.ru '#8212' '#1062#1080#1090#1072#1090#1085#1080#1082' '#1056#1091#1085#1077#1090#1072'</div>'
              #9'<div class="menu">'
              #9#9'<div style="float: left; width: 500px;">'
              #9#9#9#1094#1080#1090#1072#1090#1099': <b>['#1087#1086#1089#1083#1077#1076#1085#1080#1077']</b> [<a '
              'href="/random">'#1089#1083#1091#1095#1072#1081#1085#1099#1077'</a>] [<a href="/best">'#1083#1091#1095#1096#1080#1077'</a>] [<a '
              'href="/byrating">'#1087#1086' '#1088#1077#1081#1090#1080#1085#1075#1091'</a>] [<a href="/faq">FAQ</a>] [<a '
              'href="/rss">RSS</a>] <br>'#1073#1077#1079#1076#1085#1072': [<a href="/abyss">'#1041#1077#1079#1076#1085#1072'</a>] '
              '[<a href="/abysstop">'#1090#1086#1087' '#1041#1077#1079#1076#1085#1099'</a>] [<a '
              'href="/abyssbest">'#1083#1091#1095#1096#1077#1077' '#1041#1077#1079#1076#1085#1099'</a>] [<a '
              'href="/add">'#1076#1086#1073#1072#1074#1080#1090#1100'</a>] <br>'#1095#1090#1086'-'#1090#1086': [<a '
              'href="/comics">'#1082#1086#1084#1080#1082#1089'</a>] [<a '
              
                'href="http://maillist.ru/81859/">'#1088#1072#1089#1089#1099#1083#1082#1072'</a>] [<a href="/idea">' +
                #1076#1083#1103' '
              #1084#1086#1073#1080#1083#1100#1085#1080#1082#1072'</a>] [<a href="/webmaster">'#1074#1077#1073#1084#1072#1089#1090#1077#1088#1091'</a>] '
              #9#9'</div>'
              ''
              #9#9#9#9'<div style="font-size: 11px; '
              'vertical-align: top;">'
              #9#9#9#1074#1074#1077#1076#1080#1090#1077' '#1090#1077#1082#1089#1090' '#1080#1083#1080' '#1085#1086#1084#1077#1088' '#1094#1080#1090#1072#1090#1099':'
              #9#9#9'<form action="/"><input type="text" '
              'name="text" value="" style="width: 170px; float: left;">'
              #9#9#9'<input type="submit" value="'#1053#1072#1081#1090#1080'" '
              'style="float: right;"></form>'
              #9#9'</div>'
              #9#9'<br style="clear: both;">'#9'</div>'
              #9#9'<div id="quotes">'
              #9#9#9#9'<div class="pager"><span '
              
                'class="first">'#1057#1090#1088#1072#1085#1080#1094#1099':</span><a href="/index/403">&lt;&lt;</a><' +
                'a '
              'href="/index/407">407</a><span>'#8230'</span><a '
              'href="/index/405">405</a><a href="/index/404">404</a><a '
              'href="/index/403">403</a><span>402</span><a '
              'href="/index/401">401</a><a href="/index/400">400</a><a '
              'href="/index/399">399</a><span>'#8230'</span><a '
              'href="/index/1">1</a><a href="/index/401">&gt;&gt;</a></div>'
              ''
              #9#9'<br style="clear: both;"/><div '
              'style="font-size:smaller;"><a href="/hidebad">'#1089#1087#1088#1103#1090#1072#1090#1100' '#1094#1080#1090#1072#1090#1099' '#1089' '
              #1086#1090#1088#1080#1094#1072#1090#1077#1083#1100#1085#1099#1084' '#1088#1077#1081#1090#1080#1085#1075#1086#1084'</a></div>'#9#9'<br style="clear: '
              'both;" />'
              #9#9#9#9#9#9' '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402147">402147</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402147/rulez" onclick="v(402147, 0, 0); return '
              'false;">+</a> <span id="v402147">2788</span> <a '
              'href="/quote/402147/sux" onclick="v(402147, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402147/bayan" '
              'onclick="v(402147, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-16 '#1074' 08:44'
              #9#9#9#9#9'</div>'
              #9#9'<div>xxx<br>'#1076#1086#1088#1072#1073#1086#1090#1072#1083#1089#1103'. '#1089#1077#1075#1086#1076#1085#1103' '#1089#1085#1080#1083#1086#1089#1100', '
              #1095#1090#1086' '#1088#1072#1079#1088#1072#1073#1072#1090#1099#1074#1072#1102' '#1080#1085#1089#1090#1072#1083#1083#1103#1090#1086#1088', '#1082#1086#1090#1086#1088#1099#1081' '#1087#1086#1079#1074#1086#1083#1080#1090' '#1091#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1085#1072' '
              #1088#1077#1073#1077#1085#1082#1072' '#1092#1091#1085#1082#1094#1080#1102' &quot;'#1075#1086#1074#1086#1088#1080#1090#1100'&quot; '#1080' '#1079#1072#1073#1083#1086#1082#1080#1088#1091#1077#1090' '#1092#1091#1085#1082#1094#1080#1102' '
              
                '&quot;'#1087#1083#1072#1082#1072#1090#1100'&quot;<br>xxx<br>deadline - '#1091#1090#1088#1086'. '#1085#1077' '#1089#1084#1086#1075' '#1079#1072#1082#1086#1085#1095#1080#1090#1100 +
                ' - '
              #1088#1077#1073#1077#1085#1086#1082' '#1079#1072#1087#1083#1072#1082#1072#1083' '#1080' '#1088#1072#1079#1073#1091#1076#1080#1083'!</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402146">402146</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402146/rulez" onclick="v(402146, 0, 0); return '
              'false;">+</a> <span id="v402146"> ... </span> <a '
              'href="/quote/402146/sux" onclick="v(402146, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402146/bayan" '
              'onclick="v(402146, 2, 0); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-16 '#1074' 08:12'
              #9#9#9#9#9'</div>'
              ''
              #9#9'<div>&quot;'#1053#1080#1082#1090#1086' '#1079#1072' '#1074#1089#1102' '#1080#1089#1090#1086#1088#1080#1102' '#1070#1085#1077#1090#1072' ('#1089#1072#1081#1090' '
              #1087#1088#1086#1074#1080#1085#1094#1080#1072#1083#1100#1085#1086#1075#1086' '#1075#1086#1088#1086#1076#1082#1072') '#1085#1077' '#1076#1086#1089#1090#1080#1075#1072#1083' '#1090#1072#1082#1086#1075#1086' '#1091#1088#1086#1074#1085#1103' '#1082#1072#1082' '#1103', '#1103' '
              #1073#1086#1083#1077#1077' '#1095#1077#1084' '#1087#1088#1086#1089#1090#1086' '#1072#1076#1084#1080#1085' ('#1091' '#1084#1077#1085#1103' '#1075#1077#1088#1073' '#1096#1091#1083#1100#1094#1074#1072#1092#1092#1077#1085#1072' '#1074#1084#1077#1089#1090#1086' '
              #1079#1074#1105#1079#1076#1086#1095#1077#1082'), '#1091' '#1084#1077#1085#1103' '#1089#1074#1086#1081' '#1088#1072#1079#1076#1077#1083' ('#1091' '#1055#1080#1090#1072' '#1101#1090#1086#1075#1086' '#1085#1077' '#1073#1099#1083#1086'). '#1052#1086#1103' '
              #1074#1083#1072#1089#1090#1100' '#1074#1090#1086#1088#1072#1103' '#1087#1086#1089#1083#1077' '#1074#1083#1072#1089#1090#1080' '#1075#1083#1091#1073#1086#1082#1086' '#1091#1074#1072#1078#1072#1077#1084#1086#1075#1086' '#1084#1085#1086#1081' '#1060#1088#1080#1084#1072'. '
              #1050#1072#1078#1076#1099#1081' '#1076#1077#1085#1100' '#1103' '#1088#1072#1076#1091#1102#1089#1100' '#1089#1074#1086#1077#1084#1091' '#1087#1086#1083#1086#1078#1077#1085#1080#1102', '#1101#1090#1086' '#1083#1091#1095#1096#1077#1077' '#1095#1090#1086' '#1091' '
              #1084#1077#1085#1103' '#1077#1089#1090#1100' - '#1088#1072#1076#1086#1089#1090#1100' '#1074#1083#1072#1089#1090#1080'.&quot;<br>'#1063#1077#1083#1086#1074#1077#1082#1091', '#1085#1072#1087#1080#1089#1072#1074#1096#1077#1084#1091' '
              #1101#1090#1086#1090' '#1087#1086#1089#1090', 20 '#1083#1077#1090'.</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402145">402145</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402145/rulez" onclick="v(402145, 0, 0); return '
              'false;">+</a> <span id="v402145">7568</span> <a '
              'href="/quote/402145/sux" onclick="v(402145, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402145/bayan" '
              'onclick="v(402145, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-16 '#1074' 08:11'
              #9#9#9#9#9'</div>'
              #9#9'<div>'#1057' '#1092#1086#1088#1091#1084#1072' '#1090#1077#1093#1087#1086#1076#1076#1077#1088#1078#1082#1080' '#1086#1076#1085#1086#1081' '#1080#1079' '
              #1076#1086#1084#1072#1096#1085#1080#1093' '#1089#1077#1090#1077#1081':<br><br>Re: '#1055#1054#1051#1054#1046#1048#1058#1045#1051#1068#1053#1067#1045' '#1054#1058#1047#1067#1042#1067'<br>'#171' '
              #1054#1090#1074#1077#1090' #3 : 15 '#1052#1072#1081', 2008, 21:03 '#187'<br><br>'#1080#1079'-'#1079#1072' '#1087#1083#1086#1093#1086#1081' '#1088#1072#1073#1086#1090#1099' '
              #1074#1072#1096#1077#1075#1086' '#1091#1089#1090#1072#1088#1077#1074#1096#1077#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' '#1079#1072' '#1086#1076#1080#1085' '#1084#1077#1089#1103#1094' '#1091#1084#1091#1076#1088#1080#1083#1089#1103' '
              
                #1089#1082#1072#1095#1072#1090#1100' '#1080#1079' '#1080#1085#1090#1077#1088#1085#1077#1090#1072' '#1090#1077#1088#1072#1073#1072#1081#1090' =)<br><br>'#1072', '#1076#1072', '#1095#1091#1090#1100' '#1085#1077' '#1079#1072#1073#1099#1083'. '#1087#1086 +
                ' '
              #1090#1086#1081' '#1078#1077' '#1087#1088#1080#1095#1080#1085#1077' '#1087#1086#1095#1090#1080' '#1075#1086#1076' '#1074#1099' '#1076#1072#1074#1072#1083#1080' '#1084#1085#1077' '#1074#1085#1077#1096#1085#1080#1081' ip '#1085#1072' '#1093#1072#1083#1103#1074#1091' '
              '=)</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402144">402144</a>'
              ''
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402144/rulez" onclick="v(402144, 0, 0); return '
              'false;">+</a> <span id="v402144">6426</span> <a '
              'href="/quote/402144/sux" onclick="v(402144, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402144/bayan" '
              'onclick="v(402144, 2, 0); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-16 '#1074' 08:11'
              #9#9#9#9#9'</div>'
              #9#9'<div>barsukas: '#1042#1095#1077#1088#1072' '#1076#1086#1087#1086#1079#1076#1085#1072' '#1096#1087#1072#1082#1083#1077#1074#1072#1083' '
              #1089#1090#1077#1085#1099' '#1080' '#1087#1086#1090#1086#1083#1086#1082'. <br>barsukas: '#1057#1077#1075#1086#1076#1085#1103' '#1091#1090#1088#1086#1084', '#1085#1072#1084#1072#1079#1099#1074#1072#1103' '
              #1087#1072#1096#1090#1077#1090', '#1084#1077#1093#1072#1085#1080#1095#1077#1089#1082#1080' '#1079#1072#1076#1077#1083#1099#1074#1072#1083' '#1074#1089#1077' '#1076#1099#1088#1082#1080' '#1085#1072' '#1093#1083#1077#1073#1077' '#1080' '#1079#1072#1090#1080#1088#1072#1083' '
              #1085#1077#1088#1086#1074#1085#1086#1089#1090#1080' '#1087#1072#1096#1090#1077#1090#1072'. <br>barsukas: '#1040#1075#1072', '#1072' '#1082#1086#1075#1076#1072' '#1087#1086#1076#1089#1086#1093#1085#1077#1090', '#1085#1072#1076#1086' '
              #1073#1091#1076#1077#1090' '#1096#1082#1091#1088#1082#1086#1081' '#1083#1080#1096#1082#1091' '#1089#1085#1103#1090#1100'...</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402143">402143</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402143/rulez" onclick="v(402143, 0, 0); return '
              'false;">+</a> <span id="v402143"> ... </span> <a '
              'href="/quote/402143/sux" onclick="v(402143, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402143/bayan" '
              'onclick="v(402143, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-15 '#1074' 11:11'
              #9#9#9#9#9'</div>'
              #9#9'<div>xxx: '#1084#1077#1085#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1077' '#1080#1089#1087#1086#1083#1100#1079#1091#1102#1090' '#1074' '
              #1082#1072#1095#1077#1089#1090#1074#1077' '#1073#1091#1084#1072#1078#1085#1086#1075#1086' '#1085#1086#1089#1080#1090#1077#1083#1103'... <br>xxx: '#1090#1086' '#1080#1084' '#1086#1076#1085#1091' '#1073#1091#1084#1072#1078#1082#1091' '
              #1087#1088#1080#1085#1077#1089#1080' '#1090#1086' '#1076#1088#1091#1075#1091#1102'</div>'
              #9'</div>'#9#9#9'<hr class="iq"> '
              '<div class="q"><div><script language='#39'JavaScript'#39' '
              
                'type='#39'text/javascript'#39' src='#39'http://lol.bash.org.ru/b/adx.js'#39'></s' +
                'cript>'
              '<script language='#39'JavaScript'#39' type='#39'text/javascript'#39'>'
              '<!--'
              '   if (!document.phpAds_used) document.phpAds_used = '#39','#39';'
              '   phpAds_random = new String (Math.random()); phpAds_random = '
              'phpAds_random.substring(2,11);'
              '   '
              '   document.write ("<" + "script language='#39'JavaScript'#39' '
              'type='#39'text/javascript'#39' src='#39'");'
              '   document.write ("http://lol.bash.org.ru/b/adjs.php?n=" + '
              'phpAds_random);'
              '   document.write ("&amp;what=zone:2");'
              '   document.write ("&amp;exclude=" + document.phpAds_used);'
              '   if (document.referrer)'
              
                '      document.write ("&amp;referer=" + escape(document.referrer' +
                '));'
              '   document.write ("'#39'><" + "/script>");'
              '//-->'
              
                '</script><noscript><a href='#39'http://lol.bash.org.ru/b/adclick.php' +
                '?n='#39' '
              'target='#39'_blank'#39'><img '
              'src='#39'http://lol.bash.org.ru/b/adview.php?what=zone:2&amp;n='#39' '
              
                'border='#39'0'#39' alt='#39#39'></a></noscript></div></div><div class="q"><div' +
                ' '
              'style="text-align: center; font-size: 10pt;">'#1053#1072' '#1089#1072#1081#1090#1077' <a '
              'href="http://www.platforma2009.ru/">'#1055#1083#1072#1090#1092#1086#1088#1084#1072' Online</a> '#1089#1090#1072#1083#1080' '
              #1076#1086#1089#1090#1091#1087#1085#1099' '#1073#1086#1083#1077#1077' '#1096#1077#1089#1090#1080#1076#1077#1089#1103#1090#1080' '#1090#1077#1093#1085#1080#1095#1077#1089#1082#1080#1093' '#1076#1086#1082#1083#1072#1076#1086#1074' '#1087#1086' '
              #1087#1088#1086#1076#1091#1082#1090#1072#1084' Microsoft, '#1072' '#1090#1072#1082#1078#1077' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1099' '#1082' '#1085#1080#1084' '
              '('#1087#1088#1077#1079#1077#1085#1090#1072#1094#1080#1080', '#1087#1088#1080#1084#1077#1088#1099' '#1082#1086#1076#1072' '#1080' '#1090#1072#1082' '#1076#1072#1083#1077#1077'). <a '
              'href="http://www.platforma2009.ru/">'#1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1091#1081#1090#1077#1089#1100'</a> '#1080' '
              #1089#1090#1072#1085#1100#1090#1077' '#1086#1076#1085#1080#1084' '#1080#1079' '#1091#1095#1072#1089#1090#1085#1080#1082#1086#1074' '#1055#1083#1072#1090#1092#1086#1088#1084#1099' Online!</div></div> '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402142">402142</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402142/rulez" onclick="v(402142, 0, 0); return '
              'false;">+</a> <span id="v402142"> ... </span> <a '
              'href="/quote/402142/sux" onclick="v(402142, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402142/bayan" '
              'onclick="v(402142, 2, 0); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-15 '#1074' 10:46'
              #9#9#9#9#9'</div>'
              ''
              #9#9'<div>23:50:37 Bonarieta:<br>'#1076#1080#1082#1086#1077' '#1074#1086#1083#1085#1077#1085#1080#1077' '
              #1082#1072#1082#1086#1077'-'#1090#1086'<br>'#1073#1091#1076#1090#1086' '#1079#1072#1074#1090#1088#1072' '#1088#1086#1078#1072#1090#1100', '#1072' '#1085#1077' '#1089#1076#1072#1074#1072#1090#1100', '
              #1095#1077#1089#1089#1083#1086#1074#1086'<br>23:51:19 Irishko:<br>'#1086#1093', '#1103' '#1073' '#1083#1091#1095#1096#1077' '#1088#1086#1076#1080#1083#1072'</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402141">402141</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402141/rulez" onclick="v(402141, 0, 0); return '
              'false;">+</a> <span id="v402141"> ... </span> <a '
              'href="/quote/402141/sux" onclick="v(402141, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402141/bayan" '
              'onclick="v(402141, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-15 '#1074' 10:12'
              #9#9#9#9#9'</div>'
              #9#9'<div>'#1042#1080#1082#1090#1086#1088'(ErmyGOOD): '#1082#1086#1075#1076#1072' '#1077#1084', '#1103' '#1075#1083#1091#1093' '#1080' '
              #1085#1077#1084', '#1085#1086' '#1077#1090#1086' '#1087#1077#1095#1072#1090#1072#1090#1100' '#1085#1077' '#1084#1077#1096#1072#1077#1090'. '#1089#1090#1088#1072#1085#1085#1086'.</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402140">402140</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402140/rulez" onclick="v(402140, 0, 0); return '
              'false;">+</a> <span id="v402140">39</span> <a '
              'href="/quote/402140/sux" onclick="v(402140, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402140/bayan" '
              'onclick="v(402140, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-15 '#1074' 10:11'
              #9#9#9#9#9'</div>'
              #9#9'<div>Mari: '#1058#1099' '#1074' '#1082#1072#1082#1086#1084' '#1082#1086#1089#1090#1102#1084#1077' '#1073#1091#1076#1077#1096#1100'? '#1103' '
              #1074#1077#1076#1100#1084#1086#1095#1082#1086#1081'!<br>yura: '#1072' '#1103' '#1074' '#1082#1086#1089#1090#1102#1084#1077' '#1087#1088#1086#1075#1088#1072#1084#1084#1080#1089#1090#1072' )<br>Mari: '
              #1087#1086#1090#1086#1084' '#1089#1082#1080#1085#1077#1096#1100' '#1092#1086#1090#1086', '#1087#1086#1089#1084#1086#1090#1088#1077#1090#1100'?</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402139">402139</a>'
              ''
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402139/rulez" onclick="v(402139, 0, 0); return '
              'false;">+</a> <span id="v402139">8326</span> <a '
              'href="/quote/402139/sux" onclick="v(402139, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402139/bayan" '
              'onclick="v(402139, 2, 0); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-15 '#1074' 10:11'
              #9#9#9#9#9'</div>'
              #9#9'<div>xxx: '#1090#1072#1084' '#1074#1086#1076#1085#1099#1081' '#1089#1090#1072#1076#1080#1086#1085' '#1076#1080#1085#1072#1084#1086'... '#1073#1099#1083'... '
              #1090#1077#1087#1077#1088#1100' '#1101#1083#1080#1090#1085#1099#1081' '#1103#1093#1090#1082#1083#1091#1073'...<br>'#1091#1091#1091': '#1089#1080#1083#1100#1085#1086' '#1101#1083#1080#1090#1085#1099#1081'?<br>'#1093#1093#1093': '#1087#1080#1089#1077#1094' '
              #1082#1072#1082'...<br>'#1091#1091#1091': '#1082#1083#1072#1089#1089'. '#1076#1072#1074#1072#1081' '#1074#1089#1090#1091#1087#1080#1084'?<br>'#1093#1093#1093': '#1091' '#1090#1077#1073#1103' '#1077#1089#1090#1100' '#1103#1093#1090#1072'? '
              ')<br>'#1091#1091#1091': '#1073#1083#1080#1085'.. '#1082#1072#1082' '#1090#1099' '#1084#1077#1085#1103'.. '#1084#1086#1088#1076#1086#1081' '#1086#1073' '#1072#1089#1092#1072#1083#1100#1090'..</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402138">402138</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402138/rulez" onclick="v(402138, 0, 0); return '
              'false;">+</a> <span id="v402138">97</span> <a '
              'href="/quote/402138/sux" onclick="v(402138, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402138/bayan" '
              'onclick="v(402138, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-15 '#1074' 09:46'
              #9#9#9#9#9'</div>'
              #9#9'<div>'#1053#1072#1094#1080#1103', '#1082#1086#1090#1086#1088#1072#1103' '#1086#1090#1085#1086#1089#1080#1090#1089#1103' '#1082' '#1076#1088#1091#1075#1086#1081' '#1085#1072#1094#1080#1080' '
              #1089' '#1087#1088#1080#1074#1099#1095#1085#1086#1081' '#1085#1077#1085#1072#1074#1080#1089#1090#1100#1102' '#1080#1083#1080' '#1087#1088#1080#1074#1099#1095#1085#1099#1084#1080' '#1076#1086#1073#1088#1099#1084#1080' '#1095#1091#1074#1089#1090#1074#1072#1084#1080', '#1074' '
              #1086#1087#1088#1077#1076#1077#1083#1077#1085#1085#1086#1081' '#1089#1090#1077#1087#1077#1085#1080' '#1103#1074#1083#1103#1077#1090#1089#1103' '#1088#1072#1073#1086#1084'. '#1058#1072#1082#1072#1103' '#1085#1072#1094#1080#1103' '#8212' '#1088#1072#1073' '#1089#1074#1086#1077#1081' '
              #1074#1088#1072#1078#1076#1077#1073#1085#1086#1089#1090#1080' '#1080#1083#1080' '#1089#1074#1086#1080#1093' '#1076#1086#1073#1088#1099#1093' '#1095#1091#1074#1089#1090#1074', '#1083#1102#1073#1086#1075#1086' '#1080#1079' '#1076#1074#1091#1093' '
              #1076#1086#1089#1090#1072#1090#1086#1095#1085#1086', '#1095#1090#1086#1073#1099' '#1091#1074#1077#1089#1090#1080' '#1077#1077' '#1086#1090' '#1089#1074#1086#1077#1075#1086' '#1076#1086#1083#1075#1072' '#1080' '
              #1080#1085#1090#1077#1088#1077#1089#1086#1074'.<br><br>'#1044#1078#1086#1088#1078' '#1042#1072#1096#1080#1085#1075#1090#1086#1085'</div>'
              #9'</div>'#9#9#9' '
              #9#9#9'<hr class="iq"> '
              '<div class="q"><div><center><iframe '
              'src="http://lol.bash.org.ru/_ad.php?zone=zone:3" '
              'allowtransparency="true" style="background-color:#f3f3f3;" '
              'width="600" height="90" marginwidth="0" marginheight="0" '
              'scrolling="no" frameborder="0" name="ctf" '
              'id="ctf"></iframe></center></div></div> '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402137">402137</a>'
              ''
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402137/rulez" onclick="v(402137, 0, 0); return '
              'false;">+</a> <span id="v402137"> ... </span> <a '
              'href="/quote/402137/sux" onclick="v(402137, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402137/bayan" '
              'onclick="v(402137, 2, 0); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-15 '#1074' 09:13'
              #9#9#9#9#9'</div>'
              #9#9'<div>&lt;xxxxxxx&gt;<br>'#1077#1077' '#1073#1099' '#1089#1087#1077#1090#1100' '#1074' 2 '#1088#1072#1079#1072' '
              #1073#1099#1089#1090#1088#1077#1081' - '#1073#1099#1083#1086' '#1073#1099' '#1093#1086#1090#1100' '#1095#1090#1086'-'#1090#1086', '#1072' '#1090#1072#1082' '#1086#1095#1077#1085#1100' '
              #1075#1088#1091#1089#1090#1085#1086'<br><br>&lt;Lestar&gt;<br>'#1091#1075#1091', '#1072' '#1092#1100#1102#1085#1077#1088#1072#1083' '#1076#1091#1084' '#1091#1089#1082#1086#1088#1103#1077#1084' '
              #1088#1072#1079' '#1074' 8, '#1076#1086#1073#1072#1074#1083#1103#1077#1084' '#1076#1091#1076#1082#1080' '#1080' '#1087#1086#1083#1091#1095#1072#1077#1084' '#1089#1082#1072'-'#1087#1072#1085#1082'?</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402136">402136</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402136/rulez" onclick="v(402136, 0, 0); return '
              'false;">+</a> <span id="v402136"> ... </span> <a '
              'href="/quote/402136/sux" onclick="v(402136, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402136/bayan" '
              'onclick="v(402136, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-15 '#1074' 09:12'
              #9#9#9#9#9'</div>'
              #9#9'<div>xxx: '#1050#1086#1075#1076#1072' '#1074#1086' '#1074#1088#1077#1084#1103' '#1088#1072#1073#1086#1090#1099' '#1084#1085#1077' '#1075#1086#1074#1086#1088#1103#1090' '
              #1088#1072#1073#1086#1090#1072#1090#1100' '#1085#1072#1076' '#1076#1088#1091#1075#1086#1081' '#1079#1072#1076#1072#1095#1077#1081', '#1103' '#1089#1077#1073#1103' '#1095#1091#1074#1089#1090#1074#1091#1102' '#1082#1072#1082' P4 '#1074#1086' '#1074#1088#1077#1084#1103' '
              #1089#1073#1088#1086#1089#1072' '#1082#1077#1096#1072' '#1087#1072#1084#1103#1090#1080' =)<br>xxx: '#1080#1079'-'#1079#1072' '#1085#1077#1074#1077#1088#1085#1086#1075#1086' '#1087#1088#1086#1075#1085#1086#1079#1080#1088#1086#1074#1072#1085#1080#1103' '
              #1074#1077#1090#1074#1083#1077#1085#1080#1081'.</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402135">402135</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402135/rulez" onclick="v(402135, 0, 0); return '
              'false;">+</a> <span id="v402135">9153</span> <a '
              'href="/quote/402135/sux" onclick="v(402135, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402135/bayan" '
              'onclick="v(402135, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-15 '#1074' 09:11'
              #9#9#9#9#9'</div>'
              #9#9'<div>xxx: '#1042' '#1089#1091#1087#1077#1088#1084#1072#1088#1082#1077#1090#1077' '#1091' '#1082#1072#1089#1089#1099' '#1087#1086#1089#1090#1072#1074#1080#1083#1080' '
              #1079#1072#1095#1077#1084'-'#1090#1086' '#1073#1086#1083#1100#1096#1091#1102' '#1089#1090#1086#1081#1082#1091' '#1089' '#1087#1088#1077#1079#1077#1088#1074#1072#1090#1080#1074#1072#1084#1080'. '#1055#1086#1076#1082#1072#1090#1099#1074#1072#1102' '#1089' '
              #1090#1077#1083#1077#1078#1082#1086#1081', '#1085#1072#1073#1083#1102#1076#1072#1102' '#1086#1082#1086#1083#1086' '#1101#1090#1086#1081' '#1089#1090#1086#1081#1082#1080' '#1082#1072#1088#1090#1080#1085#1091': '#1089#1090#1086#1080#1090' '#1087#1072#1094#1072#1085' '#1083#1077#1090' '
              '5 '#1080' '#1103#1074#1085#1086' '#1085#1072#1084#1077#1088#1077#1074#1072#1077#1090#1089#1103' '#1074#1079#1103#1090#1100' '#1086#1090#1090#1091#1076#1072' '#1087#1072#1088#1091' '#1073#1086#1083#1100#1096#1080#1093' '#1082#1086#1088#1086#1073#1086#1082'. '
              #1056#1103#1076#1086#1084' '#1084#1072#1084#1072#1096#1072' '#1074#1086#1083#1085#1091#1077#1090#1089#1103', '#1087#1088#1080#1076#1091#1084#1099#1074#1072#1077#1090' '#1074#1089#1103#1082#1080#1077' '#1086#1090#1075#1086#1074#1086#1088#1082#1080', '#1085#1086' '#1085#1077' '
              #1093#1086#1095#1077#1090' '#1087#1088#1080' '#1074#1089#1077#1093' '#1090#1091#1090' '#1086#1073#1098#1103#1089#1085#1103#1090#1100' '#1087#1072#1094#1072#1085#1091', '#1095#1090#1086' '#1101#1090#1086' '#1090#1072#1082#1086#1077' '#1080' '#1076#1083#1103' '#1095#1077#1075#1086' '
              #1085#1072#1076#1086'. '#1054#1095#1077#1088#1077#1076#1100', '#1087#1086#1085#1103#1090#1085#1086#1077' '#1076#1077#1083#1086', '#1076#1077#1083#1072#1077#1090' '#1074#1080#1076', '#1095#1090#1086' '#1085#1080#1095#1077#1075#1086' '#1074#1086#1082#1088#1091#1075' '#1085#1077' '
              #1074#1080#1076#1080#1090', '#1085#1086' '#1087#1088#1080' '#1101#1090#1086#1084' '#1079#1072#1080#1085#1090#1077#1088#1077#1089#1086#1074#1072#1085#1085#1086' '#1089#1083#1091#1096#1072#1077#1090'. '#1053#1072' '#1088#1077#1096#1072#1102#1097#1080#1081' '
              #1072#1088#1075#1091#1084#1077#1085#1090' '#1084#1072#1084#1072#1096#1080' '#1091#1078#1077' '#1085#1080#1082#1090#1086' '#1085#1077' '#1089#1076#1077#1088#1078#1080#1074#1072#1077#1090#1089#1103': &quot;'#1052#1072#1082#1089#1080#1084'! '#1053#1091' '
              #1101#1090#1086' '#1078#1077' '#1087#1072#1079#1079#1083#1099'! '#1058#1099' '#1080#1093' '#1074#1089#1077' '#1088#1072#1074#1085#1086' '#1089#1086#1073#1080#1088#1072#1090#1100' '#1085#1077' '
              #1073#1091#1076#1077#1096#1100'!&quot;<br></div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402134">402134</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402134/rulez" onclick="v(402134, 0, 0); return '
              'false;">+</a> <span id="v402134">2015</span> <a '
              'href="/quote/402134/sux" onclick="v(402134, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402134/bayan" '
              'onclick="v(402134, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-15 '#1074' 08:46'
              #9#9#9#9#9'</div>'
              #9#9'<div>bacsi<br>'#1082#1089#1090#1072#1090#1080', '#1089#1087#1086#1088#1085#1099#1081' '
              #1074#1086#1087#1088#1086#1089'<br>'#1087#1086#1075#1083#1103#1076#1077#1090#1100' '#1080#1089#1090#1086#1088#1080#1102', '#1090#1072#1082' '#1074#1089#1077' '#1088#1077#1072#1083#1100#1085#1099#1077' '#1072#1088#1080#1089#1090#1086#1082#1088#1072#1090#1099' '
              #1040#1085#1075#1083#1080#1080' - '#1087#1086#1075#1086#1083#1086#1074#1085#1099#1077' '#1089#1085#1086#1073#1099'<br><br>Kid<br>'#1091' '#1084#1077#1085#1103' '#1073#1099' '#1087#1088#1077#1076#1082#1080' '#1087#1086#1076' '
              #1095#1077#1088#1085#1099#1084' '#1088#1086#1076#1078#1077#1088#1086#1084' '#1085#1072' '#1072#1073#1086#1088#1076#1072#1078' '#1093#1086#1076#1080#1083#1080' - '#1103' '#1073#1099' '#1085#1077' '#1090#1086#1083#1100#1082#1086' '#1089#1085#1086#1073#1086#1084' '
              #1073#1099#1083', '#1103' '#1073#1099' '#1080#1079' '#1087#1088#1080#1085#1094#1080#1087#1072' '#1074#1086#1086#1073#1097#1077' '#1073#1099' '#1085#1080' '#1089' '#1082#1077#1084' '#1085#1077' '#1088#1072#1079#1075#1086#1074#1072#1088#1080#1074#1072#1083' '#1080' '
              #1080#1079#1098#1103#1089#1085#1103#1083#1089#1103' '#1090#1086#1083#1100#1082#1086' '#1078#1077#1089#1090#1072#1084#1080', '#1080' '#1084#1072#1090#1086#1084', '#1082#1086#1075#1076#1072' '#1089#1090#1088#1072#1096#1085#1086'</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402133">402133</a>'
              ''
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402133/rulez" onclick="v(402133, 0, 0); return '
              'false;">+</a> <span id="v402133">9532</span> <a '
              'href="/quote/402133/sux" onclick="v(402133, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402133/bayan" '
              'onclick="v(402133, 2, 0); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-15 '#1074' 08:45'
              #9#9#9#9#9'</div>'
              #9#9'<div>'#1093#1093#1093': '#1071' '#1074' '#1089#1074#1086#1077#1081' '#1078#1080#1079#1085#1080' '#1087#1080#1083' '#1054#1063#1045#1053#1068' '#1084#1085#1086#1075#1086' '
              #1087#1080#1074#1072'... '#1056#1077#1082#1086#1088#1076'-24 '#1073#1091#1090#1099#1083#1082#1080' (0.5) '#1073#1077#1082#1089#1072' '#1074' '#1089#1091#1090#1082#1080'. '#1058#1072#1082#1078#1077' '#1084#1085#1086#1075#1086' '#1087#1080#1083' '
              #1101#1083#1080#1090#1085#1086#1075#1086' '#1088#1072#1079#1083#1080#1074#1085#1086#1075#1086' '#1074' '#1088#1072#1079#1083#1080#1095#1085#1099#1093' '#1082#1072#1073#1072#1082#1072#1093'. '#1047#1072#1084#1077#1085#1080#1090#1100' '#1084#1085#1077' '#1087#1080#1074#1086' '
              #1084#1086#1078#1077#1090' '#1090#1086#1083#1100#1082#1086' '#1087#1086#1083#1091#1089#1083#1072#1076#1082#1086#1077' '#1096#1072#1084#1087#1072#1085#1089#1082#1086#1077'. '#1042#1089#1077'. '#1053#1077#1089#1084#1086#1090#1088#1103' '#1085#1080' '#1085#1072' '
              #1082#1072#1082#1080#1077' '#1080#1085#1089#1080#1085#1091#1072#1094#1080#1080', '#1103' '#1087#1080#1083', '#1087#1100#1102' '#1080' '#1073#1091#1076#1091' '#1087#1080#1090#1100' '#1087#1080#1074#1086'.<br>yyy: '#1087#1077#1081', '#1082#1090#1086' '
              #1090#1077#1073#1077' '#1079#1072#1087#1088#1077#1097#1072#1077#1090'-'#1090#1086', '#1090#1086#1083#1100#1082#1086' '#1085#1077' '#1088#1072#1079#1084#1085#1086#1078#1072#1081#1089#1103'</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402132">402132</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402132/rulez" onclick="v(402132, 0, 0); return '
              'false;">+</a> <span id="v402132">4</span> <a '
              'href="/quote/402132/sux" onclick="v(402132, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402132/bayan" '
              'onclick="v(402132, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-15 '#1074' 08:13'
              #9#9#9#9#9'</div>'
              #9#9'<div>xxx: '#1086#1085' '#1076#1072#1078#1077' '#1079#1072#1082#1072#1095#1072#1083' '#1084#1086#1080' '#1092#1086#1090#1082#1080' '#1085#1072' '
              #1087#1089#1087'<br>xxx: '#1090#1072#1082#1086#1075#1086' '#1077#1097#1077' '#1085#1080#1082#1090#1086' '#1085#1077' '#1076#1077#1083#1072#1083'</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402131">402131</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402131/rulez" onclick="v(402131, 0, 0); return '
              'false;">+</a> <span id="v402131">11740</span> <a '
              'href="/quote/402131/sux" onclick="v(402131, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402131/bayan" '
              'onclick="v(402131, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-14 '#1074' 17:58'
              #9#9#9#9#9'</div>'
              #9#9'<div>'#1055#1086#1083#1091#1095#1080#1083#1080' '#1086#1090#1074#1077#1090' '#1086#1090' '#1090#1077#1093'. '#1087#1086#1076#1076#1077#1088#1078#1082#1080' '
              #1082#1080#1090#1072#1081#1089#1082#1086#1081' '#1082#1086#1084#1087#1072#1085#1080#1080' huawei, '#1086#1076#1085#1072' '#1080#1079' '#1089#1090#1088#1086#1082' - &quot;'#1050#1080#1090#1072#1081#1089#1082#1086#1077' '
              #1101#1083#1077#1082#1090#1088#1080#1095#1077#1089#1090#1074#1086' '#1076#1086' '#1082#1086#1085#1094#1072' '#1085#1077' '#1080#1079#1091#1095#1077#1085#1086'...&quot;</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402130">402130</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402130/rulez" onclick="v(402130, 0, 0); return '
              'false;">+</a> <span id="v402130">73</span> <a '
              'href="/quote/402130/sux" onclick="v(402130, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402130/bayan" '
              'onclick="v(402130, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-14 '#1074' 17:46'
              #9#9#9#9#9'</div>'
              #9#9'<div>xxx: '#1047#1085#1072#1077#1096#1100', '#1082#1072#1082' '#1084#1077#1085#1103' '#1087#1077#1088#1077#1076' '#1085#1086#1074#1099#1084' '
              #1075#1086#1076#1086#1084' '#1086#1073#1088#1072#1076#1086#1074#1072#1083#1080'?<br>yyy: '#1053#1077#1090', '#1082#1072#1082'?<br>xxx: '#1057#1082#1072#1079#1072#1083#1080', '#1095#1090#1086' '
              #1085#1072#1087#1088#1103#1078#1077#1085#1082#1080' '#1085#1077' '#1073#1091#1076#1077#1090', '#1090#1086' '#1073#1080#1096#1100' 50% '#1086#1082#1083#1072#1076#1072' '#1085#1077' '#1076#1086#1073#1072#1074#1103#1090' '#1079#1072' '#1101#1090#1086#1090' '
              #1084#1077#1089#1103#1094' '#1082' '#1047#1055'!!<br>yyy: '#1058#1099' '#1095#1077', '#1076#1077#1073#1080#1083' '#1095#1090#1086#1083#1100'?<br>xxx: '#1053#1077#1090', '#1087#1088#1086#1089#1090#1086' '
              #1082#1086#1075#1076#1072' '#1085#1072#1095#1072#1083#1080' '#1074#1089#1090#1091#1087#1083#1077#1085#1080#1077', '#1103' '#1076#1091#1084#1072#1083', '#1095#1090#1086' '#1087#1086#1076' '#1089#1086#1082#1088#1072#1097#1077#1085#1080#1077' '
              #1087#1086#1087#1072#1083'.</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402129">402129</a>'
              ''
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402129/rulez" onclick="v(402129, 0, 0); return '
              'false;">+</a> <span id="v402129">5721</span> <a '
              'href="/quote/402129/sux" onclick="v(402129, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402129/bayan" '
              'onclick="v(402129, 2, 0); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-14 '#1074' 17:45'
              #9#9#9#9#9'</div>'
              #9#9'<div>&lt;Ruf-Net5&gt; '#1052#1085#1086#1075#1086'-'#1084#1085#1086#1075#1086' '#1076#1077#1085#1077#1075' '
              #1079#1072#1088#1072#1073#1086#1090#1072#1077#1090' '#1095#1077#1083#1086#1074#1077#1082', '#1082#1086#1090#1086#1088#1099#1081' '#1080#1079#1086#1073#1088#1077#1090#1077#1090' '#1089#1072#1084#1086#1074#1099#1073#1088#1072#1089#1099#1074#1072#1102#1097#1091#1102#1089#1103' '
              #1085#1086#1074#1086#1075#1086#1076#1085#1102#1102' '#1077#1083#1082#1091'...</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402128">402128</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402128/rulez" onclick="v(402128, 0, 0); return '
              'false;">+</a> <span id="v402128">1556</span> <a '
              'href="/quote/402128/sux" onclick="v(402128, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402128/bayan" '
              'onclick="v(402128, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-14 '#1074' 17:13'
              #9#9#9#9#9'</div>'
              #9#9'<div>xxx: '#1084#1086#1078#1077#1090' '#1095#1072#1089#1099' '#1087#1086#1076#1072#1088#1080#1084'?<br>yyy: '#1076#1072' '#1085#1077', '
              #1074#1086#1086#1073#1097#1077'-'#1090#1086' '#1095#1072#1089#1099' - '#1101#1090#1086' '#1082' '#1088#1072#1089#1089#1090#1072#1074#1072#1085#1080#1102', '#1079#1072#1095#1077#1084' '#1086#1085#1086' '#1090#1077#1073#1077' '#1085#1072#1076#1086' '#1074' '
              #1082#1072#1085#1091#1085' '#1089#1077#1089#1089#1080#1080'?</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402127">402127</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402127/rulez" onclick="v(402127, 0, 0); return '
              'false;">+</a> <span id="v402127"> ... </span> <a '
              'href="/quote/402127/sux" onclick="v(402127, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402127/bayan" '
              'onclick="v(402127, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-14 '#1074' 13:45'
              #9#9#9#9#9'</div>'
              #9#9'<div>xxx: '#1089#1084#1086#1090#1088#1080#1090#1077' '#1085#1086#1074#1099#1081' '#1087#1086#1083#1085#1086#1084#1077#1090#1088#1072#1078#1085#1099#1081' '
              #1087#1088#1086#1075#1088#1072#1084#1084#1080#1089#1090#1089#1082#1080#1081' '#1090#1088#1080#1083#1083#1077#1088' &quot;'#1058#1072#1073#1083#1080#1094#1072' '#1086#1096#1080#1073#1072#1077#1090#1089#1103' '#1090#1086#1083#1100#1082#1086' '
              #1086#1076#1085#1072#1078#1076#1099'...&quot;<br>yyy: '#1089#1084#1086#1090#1088#1080#1090#1077' '#1085#1086#1074#1099#1081' '#1087#1086#1083#1085#1086#1084#1077#1090#1088#1072#1078#1085#1099#1081' '
              #1087#1088#1086#1075#1088#1072#1084#1084#1080#1089#1090#1089#1082#1080#1081' '#1090#1088#1080#1083#1083#1077#1088' &quot;'#1055#1088#1072#1074#1080#1083#1100#1085#1086' '#1089#1086#1089#1090#1072#1074#1083#1077#1085#1085#1072#1103' '
              #1090#1072#1073#1083#1080#1094#1072' '#1085#1077' '#1086#1096#1080#1073#1072#1077#1090#1089#1103' '#1085#1080#1082#1086#1075#1076#1072'...&quot;<br>xxx: '#1072#1088#1088#1088#1075#1093#1093#1093'... 1:1 '
              '=)</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402126">402126</a>'
              ''
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402126/rulez" onclick="v(402126, 0, 0); return '
              'false;">+</a> <span id="v402126">10065</span> <a '
              'href="/quote/402126/sux" onclick="v(402126, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402126/bayan" '
              'onclick="v(402126, 2, 0); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-14 '#1074' 13:12'
              #9#9#9#9#9'</div>'
              #9#9'<div>'#1055#1077#1088#1077#1087#1080#1089#1082#1072' '#1089' '#1076#1077#1074#1091#1096#1082#1086#1081' '#1080#1079' '#1043#1088#1091#1079#1080#1080'<br>'#1086#1085': '
              #1057#1077#1075#1086#1076#1085#1103' '#1082#1091#1087#1080#1083' '#1083#1080#1094#1077#1085#1079#1080#1086#1085#1085#1091#1102' '#1080#1075#1088#1091' '#1079#1072' 400'#1088'.<br>'#1086#1085#1072': '#1071' '#1085#1077' '
              #1088#1072#1079#1073#1080#1088#1072#1102#1089#1100' '#1074' '#1088#1091#1073#1083#1103#1093', '#1085#1077' '#1087#1088#1077#1076#1089#1090#1086#1074#1083#1103#1102' '#1076#1072#1078#1077' '#1089#1082#1086#1083#1100#1082#1086' '#1101#1090#1086'.<br>'#1086#1085': '
              #1052#1084#1084'... 26 '#1073#1091#1093#1072#1085#1086#1082' '#1093#1083#1077#1073#1072' :).<br>'#1086#1085#1072': '#1042#1086#1090' '#1079#1072' '#1101#1090#1086' '#1103' '#1090#1077#1073#1103' '#1080' '#1083#1102#1073#1083#1102', '
              #1076#1088#1091#1075#1086#1081' '#1073#1099' '#1089#1082#1086#1083#1100#1082#1086' '#1101#1090#1086' '#1074' '#1076#1086#1083#1083#1072#1088#1072#1093' '#1085#1072#1087#1080#1089#1072#1083', '#1080#1083#1080' '#1074' '#1077#1074#1088#1086', '#1072' '#1090#1099' '#1074#1086#1090' '
              #1082#1072#1082' :))</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402125">402125</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402125/rulez" onclick="v(402125, 0, 0); return '
              'false;">+</a> <span id="v402125">7668</span> <a '
              'href="/quote/402125/sux" onclick="v(402125, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402125/bayan" '
              'onclick="v(402125, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-14 '#1074' 13:12'
              #9#9#9#9#9'</div>'
              #9#9'<div>'#1057#1077#1075#1086#1076#1085#1103' '#1074#1089#1090#1072#1083' '#1074' 7 '#1095#1090#1086#1073#1099' '#1089#1093#1086#1076#1080#1090#1100' '#1074' '
              #1092#1080#1090#1085#1077#1089'-'#1094#1077#1085#1090#1088' '#1080' '#1091#1089#1087#1077#1090#1100' '#1086#1090#1087#1091#1089#1090#1080#1090#1100' '#1078#1077#1085#1091' '#1085#1072' '#1084#1072#1089#1089#1072#1078' '#1082' '
              '9.<br>'#1055#1077#1088#1077#1086#1076#1077#1074#1096#1080#1089#1100' '#1086#1073#1085#1072#1088#1091#1078#1080#1083', '#1095#1090#1086' '#1085#1077' '#1084#1086#1075#1091' '#1079#1072#1082#1088#1099#1090#1100' '#1096#1082#1072#1092#1095#1080#1082'. '
              #1054#1073#1103#1089#1085#1103#1083#1086#1089#1100' '#1101#1090#1086' '#1087#1088#1086#1089#1090#1086': '#1084#1085#1077' '#1076#1072#1083#1080' '#1082#1083#1102#1095#1080' '#1086#1090' 99-'#1075#1086', '#1072' '#1088#1072#1079#1076#1077#1083#1089#1103' '#1103' '#1074' '
              '66-'#1086#1081'. '#1055#1088#1080#1096#1083#1086#1089#1100' '#1087#1077#1088#1077#1085#1077#1089#1090#1080' '#1074#1077#1097#1080'. '#1063#1090#1086#1073#1099' '#1087#1077#1088#1077#1085#1086#1089#1080#1090#1100' '#1073#1099#1083#1086' '
              #1091#1076#1086#1073#1085#1077#1077', '#1082#1091#1088#1090#1082#1091' '#1080' '#1092#1083#1080#1089#1082#1091' '#1074#1079#1103#1083' '#1074#1084#1077#1089#1090#1077' '#1089' '#1087#1083#1077#1095#1080#1082#1072#1084#1080'. '#1055#1088#1072#1074#1076#1072', '
              #1087#1083#1077#1095#1080#1082#1080' '#1090#1072#1084' '#1073#1099#1083#1080' '#1077#1076#1080#1085#1089#1090#1077#1085#1085#1099#1077', '#1085#1086' '#1087#1077#1088#1077#1074#1077#1096#1080#1074#1072#1090#1100' '#1073#1099#1083#1086' '
              #1083#1077#1085#1100'.<br>'#1047#1072#1090#1086' '#1074' '#1096#1082#1072#1092#1095#1080#1082#1077' '#1085#1086#1084#1077#1088' 99 '#1101#1090#1080' '#1087#1083#1077#1095#1080#1082#1080' '#1086#1082#1072#1079#1072#1083#1080#1089#1100' '#1091#1078#1077' '
              #1087#1103#1090#1099#1077'... :-)</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402124">402124</a>'
              ''
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402124/rulez" onclick="v(402124, 0, 0); return '
              'false;">+</a> <span id="v402124"> ... </span> <a '
              'href="/quote/402124/sux" onclick="v(402124, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402124/bayan" '
              'onclick="v(402124, 2, 0); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-14 '#1074' 12:45'
              #9#9#9#9#9'</div>'
              #9#9'<div>'#1042' '#1086#1076#1085#1086#1084' '#1080#1079' '#1073#1072#1088#1086#1074' '#1071#1088#1086#1089#1083#1072#1074#1083#1103':<br>- '#1053#1072#1084' 2 '
              #1089#1072#1084#1073#1091#1082#1080' '#1087#1086' 50, '#1087#1086#1078#1072#1083#1091#1081#1089#1090#1072'.<br>- '#1042#1072#1084' '#1089#1086' '#1083#1100#1076#1086#1084'?</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402123">402123</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402123/rulez" onclick="v(402123, 0, 0); return '
              'false;">+</a> <span id="v402123">10854</span> <a '
              'href="/quote/402123/sux" onclick="v(402123, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402123/bayan" '
              'onclick="v(402123, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-14 '#1074' 12:45'
              #9#9#9#9#9'</div>'
              #9#9'<div>'#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' '#1082' '#1092#1086#1090#1086#1075#1088#1072#1092#1080#1080': '#1040#1087#1087#1072#1088#1072#1090' X '
              'Sting Wish '#1084#1086#1075' '#1073#1099' '#1073#1099#1090#1100' '#1083#1072#1079#1077#1088#1085#1086#1081' '#1087#1091#1096#1082#1086#1081' '#1076#1083#1103' '#1073#1086#1088#1100#1073#1099' '#1089' '
              #1080#1085#1086#1087#1083#1072#1085#1077#1090#1085#1099#1084#1080' '#1079#1072#1093#1074#1072#1090#1095#1080#1082#1072#1084#1080', '#1085#1086' '#1101#1090#1086' '#1074#1089#1077#1075#1086' '#1083#1080#1096#1100' '#1086#1075#1085#1077#1090#1091#1096#1080#1090#1077#1083#1100'. '
              #1040#1074#1090#1086#1088' '#1082#1086#1085#1094#1077#1087#1090#1072' '#8211' '#1073#1088#1080#1090#1072#1085#1089#1082#1080#1081' '#1076#1080#1079#1072#1081#1085#1077#1088' '#1040#1076#1072#1084' '#1057#1082#1086#1090#1090' '#8211' '
              #1087#1088#1077#1076#1091#1089#1084#1086#1090#1088#1077#1083' '#1073#1091#1082#1074#1072#1083#1100#1085#1086' '#1074#1089#1105'. '#1044#1072#1078#1077' '#1092#1086#1085#1072#1088#1080#1082#1080' '#1085#1072' '#1090#1086#1090' '#1089#1083#1091#1095#1072#1081', '
              #1077#1089#1083#1080' '#1087#1086#1078#1072#1088' '#1087#1088#1080#1076#1105#1090#1089#1103' '#1090#1091#1096#1080#1090#1100' '#1074' '#1058#1045#1052#1053#1054#1058#1045'.</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402122">402122</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402122/rulez" onclick="v(402122, 0, 0); return '
              'false;">+</a> <span id="v402122">9112</span> <a '
              'href="/quote/402122/sux" onclick="v(402122, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402122/bayan" '
              'onclick="v(402122, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-14 '#1074' 10:44'
              #9#9#9#9#9'</div>'
              #9#9'<div>'#1093#1093#1093': '#1050#1072#1082'-'#1090#1086' '#1094#1080#1085#1080#1095#1085#1086' '#1074' '#1044#1086#1096#1080#1088#1072#1082#1077' '#1085#1072#1081#1090#1080' '
              #1089#1082#1072#1085#1074#1086#1088#1076', '#1087#1088#1080' '#1088#1072#1079#1075#1072#1076#1099#1074#1072#1085#1080#1080' '#1082#1086#1090#1086#1088#1086#1075#1086' '#1086#1090#1082#1088#1099#1074#1072#1077#1090#1089#1103' '#1089#1083#1086#1074#1086' '
              '&quot;'#1089#1090#1091#1076#1077#1085#1090'&quot;... =(</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402121">402121</a>'
              ''
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402121/rulez" onclick="v(402121, 0, 0); return '
              'false;">+</a> <span id="v402121">284</span> <a '
              'href="/quote/402121/sux" onclick="v(402121, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402121/bayan" '
              'onclick="v(402121, 2, 0); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-14 '#1074' 10:44'
              #9#9#9#9#9'</div>'
              #9#9'<div>'#1053#1086#1074#1086#1089#1090#1100' '#1086' Windows 7. '
              #1050#1086#1084#1077#1085#1090#1099':<br><br>Windows-User:<br>'#1042#1089#1090#1088#1086#1077#1085#1085#1099#1081' WordPad '
              #1085#1072#1091#1095#1080#1083#1089#1103' '#1087#1086#1085#1080#1084#1072#1090#1100' ODF, '#1090#1077#1087#1077#1088#1100' '#1076#1083#1103' '#1095#1090#1077#1085#1080#1103' '#1080' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '
              #1101#1090#1086#1075#1086' '#1092#1086#1088#1084#1072#1090#1072' '#1085#1077' '#1085#1091#1078#1085#1086' '#1089#1090#1072#1074#1080#1090#1100' OpenOffice.<br>Pain '#1090#1086#1078#1077' '
              #1089#1080#1083#1100#1085#1086' '#1080#1079#1084#1077#1085#1080#1083#1089#1103'.<br><br>tshaoni:<br>&gt; Pain '#1090#1086#1078#1077' '#1089#1080#1083#1100#1085#1086' '
              #1080#1079#1084#1077#1085#1080#1083#1089#1103'.<br>'#1057#1090#1072#1083#1086' '#1077#1097#1105' '#1073#1086#1083#1100#1085#1077#1077'?</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402120">402120</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402120/rulez" onclick="v(402120, 0, 0); return '
              'false;">+</a> <span id="v402120">5664</span> <a '
              'href="/quote/402120/sux" onclick="v(402120, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402120/bayan" '
              'onclick="v(402120, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-14 '#1074' 10:12'
              #9#9#9#9#9'</div>'
              #9#9'<div>'#1057' '#1092#1086#1088#1091#1084#1072', '#1087#1086#1089#1074#1103#1097#1077#1085#1085#1086#1075#1086' '
              'iPhone<br>McSur: '#1057#1088#1086#1095#1085#1086' '#1090#1088#1077#1073#1091#1077#1090#1089#1103' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082' '#1076#1083#1103' '#1085#1072#1087#1080#1089#1072#1085#1080#1103' '
              #1087#1088#1086#1075#1088#1072#1084#1084#1099'. '#1043#1086#1090#1086#1074#1099' '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1080#1090#1100' '#1074' '#1088#1072#1089#1087#1086#1088#1103#1078#1077#1085#1080#1077' '#1090#1077#1083#1077#1092#1086#1085' '#1080' '
              #1082#1086#1084#1087#1100#1102#1090#1077#1088'.<br>set: '#1072' '#1077#1076#1091'?</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402119">402119</a>'
              ''
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402119/rulez" onclick="v(402119, 0, 0); return '
              'false;">+</a> <span id="v402119">6046</span> <a '
              'href="/quote/402119/sux" onclick="v(402119, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402119/bayan" '
              'onclick="v(402119, 2, 0); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-14 '#1074' 10:11'
              #9#9#9#9#9'</div>'
              #9#9'<div>'#1042#1077#1095#1077#1088', '#1089#1080#1076#1080#1084' '#1089' '#1078#1077#1085#1086#1081' ('#1075#1083#1091#1073#1086#1082#1086' '
              #1073#1077#1088#1077#1084#1077#1085#1085#1099#1077'), '#1089#1084#1086#1090#1088#1080#1084' '#1090#1077#1083#1077#1082', '#1076#1080#1072#1083#1086#1075':<br>'#1071': '#1082#1090#1086' '#1073#1099' '#1095#1072#1102' '
              #1085#1072#1083#1080#1083'...<br>'#1046#1077#1085#1072': '#1072#1075#1072'... ('#1079#1072#1076#1091#1084#1095#1080#1074#1086') ...'#1074#1086#1090' '#1088#1086#1076#1080#1090#1089#1103' '#1084#1077#1083#1082#1080#1081' '#1080' '
              #1087#1077#1088#1074#1086#1077' '#1095#1090#1086' '#1085#1072#1091#1095#1080#1084' - '#1095#1072#1081' '#1085#1072#1083#1080#1074#1072#1090#1100'...</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402118">402118</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402118/rulez" onclick="v(402118, 0, 0); return '
              'false;">+</a> <span id="v402118">3390</span> <a '
              'href="/quote/402118/sux" onclick="v(402118, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402118/bayan" '
              'onclick="v(402118, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-14 '#1074' 10:11'
              #9#9#9#9#9'</div>'
              #9#9'<div>'#1093#1093#1093': '#1080#1079' '#1089#1072#1081#1090#1072' '#1087#1088#1086' '
              #1087#1095#1077#1083#1086#1074#1086#1076#1089#1090#1074#1086':<br>15.'#1050#1086#1075#1076#1072' '#1087#1095#1077#1083#1072' '#1084#1086#1078#1077#1090' '#1087#1086#1076#1085#1103#1090#1100' '#1090#1103#1078#1077#1089#1090#1100' '
              #1073#1086#1083#1100#1096#1077' '#1089#1074#1086#1077#1075#1086' '#1074#1077#1089#1072'?<br>-'#1055#1095#1077#1083#1072' '#1084#1086#1078#1077#1090' '#1087#1086#1076#1085#1103#1090#1100' '#1075#1088#1091#1079' '#1074' '#1076#1074#1072' '#1088#1072#1079#1072' '
              #1073#1086#1083#1100#1096#1077' '#1089#1074#1086#1077#1075#1086' '#1074#1077#1089#1072', '#1082#1086#1075#1076#1072' '#1086#1085#1072' '#1074#1099#1085#1086#1089#1080#1090' '#1080#1079' '#1091#1083#1100#1103' '#1090#1088#1091#1090#1085#1103'...</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402117">402117</a>'
              ''
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402117/rulez" onclick="v(402117, 0, 0); return '
              'false;">+</a> <span id="v402117">8077</span> <a '
              'href="/quote/402117/sux" onclick="v(402117, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402117/bayan" '
              'onclick="v(402117, 2, 0); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-14 '#1074' 09:46'
              #9#9#9#9#9'</div>'
              #9#9'<div>'#1044#1077#1074#1091#1096#1082#1072' '#1088#1072#1089#1089#1090#1072#1083#1072#1089#1100' '#1089' '
              #1087#1072#1088#1085#1077#1084':<br><br>xxx: '#1095#1090#1086' '#1086#1085'?<br>yyy: '#1085#1080#1095#1077#1075#1086'. '#1085#1080' '#1079#1074#1086#1085#1082#1072', '#1085#1080' '
              #1089#1084#1089'.<br>xxx: '#1089#1072#1084#1072' '#1090#1086#1078#1077' '#1085#1077' '#1079#1074#1086#1085#1080#1096#1100'?<br>yyy: '#1085#1077#1090', '#1082#1086#1085#1077#1095#1085#1086'. '#1071' '
              #1074#1086#1086#1073#1097#1077' '#1079#1085#1072#1090#1100' '#1077#1075#1086' '#1085#1077' '#1093#1086#1095#1091'. '#1041#1086#1102#1089#1100' '#1090#1086#1083#1100#1082#1086' '#1074' '#1085#1086#1075#1080' '#1073#1088#1086#1089#1080#1090#1100#1089#1103', '#1082#1086#1075#1076#1072' '
              #1079#1072' '#1074#1077#1097#1072#1084#1080' '#1087#1088#1080#1076#1077#1090'!</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402116">402116</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402116/rulez" onclick="v(402116, 0, 0); return '
              'false;">+</a> <span id="v402116">3599</span> <a '
              'href="/quote/402116/sux" onclick="v(402116, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402116/bayan" '
              'onclick="v(402116, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-14 '#1074' 09:13'
              #9#9#9#9#9'</div>'
              #9#9'<div>xxx: '#1071' '#1077#1084#1091' '#1074#1077#1088#1085#1091#1083#1072' '#1074#1089#1077' '#1077#1075#1086' '#1087#1086#1076#1072#1088#1082#1080'. '
              
                #1055#1091#1089#1090#1100' '#1087#1086#1076#1072#1074#1080#1090#1089#1103'! ]:-&gt;<br>yyy: '#1040' '#1095#1090#1086' '#1090#1072#1082#1086#1077'?<br>xxx: '#1069#1090#1086#1090' '#1082#1086#1079#1077#1083 +
                ' '
              #1089#1093#1086#1076#1080#1083' '#1085#1072#1083#1077#1074#1086', '#1072' '#1087#1086#1090#1086#1084' '#1084#1085#1077' '#1079#1072#1103#1074#1080#1083', '#1095#1090#1086' '#1093#1086#1095#1077#1090' '#1075#1072#1088#1077#1084'!!!<br>xxx: '#1071' '
              #1077#1084#1091' '#1091#1089#1090#1088#1086#1102' '#1075#1072#1088#1077#1084'. '#1054#1085' '#1090#1072#1084' '#1073#1091#1076#1077#1090' '#1077#1074#1085#1091#1093#1086#1084'. *kill*</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402115">402115</a>'
              ''
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402115/rulez" onclick="v(402115, 0, 0); return '
              'false;">+</a> <span id="v402115">6180</span> <a '
              'href="/quote/402115/sux" onclick="v(402115, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402115/bayan" '
              'onclick="v(402115, 2, 0); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-14 '#1074' 09:12'
              #9#9#9#9#9'</div>'
              #9#9'<div>xxx: '#1071' '#1074#1086#1090' '#1076#1091#1084#1072#1102'... '#1053#1091#1078#1085#1086' '#1073#1091#1076#1077#1090' '
              #1089#1087#1077#1094#1080#1072#1083#1100#1085#1086' '#1076#1083#1103' '#1087#1088#1086#1093#1086#1076#1072' '#1095#1077#1088#1077#1079' '#1088#1099#1085#1086#1082' '#1084#1072#1081#1082#1091' '#1082#1091#1087#1080#1090#1100' '#1073#1077#1083#1091#1102', '#1072' '
              #1089#1087#1077#1088#1077#1076#1080' '#1073#1086#1083#1100#1096#1080#1084#1080' '#1095#1054#1088#1085#1099#1084#1080' '#1073#1091#1082#1074#1072#1084#1080' '#1085#1072#1087#1080#1089#1072#1090#1100' - &quot;'#1053#1077#1090', '
              #1089#1087#1072#1089#1080#1073#1086', '#1085#1077' '#1085#1072#1076#1086'!&quot;</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402114">402114</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402114/rulez" onclick="v(402114, 0, 0); return '
              'false;">+</a> <span id="v402114">4503</span> <a '
              'href="/quote/402114/sux" onclick="v(402114, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402114/bayan" '
              'onclick="v(402114, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-14 '#1074' 08:46'
              #9#9#9#9#9'</div>'
              #9#9'<div>'#1080#1079' '#1046#1046':<br>palagashvili:<br>'#1044#1083#1103' '#1074#1072#1089' '
              #1084#1086#1085#1080#1090#1086#1088#1099' - '#1101#1090#1086' '#1087#1086#1084#1086#1097#1100', '#1076#1083#1103' '#1076#1077#1090#1089#1082#1086#1075#1086' '#1076#1086#1084#1072' '#1086#1085#1080' '#1074' '#1090#1103#1075#1086#1089#1090#1100'. '
              #1055#1086#1095#1077#1084#1091'? '#1052#1086#1078#1077#1090' '#1073#1099#1090#1100', '#1091' '#1085#1080#1093' '#1076#1072#1078#1077' '#1087#1086#1076#1082#1083#1102#1095#1080#1090#1100' '#1101#1090#1080' '#1084#1086#1085#1080#1090#1086#1088#1099' '#1085#1077' '#1082' '
              #1095#1077#1084#1091'? '#1048' '#1074#1086#1086#1073#1097#1077', '#1084#1086#1085#1080#1090#1086#1088' - '#1088#1072#1079#1074#1077' '#1101#1090#1086' '#1087#1086#1084#1086#1097#1100'? '#1044#1072' '#1085#1072#1093#1088#1077#1085' '#1086#1085#1080' '#1080#1084' '
              #1085#1091#1078#1085#1099', '#1077#1089#1083#1080' '#1085#1091#1078#1085#1086' '#1079#1076#1072#1085#1080#1077' '#1086#1090#1088#1077#1084#1086#1085#1090#1080#1088#1086#1074#1072#1090#1100', '#1082#1091#1087#1080#1090#1100' '#1085#1086#1074#1091#1102' '
              #1084#1077#1073#1077#1083#1100', '#1082#1085#1080#1075#1080', '#1080#1075#1088#1091#1096#1082#1080'? '#1055#1086#1095#1077#1084#1091' '#1073#1099' '#1076#1083#1103' '#1085#1072#1095#1072#1083#1072' '#1085#1077' '#1089#1087#1088#1086#1089#1080#1090#1100', '#1095#1090#1086' '
              #1080#1084' '#1074#1086#1086#1073#1097#1077' '#1085#1091#1078#1085#1086'?<br><br>rjyyjd:<br>'#1053#1091' '#1080' '#1082#1091#1087#1103#1090' '#1086#1085#1080' '#1080#1075#1088#1091#1096#1082#1080', '#1072' '#1085#1072' '
              #1095#1105#1084' '#1076#1077#1090#1080' '#1080#1075#1088#1072#1090#1100' '#1073#1091#1076#1091#1090'? '#1082#1086#1084#1087#1086#1074' '#1090#1086' '#1085#1077#1090#1091'.</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402113">402113</a>'
              ''
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402113/rulez" onclick="v(402113, 0, 0); return '
              'false;">+</a> <span id="v402113">3169</span> <a '
              'href="/quote/402113/sux" onclick="v(402113, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402113/bayan" '
              'onclick="v(402113, 2, 0); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-14 '#1074' 08:13'
              #9#9#9#9#9'</div>'
              #9#9'<div>'#1040#1088#1080#1082#1072#1096#1080': &quot;'#1075#1086#1090#1086#1074#1085#1086#1089#1090#1100' '#1088#1072#1073#1086#1090#1072#1090#1100' '#1074' '
              #1082#1086#1084#1072#1085#1076#1077' '#1088#1072#1079#1085#1099#1093' '#1083#1102#1076#1077#1081', '#1090#1088#1086#1083#1083#1077#1081', '#1089#1080#1089#1090#1077#1084#1085#1099#1093' '#1072#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088#1086#1074' '#1080' '
              #1090'.'#1076'.&quot;<br>'#1040#1088#1080#1082#1072#1096#1080': '#1085#1077#1090', '#1103' '#1087#1086#1085#1080#1084#1072#1102' '#1088#1072#1073#1086#1090#1072#1090#1100' '#1089' '#1090#1088#1086#1083#1083#1103#1084#1080'... '#1085#1086' '
              #1089#1080#1089#1072#1076#1084#1080#1085#1099'... '#1101#1090#1086' '#1089#1083#1080#1096#1082#1086#1084'.</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402112">402112</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402112/rulez" onclick="v(402112, 0, 0); return '
              'false;">+</a> <span id="v402112">12610</span> <a '
              'href="/quote/402112/sux" onclick="v(402112, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402112/bayan" '
              'onclick="v(402112, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-13 '#1074' 17:45'
              #9#9#9#9#9'</div>'
              #9#9'<div>xxx: '#1042' '#1075#1088#1091#1087#1087#1077' &quot;'#1060#1101#1085#1090#1077#1079#1080'&quot; '
              #1079#1072#1087#1086#1089#1090#1080#1083#1080' '#1082#1072#1088#1090#1080#1085#1082#1091' '#1089' '#1090#1072#1082#1080#1084' '#1084#1072#1083#1077#1085#1100#1082#1080#1084' '#1076#1088#1072#1082#1086#1085#1095#1080#1082#1086#1084' - '#1076#1083#1080#1085#1086#1081' 10 '
              #1089#1084', '#1089#1080#1076#1080#1090' '#1085#1072' '#1083#1072#1076#1086#1096#1082#1077'...<br>xxx: '#1044#1074#1072'-'#1090#1088#1080' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1103' '#1086#1090' '
              #1076#1077#1074#1091#1096#1077#1082', '#1074' '#1076#1091#1093#1077' '#1090#1086#1075#1086', '#1095#1090#1086' '#1082#1072#1082#1086#1081' '#1093#1086#1088#1086#1096#1077#1085#1100#1082#1080#1081'...<br>xxx: '#1048' '#1087#1077#1088#1074#1099#1081' '
              #1078#1077' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' '#1086#1090' '#1087#1072#1088#1085#1103': &quot;'#1040' '#1087#1088#1080#1082#1091#1088#1080#1074#1072#1090#1100' '#1086#1090' '#1085#1077#1075#1086' '
              #1084#1086#1078#1085#1086'?&quot;</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              ''
              #9#9#9'<a href="/quote/402111">402111</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402111/rulez" onclick="v(402111, 0, 0); return '
              'false;">+</a> <span id="v402111">12827</span> <a '
              'href="/quote/402111/sux" onclick="v(402111, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402111/bayan" '
              'onclick="v(402111, 2, 0); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-13 '#1074' 16:45'
              #9#9#9#9#9'</div>'
              #9#9'<div>'#1054#1053': '#1040' '#1079#1085#1072#1077#1096#1100', '#1077#1089#1083#1080' '#1090#1077#1073#1103' '#1073#1091#1076#1091#1090' '
              #1089#1087#1088#1072#1096#1080#1074#1072#1090#1100' '#1075#1076#1077' '#1103' '#1088#1072#1073#1086#1090#1072#1102', '#1090#1099' '#1086#1090#1074#1077#1095#1072#1081': '#1084#1086#1081' '#1087#1072#1088#1077#1085#1100' '#1087#1086#1083#1080#1090#1088#1091#1082' '#1074' '
              #1055#1077#1088#1074#1086#1084' '#1043#1074#1072#1088#1076#1077#1081#1089#1082#1086#1084' '#1087#1086#1083#1082#1091' '#1050#1086#1089#1084#1080#1095#1077#1089#1082#1086#1081' '#1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1100#1085#1086#1081' '
              #1087#1077#1093#1086#1090#1099'. '#1040' '#1077#1089#1083#1080' '#1089#1087#1088#1086#1089#1103#1090' '#1087#1086#1095#1077#1084#1091' '#1085#1077' '#1091' '#1082#1086#1089#1084#1080#1095#1077#1089#1082#1080#1093' '#1082#1072#1076#1077#1090#1086#1074', '#1090#1086#1075#1076#1072' '
              #1075#1086#1074#1086#1088#1080', '#1084#1086#1083' '#1086#1085' '#1091' '#1084#1077#1085#1103' '#1095#1077#1089#1090#1085#1099#1081' '#1079#1072#1090#1086' '#1080' '#1085#1077' '#1087#1080#1076#1086#1088#1072#1096#1082#1072'.<br>'#1054#1053': '
              #1061#1086#1088#1086#1096#1086'?<br>'#1054#1053#1040': '#1061#1086#1088#1086#1096#1086'. '#1053#1086' '#1090#1086#1075#1076#1072' '#1084#1086#1078#1085#1086' '#1103' '#1073#1091#1076#1091' '#1076#1086#1073#1072#1074#1083#1103#1090#1100', '#1095#1090#1086' '
              #1091' '#1089#1072#1085#1080#1090#1072#1088#1086#1074' '#1090#1099' '#1085#1072' '#1093#1086#1088#1086#1096#1077#1084' '#1089#1095#1077#1090#1091' '#1080' '#1087#1086#1101#1090#1086#1084#1091' '#1090#1077#1073#1077' '#1088#1072#1079#1088#1077#1096#1072#1102#1090' '
              #1089#1098#1077#1076#1072#1090#1100' '#1090#1072#1073#1083#1077#1090#1082#1080' '#1089#1086#1089#1077#1076#1077#1081'?</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402110">402110</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402110/rulez" onclick="v(402110, 0, 0); return '
              'false;">+</a> <span id="v402110">13546</span> <a '
              'href="/quote/402110/sux" onclick="v(402110, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402110/bayan" '
              'onclick="v(402110, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-13 '#1074' 14:12'
              #9#9#9#9#9'</div>'
              #9#9'<div>'#1061#1061#1061': '#1058#1086#1083#1100#1082#1086' '#1095#1090#1086' '#1079#1074#1086#1085#1080#1083' '#1073#1088#1072#1090' '#1080#1079' '#1072#1088#1084#1080#1080'... '
              #1059#1096#1077#1083' 3 '#1084#1077#1089#1103#1094#1072' '#1085#1072#1079#1072#1076'... '#1041#1091#1093#1080#1084' '#1080' '#1093#1088#1080#1087#1083#1099#1084' '#1075#1086#1083#1086#1089#1086#1084' '#1089#1087#1088#1072#1096#1080#1074#1072#1083' '
              #1082#1072#1082' '#1075#1086#1090#1086#1074#1080#1090#1100' '#1082#1086#1088#1086#1083#1077#1074#1089#1082#1080#1077' '#1082#1088#1077#1074#1077#1090#1082#1080'... '#1071' '#1095#1072#1089#1072' '#1085#1072' '#1087#1086#1083' '
              #1079#1072#1074#1080#1089'...</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402109">402109</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402109/rulez" onclick="v(402109, 0, 0); return '
              'false;">+</a> <span id="v402109">6650</span> <a '
              'href="/quote/402109/sux" onclick="v(402109, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402109/bayan" '
              'onclick="v(402109, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-13 '#1074' 13:46'
              #9#9#9#9#9'</div>'
              #9#9'<div>xxx: '#1069#1090#1086' '#1073#1099#1083#1086' '#1085#1072' '#1076#1080#1089#1087#1072#1085#1089#1077#1088#1080#1079#1072#1094#1080#1080', '#1082#1086#1075#1076#1072' '
              #1103' '#1077#1097#1077' '#1074' '#1096#1082#1086#1083#1077' '#1091#1095#1080#1083#1072#1089#1100'. '#1047#1072#1093#1086#1078#1091' '#1103' '#1082' '#1093#1080#1088#1091#1088#1075#1091' ('#1076#1086#1074#1086#1083#1100#1085#1086' '
              #1080#1084#1087#1086#1079#1072#1085#1090#1085#1099#1081' '#1084#1091#1078#1095#1080#1085#1072'), '#1072' '#1086#1085' '#1095#1080#1093#1072#1077#1090' '#1074' '#1082#1091#1089#1086#1082' '#1073#1080#1085#1090#1072' '#1080' '#1089#1087#1088#1072#1096#1080#1074#1072#1077#1090' '#1091' '
              #1084#1077#1085#1103': &quot;'#1046#1072#1083#1086#1073#1099' '#1077#1089#1090#1100'?&quot;. '#1071' '#1087#1086#1089#1083#1091#1096#1085#1086' '#1086#1090#1074#1077#1095#1072#1102', '#1095#1090#1086' '#1085#1077#1090', '
              #1085#1072' '#1095#1090#1086' '#1086#1085' '#1084#1085#1077' '#1079#1072#1103#1074#1083#1103#1077#1090': &quot;'#1058#1086#1075#1076#1072' '#1103' '#1090#1077#1073#1103' '#1088#1072#1079#1076#1077#1074#1072#1090#1100' '#1085#1077' '#1073#1091#1076#1091', '#1072' '
              #1090#1086' '#1091' '#1084#1077#1085#1103' '#1091#1078#1077' '#1088#1091#1082#1080' '#1091#1089#1090#1072#1083#1080'&quot;.</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402108">402108</a>'
              ''
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402108/rulez" onclick="v(402108, 0, 0); return '
              'false;">+</a> <span id="v402108">11819</span> <a '
              'href="/quote/402108/sux" onclick="v(402108, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402108/bayan" '
              'onclick="v(402108, 2, 0); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-13 '#1074' 13:45'
              #9#9#9#9#9'</div>'
              #9#9'<div>&quot;'#1042' '#1043#1086#1088#1086#1076#1094#1077' '#1053#1045#1048#1047#1042#1045#1057#1058#1053#1067#1049' '
              #1079#1083#1086#1091#1084#1099#1096#1083#1077#1085#1085#1080#1082' '#1087#1086#1076' '#1091#1075#1088#1086#1079#1086#1081' '#1085#1072#1089#1080#1083#1080#1103' '#1079#1072#1089#1090#1072#1074#1080#1083' '#1074#1083#1072#1076#1077#1083#1100#1094#1072' '
              #1072#1074#1090#1086#1084#1086#1073#1080#1083#1103' '#1087#1077#1088#1077#1087#1080#1089#1072#1090#1100' '#1084#1072#1096#1080#1085#1091' '#1085#1072' '#1057#1042#1054#1025' '
              #1080#1084#1103'&quot;(c)'#1053#1058#1040'-'#1055#1088#1080#1074#1086#1083#1078#1100#1077'</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402107">402107</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402107/rulez" onclick="v(402107, 0, 0); return '
              'false;">+</a> <span id="v402107">11321</span> <a '
              'href="/quote/402107/sux" onclick="v(402107, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402107/bayan" '
              'onclick="v(402107, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-13 '#1074' 10:45'
              #9#9#9#9#9'</div>'
              #9#9'<div>'#1061#1061#1061': '#1042#1089#1077', '#1074#1089#1077' '#1092#1086#1090#1099' '#1089' '#1053#1043' '#1074#1099#1083#1086#1078#1080#1083', '
              #1090#1077#1087#1077#1088#1100' '#1075#1086#1085#1086#1088#1072#1088#1099' '#1087#1088#1080#1085#1084#1072#1090#1100' '#1073#1091#1076#1091' '#1079#1072' '#1089#1090#1080#1088#1072#1085#1080#1077' '#1092#1086#1090#1086#1082'.</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402106">402106</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402106/rulez" onclick="v(402106, 0, 0); return '
              'false;">+</a> <span id="v402106">8071</span> <a '
              'href="/quote/402106/sux" onclick="v(402106, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402106/bayan" '
              'onclick="v(402106, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-13 '#1074' 10:13'
              #9#9#9#9#9'</div>'
              #9#9'<div>'#1052#1086#1089#1082#1074#1072' '#1085#1077' '#1091#1088#1086#1076#1091#1077#1090' '#1083#1102#1076#1077#1081'. '#1054#1085#1072' '#1087#1088#1086#1089#1090#1086' '
              #1087#1086#1079#1074#1086#1083#1103#1077#1090' '#1080#1084' '#1088#1072#1089#1082#1088#1099#1090#1100#1089#1103'.</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402105">402105</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402105/rulez" onclick="v(402105, 0, 0); return '
              'false;">+</a> <span id="v402105">9701</span> <a '
              'href="/quote/402105/sux" onclick="v(402105, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402105/bayan" '
              'onclick="v(402105, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-13 '#1074' 09:46'
              #9#9#9#9#9'</div>'
              #9#9'<div>xxx: '#1057#1072#1084#1086#1077' '#1085#1077#1074#1099#1085#1086#1089#1080#1084#1086#1077' - '#1101#1090#1086' '
              #1085#1077#1080#1079#1074#1077#1089#1090#1085#1086#1089#1090#1100'. <br>xxx: '#1055#1086#1090#1077#1088#1103#1083' '#1080#1075#1086#1083#1082#1091' '#1074' '#1089#1074#1086#1077#1081' '#1082#1086#1084#1085#1072#1090#1077', '#1080' '#1078#1076#1091', '
              #1082#1086#1075#1076#1072' '#1086#1085#1072' '#1074#1086#1087#1100#1105#1090#1089#1103' '#1084#1085#1077' '#1074' '#1078#1086#1087#1091'.</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402104">402104</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402104/rulez" onclick="v(402104, 0, 0); return '
              'false;">+</a> <span id="v402104">32</span> <a '
              'href="/quote/402104/sux" onclick="v(402104, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402104/bayan" '
              'onclick="v(402104, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-13 '#1074' 09:13'
              #9#9#9#9#9'</div>'
              #9#9'<div>xxx: '#1058#1088#1077#1090#1100#1077#1075#1086' '#1095#1080#1089#1083#1072' '#1105#1083#1082#1091' '#1074#1099#1085#1086#1089#1080#1090#1100' - '#1101#1090#1086' '
              #1077#1097#1077' '#1095#1090#1086'.<br>xxx: '#1042#1086#1090' '#1084#1099' '#1089' '#1084#1072#1084#1086#1081' '#1105#1083#1082#1091' '#1074' '#1086#1076#1080#1085' '#1075#1086#1076' '#1077#1097#1105' '#1076#1086' 31 '
              #1076#1077#1082#1072#1073#1088#1103' '#1074#1099#1085#1077#1089#1083#1080'. '#1054#1085#1072' '#1073#1099#1083#1072' '#1084#1072#1083#1077#1085#1100#1082#1072#1103' '#1080' '#1084#1099' '#1077#1105' '#1074#1086#1090#1082#1085#1091#1083#1080' '#1074' '
              #1075#1086#1088#1096#1086#1082' '#1089' '#1089#1091#1093#1086#1081' '#1079#1077#1084#1083#1105#1081', '#1089#1076#1077#1083#1072#1090#1100' '#1095#1090#1086'-'#1090#1086' '#1077#1097#1077' '#1083#1077#1085#1100' '#1073#1099#1083#1086'. <br>xxx: '
              #1058#1072#1082' '#1101#1090#1072' '#1075#1072#1076#1086#1089#1090#1100' '#1084#1072#1083#1077#1085#1100#1082#1072#1103' '#1087#1086#1078#1077#1083#1090#1077#1083#1072' '#1088#1072#1085#1100#1096#1077' '#1074#1088#1077#1084#1077#1085#1080' '#1080' '#1086#1087#1072#1083#1072', '
              #1084#1099' '#1076#1086#1078#1076#1072#1083#1080#1089#1100' '#1087#1086#1079#1076#1085#1077#1075#1086' '#1074#1077#1095#1077#1088#1072', '#1076#1072#1073#1099' '#1085#1080#1082#1090#1086' '#1085#1077' '#1074#1080#1076#1077#1083', '#1080' '#1087#1086#1076' '
              #1087#1086#1082#1088#1086#1074#1086#1084' '#1090#1077#1084#1085#1086#1090#1099' '#1080#1079#1073#1072#1074#1080#1083#1080#1089#1100' '#1086#1090' '#1085#1077#1105'...</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402103">402103</a>'
              ''
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402103/rulez" onclick="v(402103, 0, 0); return '
              'false;">+</a> <span id="v402103">231</span> <a '
              'href="/quote/402103/sux" onclick="v(402103, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402103/bayan" '
              'onclick="v(402103, 2, 0); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-13 '#1074' 08:46'
              #9#9#9#9#9'</div>'
              #9#9'<div>'#1093#1093#1093' '#1075#1086#1074#1086#1088#1080#1090': '#1090#1077#1073#1077' '#1073#1099' '#1084#1086#1080#1093' '
              #1076#1080#1088#1077#1082#1090#1086#1088#1086#1074'<br>'#1093#1093#1093' '#1075#1086#1074#1086#1088#1080#1090': '#1082#1086#1075#1076#1072' '#1090#1077#1073#1077' '#1074#1090#1088#1086#1077#1084' '#1084#1086#1079#1075#1080' '
              #1080#1084#1077#1102#1090'<br>'#1093#1093#1093' '#1075#1086#1074#1086#1088#1080#1090': '#1087#1086#1087#1088#1086#1073#1091#1081' '#1086#1073#1098#1103#1089#1085#1080#1090#1100' '#1083#1102#1076#1103#1084', '#1087#1086#1095#1077#1084#1091' '
              #1087#1086#1103#1074#1103#1090#1089#1103' '#1087#1086#1084#1077#1093#1080', '#1077#1089#1083#1080' '#1089#1080#1075#1085#1072#1083' '#1087#1091#1089#1090#1080#1090#1100' '#1074' '#1086#1076#1085#1086#1084' '#1082#1072#1073#1077#1083#1077' '#1089' '
              #1087#1080#1090#1072#1085#1080#1077#1084' '#1088#1077#1076#1091#1082#1090#1086#1088#1072' '#1101'/'#1076', '#1077#1089#1083#1080' '#1090#1077' '#1085#1077' '#1074#1077#1076#1072#1102#1090' '#1095#1090#1086' '#1090#1072#1082#1086#1077' '
              #1087#1088#1077#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1103' '#1060#1091#1088#1100#1077' '#1080' '#1086' '#1087#1077#1088#1077#1093#1086#1076#1085#1099#1093' '#1087#1088#1086#1094#1077#1089#1089#1072#1093' '#1085#1080' '#1089#1083#1091#1093#1086#1084' '#1085#1077' '
              #1076#1091#1093#1086#1084'.<br>'#1093#1093#1093' '#1075#1086#1074#1086#1088#1080#1090': '#1080' '#1076#1083#1103' '#1082#1086#1090#1086#1088#1099#1093' '#1074' '#1069#1044#1057' '#1089#1072#1084#1086#1080#1085#1076#1091#1082#1094#1080#1080' '
              #1087#1086#1085#1103#1090#1085#1086' '#1090#1086#1083#1100#1082#1086','#1095#1090#1086' '#1086#1085#1072' &quot;'#1089#1072#1084#1086'&quot;...</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402102">402102</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402102/rulez" onclick="v(402102, 0, 0); return '
              'false;">+</a> <span id="v402102">11084</span> <a '
              'href="/quote/402102/sux" onclick="v(402102, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402102/bayan" '
              'onclick="v(402102, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-13 '#1074' 08:13'
              #9#9#9#9#9'</div>'
              #9#9'<div>'#1040'ndrew (01:52:19 10/01/2009)<br>'#1088#1072#1079' '#1090#1099' '
              #1084#1091#1078#1080#1082', '#1090#1086' '#1044#1054#1050#1040#1046#1048' '#1095#1090#1086' '#1091' '#1090#1077#1073#1103' '#1077#1089#1090#1100' '#1087#1072#1088#1077#1085#1100'!<br><br>Rich (01:52:50 '
              '10/01/2009)<br>'#1090#1077#1073#1103' '#1087#1086'-'#1084#1086#1077#1084#1091' '#1082#1090#1086'-'#1090#1086' '#1082#1086#1075#1076#1072'-'#1090#1086' '#1086#1095#1077#1085#1100' '#1078#1077#1089#1090#1086#1082#1086' '
              #1086#1073#1084#1072#1085#1091#1083'...</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402101">402101</a>'
              ''
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402101/rulez" onclick="v(402101, 0, 0); return '
              'false;">+</a> <span id="v402101">13796</span> <a '
              'href="/quote/402101/sux" onclick="v(402101, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402101/bayan" '
              'onclick="v(402101, 2, 0); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-13 '#1074' 08:12'
              #9#9#9#9#9'</div>'
              #9#9'<div>herrvamm: '#1042#1095#1077#1088#1072' '#1093#1086#1090#1077#1083' '#1087#1086#1075#1083#1091#1084#1080#1090#1100#1089#1103' '#1085#1072' '
              #1086#1076#1085#1086#1081' '#1076#1077#1074#1091#1096#1082#1086#1081'...<br>xxx: '#1082#1072#1082'?<br>herrvamm: '#1057#1087#1088#1086#1089#1080#1083' '#1082#1072#1082#1086#1074#1072' '
              #1090#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072' '#1087#1083#1072#1074#1083#1077#1085#1080#1103' '#1072#1089#1092#1072#1083#1100#1090#1072'...<br>xxx: '#1080' '#1095#1090#1086'?<br>herrvamm: '#1040' '
              #1086#1085#1072' '#1075#1086#1074#1086#1088#1080#1090', '#1095#1090#1086' '#1101#1090#1086' '#1079#1072#1074#1080#1089#1080#1090' '#1086#1090' '#1084#1072#1088#1082#1080' '#1073#1080#1090#1091#1084#1072'!<br>herrvamm: '#1040' '#1103' '
              #1085#1080' '#1086#1076#1085#1086#1081' '#1084#1072#1088#1082#1080' '#1085#1077' '#1079#1085#1072#1102', '#1095#1086#1088#1090' '#1087#1086#1073#1077#1088#1080'!</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402100">402100</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402100/rulez" onclick="v(402100, 0, 0); return '
              'false;">+</a> <span id="v402100">7963</span> <a '
              'href="/quote/402100/sux" onclick="v(402100, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402100/bayan" '
              'onclick="v(402100, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-12 '#1074' 17:45'
              #9#9#9#9#9'</div>'
              #9#9'<div>'#1086#1090#1074#1077#1090#1099'.'#1084#1101#1081#1083'.'#1088#1091':<br>&quot;'#1040' '#1087#1086#1088#1085#1086' '
              #1076#1074#1080#1075#1072#1090#1077#1083#1100#1085#1099#1081' '#1072#1087#1087#1072#1088#1072#1090', '#1095#1090#1086' '#1101#1090#1086'?&quot;<br>'#1055#1086#1088#1072#1076#1086#1074#1072#1083' '#1083#1091#1095#1096#1080#1081' '
              #1086#1090#1074#1077#1090': &quot;'#1101#1090#1086' - '#1082#1086#1084#1087#1100#1102#1090#1077#1088' :))&quot;</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402099">402099</a>'
              ''
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402099/rulez" onclick="v(402099, 0, 0); return '
              'false;">+</a> <span id="v402099">4709</span> <a '
              'href="/quote/402099/sux" onclick="v(402099, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402099/bayan" '
              'onclick="v(402099, 2, 0); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-12 '#1074' 17:13'
              #9#9#9#9#9'</div>'
              #9#9'<div>'#1053#1072#1076#1087#1080#1089#1100' '#1074' '#1089#1086#1088#1090#1080#1088#1077' '#1085#1072' '#1073#1072#1088#1072#1073#1072#1085#1077' '#1076#1083#1103' '
              #1088#1072#1089#1082#1088#1091#1095#1080#1074#1072#1085#1080#1103' '#1090#1091#1072#1083#1077#1090#1085#1086#1081' '#1073#1091#1084#1072#1075#1080':<br>&quot;'#1056#1072#1089#1082#1088#1091#1090#1082#1072' '
              #1089#1072#1081#1090#1086#1074'&quot;</div>'
              ''
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<hr '
              'class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<a href="/quote/402098">402098</a>'
              #9#9#9#9#9#9'[ <a '
              'href="/quote/402098/rulez" onclick="v(402098, 0, 0); return '
              'false;">+</a> <span id="v402098">6583</span> <a '
              'href="/quote/402098/sux" onclick="v(402098, 1, 0); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/quote/402098/bayan" '
              'onclick="v(402098, 2, 0); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' 2009-01-12 '#1074' 17:12'
              #9#9#9#9#9'</div>'
              #9#9'<div>st41ker: '#1087#1088#1080#1074#1077#1090', '#1082#1072#1082' '#1086#1085#1086' '#1085#1080#1095#1077#1075#1086'?<br>kip: '
              #1076#1072' '#1074#1086#1090' '#1089#1080#1078#1091' '#1088#1078#1091#1085#1080#1084#1072#1075#1091'!!<br>kip: '#1095#1080#1090#1072#1102' '#1086#1090#1095#1105#1090' '#1089#1074#1086#1077#1075#1086' '#1087#1086#1076#1095#1080#1085#1077#1085#1085#1086#1075#1086' '
              #1086' '#1087#1088#1086#1076#1077#1083#1072#1085#1085#1086#1081' '#1088#1072#1073#1086#1090#1077' '#1079#1072' '#1084#1077#1089#1103#1094'... <br>'#1055#1091#1085#1082#1090' 23. &quot;'#1054#1090#1083#1086#1074' '
              #1074#1080#1088#1091#1089#1072' '#1085#1072' '#1090#1077#1088#1088#1080#1090#1086#1088#1080#1080' '#1079#1072#1074#1086#1076#1072'...&quot;<br>'#1044#1072#1083#1100#1096#1077' '#1095#1080#1090#1072#1090#1100' '
              #1073#1086#1102#1089#1100'</div>'
              #9'</div>'#9#9#9' '
              #9#9#9' '
              #9#9#9#9#9#9'<div '
              'class="pager"><span class="first">'#1057#1090#1088#1072#1085#1080#1094#1099':</span><a '
              'href="/index/403">&lt;&lt;</a><a '
              'href="/index/407">407</a><span>'#8230'</span><a '
              'href="/index/405">405</a><a href="/index/404">404</a><a '
              'href="/index/403">403</a><span>402</span><a '
              'href="/index/401">401</a><a href="/index/400">400</a><a '
              'href="/index/399">399</a><span>'#8230'</span><a '
              'href="/index/1">1</a><a href="/index/401">&gt;&gt;</a></div><br '
              'style="clear: both;" />'#9'</div>'
              ''
              #9'<div class="menu">'#1094#1080#1090#1072#1090#1099': <b>['#1087#1086#1089#1083#1077#1076#1085#1080#1077']</b> [<a '
              'href="/random">'#1089#1083#1091#1095#1072#1081#1085#1099#1077'</a>] [<a href="/best">'#1083#1091#1095#1096#1080#1077'</a>] [<a '
              'href="/byrating">'#1087#1086' '#1088#1077#1081#1090#1080#1085#1075#1091'</a>] [<a href="/faq">FAQ</a>] [<a '
              'href="/rss">RSS</a>] <br>'#1073#1077#1079#1076#1085#1072': [<a href="/abyss">'#1041#1077#1079#1076#1085#1072'</a>] '
              '[<a href="/abysstop">'#1090#1086#1087' '#1041#1077#1079#1076#1085#1099'</a>] [<a '
              'href="/abyssbest">'#1083#1091#1095#1096#1077#1077' '#1041#1077#1079#1076#1085#1099'</a>] [<a '
              'href="/add">'#1076#1086#1073#1072#1074#1080#1090#1100'</a>] <br>'#1095#1090#1086'-'#1090#1086': [<a '
              'href="/comics">'#1082#1086#1084#1080#1082#1089'</a>] [<a '
              
                'href="http://maillist.ru/81859/">'#1088#1072#1089#1089#1099#1083#1082#1072'</a>] [<a href="/idea">' +
                #1076#1083#1103' '
              #1084#1086#1073#1080#1083#1100#1085#1080#1082#1072'</a>] [<a href="/webmaster">'#1074#1077#1073#1084#1072#1089#1090#1077#1088#1091'</a>] </div>'#9
              '<hr><center><!--Rating@Mail.ru LOGO--><a target=_top'
              'href="http://top.mail.ru/jump?from=901403"><img'
              'src="http://top.list.ru/counter?id=901403;t=49;l=1"'
              'border=0 height=31 width=88'
              
                'alt="'#1056#1077#1081#1090#1080#1085#1075'@Mail.ru"/></a> <!--/LOGO--><!--LiveInternet logo-->' +
                '<a '
              'href="http://www.liveinternet.ru/click"'
              
                'target=_blank><img src="http://counter.yadro.ru/logo?15.1" borde' +
                'r=0'
              'title="LiveInternet"'
              'alt="" width=88 height=31></a><!--/LiveInternet-->'
              ''
              '<a href="http://www.yandex.ru/cy?base=0&host=bash.org.ru"><img '
              'src="http://www.yandex.ru/cycounter?bash.org.ru" width="88" '
              'height="31" alt="'#1048#1085#1076#1077#1082#1089' '#1062#1080#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1071'ndex" border="0"></a>'
              '<!-- SpyLOG -->'
              
                '<script src="http://tools.spylog.ru/counter_cv.js" id="spylog_co' +
                'de" '
              
                'type="text/javascript" counter="926575" part="" track_links="ext' +
                '" '
              'page_level="0">'
              '</script>'
              '<noscript>'
              '<a href="http://u9265.75.spylog.com/cnt?cid=926575&f=3&p=0" '
              'target="_blank">'
              '<img src="http://u9265.75.spylog.com/cnt?cid=926575&p=0" '
              'alt="SpyLOG" border="0" width="88" height="31"></a>'
              '</noscript>'
              '<!--/ SpyLOG --></center>'#9'<hr><small>'#1048#1076#1077#1103' '#1087#1088#1086#1077#1082#1090#1072' &copy; '
              'bash.org.'
              #9'<br>'#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1080' '#1087#1083#1102#1096#1082#1080' &copy; 2004'#8212'2009, '#1082#1086#1084#1072#1085#1076#1072' '
              'bash.org.ru.'
              #9'<br><a href="/ads">'#1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1076#1083#1103' '
              #1088#1077#1082#1083#1072#1084#1086#1076#1072#1090#1077#1083#1077#1081'</a>. '#1055#1086' '#1076#1088#1091#1075#1080#1084' '#1087#1086#1074#1086#1076#1072#1084': <a '
              'href="&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20&#115;%7'
              '5%70&#112;&#111;&#114;%74%40%62&#097;%73&#104;&#046;&#11'
              '1;%72&#103;&#046;&#114;%75">&#115;&#117;&#112;&#112;&#111;'
              '&#114;&#116;@&#098;&#097;&#115;&#104;&#046;&#111;&#114;&#1'
              '03;&#046;&#114;&#117;</a>.'
              #9'</small>'
              ''
              '</div>'
              '<!--Rating@Mail.ru COUNTER--><script language="JavaScript" '
              'type="text/javascript"><!--'
              'd=document;var a='#39#39';a+='#39';r='#39'+escape(d.referrer)'
              'js=10//--></script><script language="JavaScript1.1" '
              'type="text/javascript"><!--'
              'a+='#39';j='#39'+navigator.javaEnabled()'
              'js=11//--></script><script language="JavaScript1.2" '
              'type="text/javascript"><!--'
              's=screen;a+='#39';s='#39'+s.width+'#39'*'#39'+s.height'
              'a+='#39';d='#39'+(s.colorDepth?s.colorDepth:s.pixelDepth)'
              'js=12//--></script><script language="JavaScript1.3" '
              'type="text/javascript"><!--'
              'js=13//--></script><script language="JavaScript" '
              'type="text/javascript"><!--'
              'd.write('#39'<img src="http://top.list.ru/counter'#39'+'
              #39'?id=901403;js='#39'+js+a+'#39';rand='#39'+Math.random()+'
              #39'" height=1 width=1/>'#39')'
              'if(11<js)d.write('#39'<'#39'+'#39'!-- '#39')//--></script><noscript><img'
              'src="http://top.list.ru/counter?js=na;id=901403"'
              
                'height=1 width=1 alt=""/></noscript><script language="JavaScript' +
                '" '
              'type="text/javascript"><!--'
              'if(11<js)d.write('#39'--'#39'+'#39'>'#39')//--></script><!--/COUNTER-->'
              '<!--LiveInternet counter--><script type="text/javascript"><!--'
              'document.write("<img src='#39'http://counter.yadro.ru/hit?r"+'
              'escape(document.referrer)+((typeof(screen)=="undefined")?"":'
              '";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?'
              'screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+'
              '";"+Math.random()+'
              
                '"'#39' width=1 height=1 alt='#39#39'>")//--></script><!--/LiveInternet--><' +
                'script '
              'type="text/javascript">'
              'var gaJsHost = (("https:" == document.location.protocol) ? '
              '"https://ssl." : "http://www.");'
              'document.write(unescape("%3Cscript src='#39'" + gaJsHost + '
              '"google-analytics.com/ga.js'#39' '
              'type='#39'text/javascript'#39'%3E%3C/script%3E"));'
              '</script>'
              '<script type="text/javascript">'
              'var pageTracker = _gat._getTracker("UA-3271837-1");'
              'pageTracker._initData();'
              'pageTracker._trackPageview();'
              '</script>'
              '</body>'
              '</html>')
            TabOrder = 0
          end
        end
        object MemoTabSheet: TTabSheet
          Caption = 'TestAbyssBest'
          ImageIndex = 2
          object TestAbyssBestMemo: TMemo
            Left = 0
            Top = 0
            Width = 342
            Height = 408
            Align = alClient
            Lines.Strings = (
              '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 '
              'Transitional//EN">'
              '<html>'
              '<head>'
              #9'<title>bash.org.ru - '#1062#1080#1090#1072#1090#1085#1080#1082' '#1056#1091#1085#1077#1090#1072'</title>'
              #9'<link rel="shortcut icon" '
              'href="http://s.bash.org.ru/favicon.ico" '
              'type="image/vnd.microsoft.icon">'
              #9'<link rel="stylesheet" type="text/css" media="screen" '
              'href="http://s.bash.org.ru/screen.css">'
              #9'<link rel="stylesheet" type="text/css" media="handheld" '
              'href="http://s.bash.org.ru/mobile.css">'
              #9'<link rel="alternate" title="Bash.org.ru RSS" '
              'href="http://bash.org.ru/rss/" type="application/rss+xml">'
              #9'<meta http-equiv="Content-Type" content="text/html; '
              'charset=windows-1251">'
              #9'<script src="http://s.bash.org.ru/mtools.js" '
              'language="JavaScript" type="text/javascript"></script> '
              ''
              '</head>'
              '<body style="margin: 0px;">'
              
                '<div style="width: auto; margin: 0px; padding: 0px 0px 0px 30px;' +
                ' '
              
                'background-color: #eee; font-size: 8pt;"><b>[bash.org.ru]</b> [<' +
                'a '
              'href="http://ithappens.ru">IT Happens</a>]</div>'
              '<div id="page">'
              #9'<div class="header"><a href="/"><img '
              'src="http://s.bash.org.ru/logo.gif" width="300" height="40" '
              'alt="bash.org.ru" /></a>bash.org.ru '#8212' '#1062#1080#1090#1072#1090#1085#1080#1082' '#1056#1091#1085#1077#1090#1072'</div>'
              #9'<div class="menu">'#1094#1080#1090#1072#1090#1099': [<a href="/">'#1087#1086#1089#1083#1077#1076#1085#1080#1077'</a>] '
              '[<a href="/random">'#1089#1083#1091#1095#1072#1081#1085#1099#1077'</a>] [<a href="/best">'#1083#1091#1095#1096#1080#1077'</a>] '
              
                '[<a href="/byrating">'#1087#1086' '#1088#1077#1081#1090#1080#1085#1075#1091'</a>] [<a href="/faq">FAQ</a>] [' +
                '<a '
              'href="/rss">RSS</a>] <br>'#1073#1077#1079#1076#1085#1072': [<a href="/abyss">'#1041#1077#1079#1076#1085#1072'</a>] '
              '[<a href="/abysstop">'#1090#1086#1087' '#1041#1077#1079#1076#1085#1099'</a>] <b>['#1083#1091#1095#1096#1077#1077' '#1041#1077#1079#1076#1085#1099']</b> [<a '
              'href="/add">'#1076#1086#1073#1072#1074#1080#1090#1100'</a>] <br>'#1095#1090#1086'-'#1090#1086': [<a '
              'href="/comics">'#1082#1086#1084#1080#1082#1089'</a>] [<a '
              
                'href="http://maillist.ru/81859/">'#1088#1072#1089#1089#1099#1083#1082#1072'</a>] [<a href="/idea">' +
                #1076#1083#1103' '
              #1084#1086#1073#1080#1083#1100#1085#1080#1082#1072'</a>] [<a href="/webmaster">'#1074#1077#1073#1084#1072#1089#1090#1077#1088#1091'</a>] </div>'
              ''
              #9'<div id="quotes"><div class="news">'#1042' '#1101#1090#1086#1084' '#1088#1072#1079#1076#1077#1083#1077' '
              #1089#1086#1073#1088#1072#1085#1099' '#1094#1080#1090#1072#1090#1099', '#1087#1086#1085#1088#1072#1074#1080#1074#1096#1080#1077#1089#1103' '#1095#1080#1090#1072#1090#1077#1083#1103#1084' '#1041#1077#1079#1076#1085#1099'.<br>'
              #1052#1099' '#1085#1077' '#1080#1084#1077#1077#1084' '#1085#1080#1082#1072#1082#1086#1075#1086' '#1086#1090#1085#1086#1096#1077#1085#1080#1103' '#1082' '#1087#1086#1103#1074#1083#1077#1085#1080#1102' '#1094#1080#1090#1072#1090' '#1074' '#1101#1090#1086#1084' '
              #1088#1072#1079#1076#1077#1083#1077', '#1085#1077' '#1087#1088#1077#1076#1098#1103#1074#1083#1103#1081#1090#1077' '#1085#1072#1084' '#1087#1088#1077#1090#1077#1085#1079#1080#1080' '#1087#1086' '#1082#1072#1095#1077#1089#1090#1074#1091', '
              #1087#1086#1078#1072#1083#1091#1081#1089#1090#1072', '#1086#1089#1090#1072#1074#1100#1090#1077' '#1080#1093' '#1076#1083#1103' '#1089#1077#1073#1103' '#1080' '#1076#1088#1091#1075#1080#1093' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081'.'
              #1045#1089#1083#1080' '#1074#1099' '#1089#1095#1080#1090#1072#1077#1090#1077', '#1095#1090#1086' '#1082#1072#1082#1072#1103'-'#1090#1086' '#1080#1079' '#1088#1072#1079#1084#1077#1097#1105#1085#1085#1099#1093' '#1079#1076#1077#1089#1100' '#1094#1080#1090#1072#1090' '
              #1103#1074#1083#1103#1077#1090#1089#1103' '#1089#1087#1072#1084#1086#1084', '#1085#1072#1088#1091#1096#1072#1077#1090' '#1095#1100#1080'-'#1090#1086' '#1072#1074#1090#1086#1088#1089#1082#1080#1077' '#1087#1088#1072#1074#1072' '#1083#1080#1073#1086' '
              #1088#1072#1079#1075#1083#1072#1096#1072#1077#1090' '#1095#1072#1089#1090#1085#1091#1102' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102' &mdash; '#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1086' '
              #1089#1086#1086#1073#1097#1080#1090#1077' '#1085#1072#1084' '#1086#1073' '#1101#1090#1086#1084' '#1087#1086' '#1087#1086#1095#1090#1077'.</div>'
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9#1042#1074#1077#1076#1080#1090#1077' '#1082#1083#1102#1095#1077#1074#1091#1102' '#1092#1088#1072#1079#1091' '#1076#1083#1103' '#1087#1086#1080#1089#1082#1072':'
              #9#9'</div>'
              #9#9'<div>'
              #9#9#9'<form action="/abyssbest"><input '
              'type="text" name="text" value="" style="width: 90%">'
              ''
              #9#9#9'<input type="submit" '
              'value="'#1053#1072#1081#1090#1080'"></form>'
              #9#9'</div>'
              #9'</div><div class="pager"><span '
              'class="first">'#1057#1090#1088#1072#1085#1080#1094#1099':</span><span>915</span><a '
              'href="/abyssbest/914">914</a><a '
              'href="/abyssbest/913">913</a><a '
              'href="/abyssbest/912">912</a><span>'#8230'</span><a '
              'href="/abyssbest/1">1</a><a '
              
                'href="/abyssbest/914">&gt;&gt;</a></div><br style="clear: both;"' +
                ' />'
              #9#9' '
              '        <div class="q">'
              #9#9'<div class="vote">'
              ''
              #9#9#9'<b>46161</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 19:40)'
              #9#9'</div>'
              #9#9'<div>'#1071' (19:51:43 1/02/2009)<br>'#1055#1088#1080#1074#1077#1090'. '
              #1055#1086#1103#1074#1080#1083#1089#1103' '#1088#1072#1079#1075#1086#1074#1086#1088' '#1082' '#1090#1077#1073#1077'. '#1051#1080#1095#1085#1099#1081'. '#1050#1086#1075#1076#1072' '#1090#1077#1073#1077' '#1091#1076#1086#1073#1085#1086' '#1073#1091#1076#1077#1090' '
              #1087#1086#1075#1086#1074#1086#1088#1080#1090#1100'? '#1052#1086#1078#1085#1086' '#1080' '#1087#1086' '#1090#1077#1083#1077#1092#1086#1085#1091', '#1085#1086' '#1073#1077#1079' '#1089#1083#1091#1096#1072#1090#1077#1083#1077#1081' '#1082#1072#1082' '#1089' '
              #1090#1074#1086#1077#1081' '#1090#1072#1082' '#1080' '#1089' '#1084#1086#1077#1081' '#1089#1090#1086#1088#1086#1085#1099'.<br><br>'#1040#1085#1103' (23:09:06 '
              '1/02/2009)<br>'#1087#1088#1080#1074#1077#1090'!<br>'#1084#1086#1078#1077#1096#1100' '#1087#1080#1089#1072#1090#1100' '#1074' '#1072#1089#1100#1082#1091' '#1089#1084#1077#1083#1086'!<br>'#1071' '
              '(23:10:10 1/02/2009)<br>'#1061#1084', '#1103' '#1087#1086#1082#1072' '#1085#1077' '#1091#1074#1077#1088#1077#1085', '#1095#1090#1086' '#1101#1090#1086' '#1090#1099', '#1040#1085#1103'. '
              #1055#1086#1089#1077#1084#1091' '#1074#1086#1087#1088#1086#1089': '#1095#1090#1086' '#1087#1086#1076#1072#1088#1080#1083#1072' '#1084#1085#1077' '#1054#1082#1089#1072#1085#1072' '#1085#1072' '#1076#1077#1085#1100' '
              #1088#1086#1078#1076#1077#1085#1080#1103'?<br>'#1040#1085#1103' (23:10:34 1/02/2009)<br>'#1087#1086#1090#1086#1084' '#1087#1086#1075#1086#1074#1086#1088#1080#1084', '
              #1086#1082'<br>'#1071' (23:11:24 1/02/2009)<br>'#1061#1086#1088#1086#1096#1086', '#1095#1077#1083#1086#1074#1077#1082', '#1074#1099#1076#1072#1102#1097#1080#1081' '
              #1089#1077#1073#1103' '#1079#1072' '#1040#1085#1102'.</div>'
              ''
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<b>46160</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 19:35)'
              #9#9'</div>'
              #9#9'<div>'#1042#1095#1077#1088#1072' '#1087#1088#1080#1089#1085#1080#1083#1089#1103' '#1082#1086#1096#1084#1072#1088' - '#1071' '#1091#1076#1072#1083#1103#1083' '
              #1087#1072#1087#1082#1091' downloads.<br>'#1055#1088#1086#1089#1085#1091#1083#1089#1103' '#1074' '#1093#1086#1083#1086#1076#1085#1086#1084' '#1087#1086#1090#1091'.</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<b>46159</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 19:30)'
              #9#9'</div>'
              #9#9'<div>'#1061#1061#1061': '#1082#1090#1086' '#1074' '#1083#1080#1085#1077#1081#1082#1091' '#1080#1075#1088#1072#1083'?<br>YYY '#187' XXX '
              ': '#1103' '#1074' '#1085#1077#1105' '#1095#1077#1088#1090#1080#1083'</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              ''
              #9#9#9'<b>46158</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 19:20)'
              #9#9'</div>'
              #9#9'<div>'#1055#1051#1070#1064#1040': '#1091' '#1084#1077#1085#1103' '#1074#1089#1077#1075#1076#1072' '#1073#1099#1083#1072' '#1084#1077#1095#1090#1072' '
              #1082#1091#1087#1080#1090#1100' '#1073#1086#1083#1100#1096#1091#1102' '#1089#1086#1073#1072#1082#1091', '#1080' '#1095#1090#1086#1073#1099' '#1086#1085#1072' '#1089#1086' '#1084#1085#1086#1081' '#1085#1072' '#1082#1088#1086#1074#1072#1090#1077' '#1089#1087#1072#1083#1072'))) '
              #1074#1084#1077#1089#1090#1086' '#1084#1091#1078#1072')))<br>'#1045#1085#1103': '#1072' '#1084#1091#1078' '#1079#1085#1072#1077#1090'?<br>'#1055#1051#1070#1064#1040': '
              #1076#1086#1075#1072#1076#1099#1074#1072#1077#1090#1089#1103'...<br>'#1055#1051#1070#1064#1040': '#1103' '#1080#1085#1086#1075#1076#1072' '#1077#1075#1086' '#1086#1073#1085#1080#1084#1072#1102' '#1079#1072' '#1084#1086#1093#1085#1072#1090#1099#1077' '
              #1085#1086#1078#1082#1080' '#1080' '#1083#1072#1072#1072#1072#1089#1082#1086#1074#1086' '#1090#1072#1082' '#1075#1086#1074#1086#1088#1102' &quot;'#1064#1072#1072#1072#1072#1088#1080#1082'&quot;..)</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<b>46157</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 19:20)'
              #9#9'</div>'
              #9#9'<div>'#1047#1072#1093#1086#1076#1080#1096#1100' '#1074' '#1083#1080#1092#1090' - '#1072' '#1090#1072#1084' '#1085#1072#1075#1072#1078#1077#1085#1086', '
              #1074#1099#1093#1086#1076#1080#1096#1100' - '#1090#1077#1087#1077#1088#1100' '#1077#1097#1077' '#1080' '#1085#1072#1073#1083#1077#1074#1072#1085#1086'!</div>'
              #9'</div>'#9' '
              #9'<hr class="iq"> '
              '<div class="q"><div><center><iframe '
              'src="http://lol.bash.org.ru/_ad.php?zone=zone:3" '
              'allowtransparency="true" style="background-color:#f3f3f3;" '
              'width="600" height="90" marginwidth="0" marginheight="0" '
              'scrolling="no" frameborder="0" name="ctf" '
              'id="ctf"></iframe></center></div></div> '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<b>46156</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 19:15)'
              #9#9'</div>'
              #9#9'<div>'#1055#1086#1084#1085#1102' '#1073#1099#1083#1086' '#1076#1077#1083#1086'. 2002 '#1075#1086#1076'. '#1051#1077#1090#1086'. '#1046#1072#1088#1072'. '
              #1048#1076#1091' '#1089' '#1076#1088#1091#1075#1086#1084' '#1085#1072' '#1084#1077#1076' '#1086#1089#1084#1086#1090#1088', '#1090#1072#1082' '#1079#1072' '#1082#1086#1084#1087#1072#1085#1080#1102'. '#1055#1088#1080#1096#1083#1080' '#1085#1072' '
              #1092#1083#1102#1086#1088#1086#1075#1088#1072#1092#1080#1102'. '#1047#1072#1093#1086#1076#1080#1084' '#1080'... '#1086' '#1041#1086#1078#1077', '#1089#1090#1086#1080#1090' '#1073#1072#1073#1082#1072' '#1074' '#1086#1076#1085#1086#1081' '#1102#1073#1082#1077'. '
              #1052#1099' '#1074' '#1096#1086#1082#1077', '#1074#1088#1072#1095#1080#1093#1072' '#1085#1072' '#1085#1072#1089' '#1086#1088#1105#1090', '#1090#1080#1087#1072' '#1087#1086#1095#1077#1084#1091' '#1073#1077#1079' '#1088#1072#1079#1088#1077#1096#1077#1085#1080#1103', '
              
                #1079#1076#1077#1089#1100' '#1078#1077' '#1087#1072#1094#1080#1077#1085#1090'!!! '#1040' '#1073#1072#1073#1091#1083#1103' '#1089#1090#1086#1080#1090' '#1080' '#1074#1099#1076#1072#1105#1090':&quot; '#1053#1080#1095#1077#1075#1086', '#1087#1091#1089#1090#1100 +
                ' '
              #1084#1072#1083#1100#1095#1080#1082#1080' '#1087#1086#1075#1083#1103#1076#1103#1090' '#1085#1072' '#1078#1077#1085#1089#1082#1086#1077' '#1090#1077#1083#1086'...&quot;. '#1055#1086#1089#1083#1077' '#1101#1090#1086#1075#1086' '#1085#1077#1076#1077#1083#1102' '
              #1085#1072' '#1076#1077#1074#1091#1096#1077#1082' '#1085#1077' '#1089#1084#1086#1090#1088#1077#1083'</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<b>46155</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 19:10)'
              #9#9'</div>'
              #9#9'<div>xxx: '#1052#1086#1095#1077#1087#1086#1083#1086#1074#1072#1103' '#1089#1080#1089#1090#1077#1084#1072' '#1089' '#1082#1088#1086#1074#1077#1085#1086#1089#1085#1086#1081' '
              #1085#1077' '#1089#1086#1086#1073#1097#1072#1102#1090#1089#1103'<br>yyy: '#1069#1090#1086' '#1077#1089#1083#1080' '#1087#1072#1094#1080#1077#1085#1090' '#1093#1086#1088#1086#1096#1086' '#1089#1077#1073#1103' '#1074#1077#1083' '#1076#1086' '
              #1085#1072#1095#1072#1083#1072' '#1086#1087#1077#1088#1072#1094#1080#1080'!!!</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              ''
              #9#9#9'<b>46154</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 19:00)'
              #9#9'</div>'
              #9#9'<div>Mr. DHD, 01.02.2009 21:03:05:<br>'#1095#1090#1086' '#1090#1099' '
              #1076#1091#1084#1072#1077#1096#1100' '#1086#1073' '#1101#1092#1090#1072#1085#1072#1079#1080#1080'?<br><br>DanilPo, 21:03:19:<br>'#1063#1090#1086' '#1086#1085#1072' '
              #1087#1080#1096#1077#1090#1089#1103' '#1095#1077#1088#1077#1079' &quot;'#1074'&quot;</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              ''
              #9#9#9'<b>46153</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 18:50)'
              #9#9'</div>'
              #9#9'<div>'#1093#1093#1093': '#1083#1102#1073#1086#1074', '#1101#1090#1086' '#1082#1086#1075#1076#1072' '#1074#1089#1090#1072#1077#1090' '#1076#1072#1078#1077' '#1086#1090' '
              #1088#1072#1079#1075#1086#1074#1086#1088#1072' '#1087#1086' '#1072#1089#1077'<br>'#1091#1091#1091': '#1076#1088#1091#1075' '#1090#1099' '#1086#1097#1080#1073#1089#1103', '#1101#1090#1086' '
              #1089#1087#1077#1088#1084#1090#1086#1082#1089#1080#1082#1086#1079'</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<b>46152</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 18:45)'
              #9#9'</div>'
              ''
              #9#9'<div>45507 ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-01-28 '#1074' '
              '10:55)<br>'#1077#1073#1072#1085#1091#1090#1072#1103' '#1089#1090#1088#1072#1085#1072'!!! '#1058#1086#1082#1072' '#1095#1090#1086' '#1089#1084#1086#1090#1088#1077#1083' '#1074' '#1085#1086#1074#1086#1089#1090#1103#1093': '
              #1087#1100#1103#1085#1099#1081' '#1084#1091#1089#1086#1088' '#1075#1086#1076' '#1085#1072#1079#1072#1076' '#1085#1072#1089#1084#1077#1088#1090#1100' '#1089#1073#1080#1083' 11-'#1083#1077#1090#1085#1102#1102' '#1076#1077#1074#1086#1095#1082#1091', '#1085#1077' '
              #1086#1089#1090#1072#1085#1086#1074#1080#1083#1089#1103' '#1080' '#1085#1077' '#1086#1082#1072#1079#1072#1083' '#1077#1081' '#1087#1077#1088#1074#1091#1102' '#1087#1086#1084#1086#1097#1100', '#1072' '#1087#1088#1086#1089#1090#1086' '#1087#1086#1077#1093#1072#1083' '
              #1076#1072#1083#1100#1096#1077'. '#1057#1077#1081#1095#1072#1089' '#1077#1075#1086' '#1089#1091#1076#1103#1090', '#1077#1084#1091' '#1075#1088#1086#1079#1080#1090' '#1044#1054' 5 '#1051#1045#1058' '#1051#1048#1064#1045#1053#1048#1071' '
              #1057#1042#1054#1041#1054#1044#1067'!!! '#1069#1090#1086', '#1073#1083#1103#1076#1100', '#1089#1087#1088#1072#1074#1077#1076#1083#1080#1074#1086'???<br><br>'#1045#1089#1083#1080' '#1085#1072' '#1086#1073#1097#1077#1081' '
              #1079#1086#1085#1077', '#1090#1086' '#1076#1072'</div>'
              #9'</div>'#9'<hr class="iq"> '
              '<div class="q"><div><script language='#39'JavaScript'#39' '
              
                'type='#39'text/javascript'#39' src='#39'http://lol.bash.org.ru/b/adx.js'#39'></s' +
                'cript>'
              '<script language='#39'JavaScript'#39' type='#39'text/javascript'#39'>'
              '<!--'
              '   if (!document.phpAds_used) document.phpAds_used = '#39','#39';'
              '   phpAds_random = new String (Math.random()); phpAds_random = '
              'phpAds_random.substring(2,11);'
              '   '
              '   document.write ("<" + "script language='#39'JavaScript'#39' '
              'type='#39'text/javascript'#39' src='#39'");'
              '   document.write ("http://lol.bash.org.ru/b/adjs.php?n=" + '
              'phpAds_random);'
              '   document.write ("&amp;what=zone:2");'
              '   document.write ("&amp;exclude=" + document.phpAds_used);'
              '   if (document.referrer)'
              
                '      document.write ("&amp;referer=" + escape(document.referrer' +
                '));'
              '   document.write ("'#39'><" + "/script>");'
              '//-->'
              
                '</script><noscript><a href='#39'http://lol.bash.org.ru/b/adclick.php' +
                '?n='#39' '
              'target='#39'_blank'#39'><img '
              'src='#39'http://lol.bash.org.ru/b/adview.php?what=zone:2&amp;n='#39' '
              
                'border='#39'0'#39' alt='#39#39'></a></noscript></div></div><div class="q"><div' +
                ' '
              'style="text-align: center; font-size: 10pt;">'#1053#1072' '#1089#1072#1081#1090#1077' <a '
              'href="http://www.platforma2009.ru/">'#1055#1083#1072#1090#1092#1086#1088#1084#1072' Online</a> '#1089#1090#1072#1083#1080' '
              #1076#1086#1089#1090#1091#1087#1085#1099' '#1073#1086#1083#1077#1077' '#1096#1077#1089#1090#1080#1076#1077#1089#1103#1090#1080' '#1090#1077#1093#1085#1080#1095#1077#1089#1082#1080#1093' '#1076#1086#1082#1083#1072#1076#1086#1074' '#1087#1086' '
              #1087#1088#1086#1076#1091#1082#1090#1072#1084' Microsoft, '#1072' '#1090#1072#1082#1078#1077' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1099' '#1082' '#1085#1080#1084' '
              '('#1087#1088#1077#1079#1077#1085#1090#1072#1094#1080#1080', '#1087#1088#1080#1084#1077#1088#1099' '#1082#1086#1076#1072' '#1080' '#1090#1072#1082' '#1076#1072#1083#1077#1077'). <a '
              'href="http://www.platforma2009.ru/">'#1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1091#1081#1090#1077#1089#1100'</a> '#1080' '
              #1089#1090#1072#1085#1100#1090#1077' '#1086#1076#1085#1080#1084' '#1080#1079' '#1091#1095#1072#1089#1090#1085#1080#1082#1086#1074' '#1055#1083#1072#1090#1092#1086#1088#1084#1099' Online!</div></div> '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<b>46151</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 18:30)'
              #9#9'</div>'
              #9#9'<div>Alex:<br>'#1103' '#1087#1086#1089#1090#1072#1074#1080#1083' '
              #1088#1077#1082#1086#1088#1076'<br>Alex:<br>'#1055#1086#1095#1080#1089#1090#1080#1083' 100 '#1088#1099#1073#1077#1096#1077#1082'<br>Olegas:<br>'#1082#1072#1082#1080#1093' '
              #1088#1099#1073#1077#1096#1077#1082'?<br>Alex:<br>'#1082#1091#1087#1080#1083' '#1089#1077#1076#1085#1103' '#1082#1080#1083#1086' '
              #1082#1072#1088#1072#1089#1080#1082#1086#1074'<br>Alex:<br>'#1057#1077#1081#1095#1072#1089' '#1078#1072#1088#1102'<br>Olegas:<br>'#1082#1080#1083#1086' '#1082#1072#1088#1072#1089#1077#1081' '
              '= 1000 '#1075#1088' - 100 '#1088#1099#1073#1077#1096#1077#1082' - 10 '#1075#1088' '#1082#1072#1088#1072#1089#1100'<br>'#1057#1040#1064#1040' - '#1058#1071' '
              #1054#1041#1052#1040#1053#1059#1051#1048' - '#1069#1058#1054' '#1040#1050#1042#1040#1056#1048#1059#1053#1067#1045' '#1056#1067#1041#1050#1048'<br>'#1085#1086' '#1091#1078#1072#1089' ! '#1058#1067' '#1048#1061' '
              #1057#1052#1054#1043' '#1055#1054#1063#1048#1057#1058#1048#1058#1068'???</div>'
              ''
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<b>46150</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 18:15)'
              #9#9'</div>'
              #9#9'<div>'#1059#1082#1088#1072#1080#1085#1094#1099', '#1072' '#1089#1083#1072#1073#1086' '#1089#1077#1081#1095#1072#1089' '#1085#1072' '#1052#1072#1081#1076#1072#1085' '
              #1074#1099#1081#1090#1080'. '#1057#1077#1081#1095#1072#1089', '#1082#1086#1075#1076#1072' '#1042#1072#1084' '#1079#1072' '#1101#1090#1086' '#1076#1077#1085#1077#1075' '#1085#1077' '#1087#1083#1072#1090#1103#1090' '#1080' '#1074#1086#1076#1082#1080' '
              #1093#1072#1083#1103#1074#1085#1086#1081' '#1085#1077' '#1085#1072#1083#1080#1074#1072#1102#1090'?!</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<b>46149</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 18:05)'
              #9#9'</div>'
              #9#9'<div>'#1072' '#1079#1085#1072#1077#1090#1077','#1082#1072#1082' '#1091' '#1085#1072#1089' '#1091#1073#1086#1088#1097#1080#1094#1072' '#1083#1072#1089#1082#1086#1074#1086' '
              #1082#1086#1090#1086#1074' '#1085#1072#1079#1099#1074#1072#1077#1090'? &quot;'#1093#1091'*'#1090#1072' '#1087#1083#1102#1096#1077#1074#1072#1103'&quot;... :))</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              ''
              #9#9#9'<b>46148</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 18:05)'
              #9#9'</div>'
              #9#9'<div>'#1053#1077' '#1076#1072#1074#1085#1086' '#1074' '#1086#1076#1085#1086#1081' '#1089#1077#1090#1080' '#1084#1072#1075#1072#1079#1080#1085#1086#1074' '#1073#1099#1083#1080' '
              #1079#1072#1084#1077#1095#1077#1085#1099' '#1095#1091#1076#1085#1099#1077' '#1082#1086#1085#1089#1077#1088#1074#1099' '#1044#1103#1076#1103' '#1074#1072#1085#1103' '#1093#1088#1077#1085' '#1089' '#1083#1080#1084#1086#1085#1086#1084'</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<b>46147</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 18:05)'
              #9#9'</div>'
              ''
              #9#9'<div>'#1045#1089#1083#1080' '#1086#1087#1080#1089#1072#1090#1100' '#1085#1072#1089#1083#1072#1078#1076#1077#1085#1080#1077' '#1086#1090' '#1086#1088#1075#1072#1079#1084#1072' '#1091' '
              #1084#1091#1078#1095#1080#1085', '#1090#1086' '#1086#1085#1086' '#1074#1099#1093#1086#1076#1080#1090' '#1095#1080#1089#1090#1086' '#1092#1080#1079#1080#1095#1077#1089#1082#1080#1084', '#1091' '#1078#1077#1085#1097#1080#1085' '#1073#1086#1083#1100#1096#1077' '
              #1076#1091#1093#1086#1074#1085#1099#1084'... '#1042#1086#1090' '#1087#1086#1095#1077#1084#1091' '#1084#1091#1078#1080#1082#1080' '#1077#1073#1091#1090' '#1080#1089#1082#1083#1102#1095#1080#1090#1077#1083#1100#1085#1086' '#1090#1077#1083#1086', '#1072' '
              #1078#1077#1085#1097#1080#1085#1099' '#1084#1086#1079#1075' '#1080' '#1076#1091#1096#1091' ^^<br><br>Z ^^</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<b>46146</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 17:55)'
              #9#9'</div>'
              #9#9'<div>'#1050':<br>'#1040#1085#1085#1072' '#1051#1099#1082#1086#1074#1072' 18'#1083#1077#1090' '#1056#1086#1089#1089#1080#1103', '
              #1048#1078#1077#1074#1089#1082'<br>'#1052#1086#1083#1086#1076#1099#1077' '#1083#1102#1076#1080', '#1085#1077' '#1087#1080#1096#1080#1090#1077' '#1084#1085#1077' '#1077#1089#1083#1080': '#1074#1072#1084' '#1077#1097#1077' '#1085#1077' '
              #1080#1089#1087#1086#1083#1085#1080#1083#1086#1089#1100' 25 '#1083#1077#1090', '#1077#1089#1083#1080' '#1074#1099' '#1078#1080#1074#1077#1090#1077' '#1089' '#1088#1086#1076#1080#1090#1077#1083#1103#1084#1080', '#1080#1083#1080' '
              #1089#1085#1080#1084#1072#1077#1090#1077' '#1082#1074#1072#1088#1090#1080#1088#1091', '#1077#1089#1083#1080' '#1074#1072#1096' '#1077#1078#1077#1084#1077#1089#1103#1095#1085#1099#1081' '#1076#1086#1093#1086#1076' '#1089#1086#1089#1090#1086#1074#1083#1103#1077#1090' 30 '
              #1090'.'#1088'...<br>'#1050#1086#1075#1086' '#1103' '#1093#1086#1095#1091' '#1085#1072#1081#1090#1080':<br>'#1062#1077#1083#1077#1091#1089#1090#1088#1077#1084#1083#1077#1085#1085#1086#1075#1086', '#1091#1089#1087#1077#1096#1085#1086#1075#1086', '
              #1097#1077#1076#1088#1086#1075#1086'.<br>'#1080' '#1087#1088#1077#1076#1091#1087#1088#1077#1078#1076#1072#1102' '#1089#1088#1072#1079#1091', '#1090#1088#1077#1073#1091#1102' '#1086#1095#1077#1085#1100' '
              #1084#1085#1086#1075#1086#1075#1086'<br>=========<br>'#1054#1085#1072' '#1074#1086#1090' '#1088#1077#1072#1083#1100#1085#1086' '#1076#1091#1084#1072#1077#1090', '#1095#1090#1086' '#1074' 25 '#1089' '
              #1079#1072#1088#1087#1083#1072#1090#1086#1081' 30+, '#1089#1074#1086#1077#1081' '#1082#1074#1072#1088#1090#1080#1088#1086#1081', '#1084#1072#1096#1080#1085#1086#1081' '#1080' '#1090#1087' '#1084#1085#1077' '#1085#1091#1078#1085#1072' '
              #1087#1083#1072#1090#1085#1072#1103' 18'#1090#1080' '#1083#1077#1090#1085#1103#1103' '#1076#1099#1088#1082#1072' '#1076#1072#1088#1084#1086#1077#1076'? '
              
                '&gt;_&lt;<br>--------------<br>'#1040#1093#1072#1093#1072#1093#1072#1093#1072#1093#1072#1093#1072#1093#1072', '#1087#1080#1079#1076#1077#1094' '#1087#1072#1094#1072#1085#1091' '#1079#1086 +
                #1083#1086#1090#1086#1081' '
              #1087#1072#1084#1103#1090#1085#1080#1082'</div>'
              ''
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<b>46145</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 17:50)'
              #9#9'</div>'
              #9#9'<div>'#1073#1072#1096' '#1089#1091#1082#1086' '#1089#1087#1072#1089' '#1084#1077#1085#1103'!!'#1090#1086#1095#1085#1077#1077' '
              #1084#1072#1075#1085#1080#1090#1086#1083#1091','#1082#1086#1090#1086#1088#1091#1102' '#1082#1072#1082#1080#1077' '#1090#1086' '#1082#1086#1085#1076#1086#1084#1099' '#1087#1099#1090#1072#1083#1080#1089#1100' '#1074#1099#1090#1072#1097#1080#1090#1100' '#1080#1079' '
              #1084#1086#1077#1075#1086' '#1072#1074#1090#1086'.'#1079#1072#1095#1080#1090#1072#1083#1089#1103' '#1080' '#1074' '#1087#1086#1083#1087#1103#1090#1086#1075#1086' '#1074' '#1086#1082#1085#1086' '#1091#1074#1080#1076#1077#1083','#1082#1072#1082' '#1090#1088#1080' '#1089#1082#1086#1090#1072' '
              #1074#1089#1082#1088#1099#1074#1072#1102#1090' '#1084#1072#1096#1080#1085#1091'.'#1086#1090' '#1074#1089#1077#1081' '#1076#1091#1096#1080' '#1074#1099#1088#1072#1078#1072#1102' '
              #1073#1083#1072#1075#1086#1076#1072#1088#1085#1086#1089#1090#1100'.'#1089#1087#1072#1089#1080#1073#1086'</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<b>46144</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 17:30)'
              #9#9'</div>'
              #9#9'<div>&quot;...'#1089#1077#1081#1095#1072#1089', '#1092#1080#1085#1072#1085#1089#1086#1074#1099#1077' '#1072#1085#1072#1083#1080#1090#1080#1082#1080' '
              #1093#1091#1078#1077' '#1089#1080#1085#1086#1087#1090#1080#1082#1086#1074'...&quot; ('#1089') '#1087#1077#1088#1074#1099#1081' '#1082#1072#1085#1072#1083', '#1074#1086#1089#1082#1088#1077#1089#1085#1086#1077' '
              '&quot;'#1042#1088#1077#1084#1103'&quot;</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<b>46143</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 17:30)'
              #9#9'</div>'
              #9#9'<div>'#1063#1063#1063': '#1072#1075#1072'..'#1103' '#1074#1086#1090' '#1095#1077#1075#1086' '#1087#1086#1076#1091#1084#1072#1083'...'#1095#1077#1088#1100#1074' '
              #1084#1086#1075#1077#1090' '#1076#1074#1080#1075#1072#1090#1100#1089#1103' '#1074' '#1086#1073#1077#1089#1090#1086#1088#1086#1085#1099' '#1089#1074#1086#1080#1093' '#1082#1086#1085#1094#1086#1074' '#1085#1077#1079#1072#1074#1080#1089#1080#1084#1086','#1079#1085#1072#1095#1080#1090' '
              #1091' '#1085#1077#1075#1086' '#1089' '#1076#1074#1091#1093' '#1089#1090#1086#1088#1086#1085' '#1087#1086#1087#1072'...'#1072' '#1089#1083#1077#1076#1086#1074#1072#1090#1077#1083#1100#1085#1086' '#1086#1085' '#1076#1086#1083#1078#1077#1085' '
              #1095#1091#1074#1089#1090#1074#1086#1074#1072#1090#1100' '#1087#1088#1080#1073#1083#1080#1078#1077#1085#1080#1077' '#1086#1087#1072#1089#1085#1086#1089#1090#1080' '#1074' '#1076#1074#1072' '#1088#1072#1079#1072' '#1089#1080#1083#1100#1085#1077#1077'..'#1090#1072#1082' '#1087#1086' '
              #1095#1077#1084#1091#1078#1077' '#1101#1090#1086' &quot;'#1095#1091#1081#1089#1090#1074#1080#1090#1077#1083#1100#1085#1086#1077'&quot; '#1078#1080#1074#1086#1090#1085#1072#1077' '#1085#1077' '#1091#1073#1077#1075#1072#1077#1090' '#1086#1090' '
              #1088#1099#1073#1072#1083#1086#1074#1072#1092'?))))<br><br>'#1059#1059#1059': '#1087#1086#1090#1086#1084#1091' '#1095#1090#1086' '#1073#1077#1078#1072#1090#1100' '#1085#1072#1095#1080#1085#1072#1077#1090' '#1089#1088#1072#1079#1091' '#1074' '
              '2 '#1089#1090#1086#1088#1086#1085#1099'.<br><br></div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<b>46142</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 17:30)'
              #9#9'</div>'
              #9#9'<div>FLASH: '#1042' '#1090#1086#1083#1082#1086#1074#1072#1085#1080#1080' '#1089#1085#1086#1074' '#1087#1086' '#1079#1072#1087#1088#1086#1089#1091' '
              
                '&quot;'#1082#1086#1090'&quot;, '#1079#1085#1072#1095#1077#1085#1080#1077':<br>&quot;'#1057#1083#1091#1095#1072#1081#1085#1086' '#1091#1073#1080#1090#1100' '#1082#1086#1090#1072' '#1074#1086' '#1089#1085#1077' -' +
                ' '
              #1086#1079#1085#1072#1095#1072#1077#1090', '#1095#1090#1086' '#1074' 2045 '#1075#1086#1076#1091' '#1074' '#1045#1075#1080#1087#1090#1077' '#1073#1091#1076#1077#1090' '#1087#1086#1081#1084#1072#1085' '#1086#1089#1086#1073#1086' '#1086#1087#1072#1089#1085#1099#1081' '
              #1084#1077#1078#1076#1091#1085#1072#1088#1086#1076#1085#1099#1081' '#1087#1088#1077#1089#1090#1091#1087#1085#1080#1082'.&quot;</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<b>46141</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 17:15)'
              #9#9'</div>'
              #9#9'<div>'#1056#1072#1089#1089#1082#1072#1079#1099#1074#1072#1077#1090' '#1076#1080#1088#1077#1082#1090#1086#1088' '#1075#1086#1089'.'#1091#1095#1077#1088#1077#1078#1076#1077#1085#1080#1103' '
              '('#1087#1088#1086' '#1074#1099#1076#1077#1083#1077#1085#1080#1077' '#1073#1102#1076#1078#1077#1090#1085#1099#1093' '#1082#1086#1084#1087#1086#1074'):<br>'#8212' '#1071' '#1074' '#1101#1090#1086#1084' '#1076#1077#1083#1077' '#1088#1091#1082#1091' '
              #1085#1072#1073#1080#1083#1072'. '#1055#1088#1080#1082#1080#1085#1091#1083#1072' - '#1085#1091#1078#1085#1086' 20 '#1089#1080#1089#1090#1077#1084#1085#1080#1082#1086#1074', '#1086#1090#1087#1088#1072#1074#1080#1083#1072' '#1079#1072#1082#1072#1079' '#1085#1072' '
              '70. '#1054#1090#1074#1077#1090#1080#1083#1080', '#1095#1090#1086' '#1084#1086#1075#1091#1090' '#1074#1099#1089#1083#1072#1090#1100' 23. '#1055#1088#1080#1074#1077#1079#1083#1080', '#1088#1072#1073#1086#1095#1080#1093' '
              #1086#1082#1072#1079#1072#1083#1086#1089#1100' 20. '#1050#1072#1082' '#1080' '#1085#1072#1076#1086'.</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              ''
              #9#9#9'<b>46140</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 17:05)'
              #9#9'</div>'
              #9#9'<div>&lt;Minimus&gt; &quot;'#1087#1088#1086#1096#1091' '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1080#1090#1100' '
              #1073#1086#1083#1100#1085#1080#1095#1085#1099#1081' '#1085#1072' '#1085#1077#1076#1077#1083#1102' '#1074#1074#1080#1076#1091' '#1073#1077#1079#1091#1076#1077#1088#1078#1085#1086#1075#1086' '
              #1087#1086#1085#1086#1089#1072'&quot;<br>&lt;Minimus&gt; &quot;'#1073#1099#1089#1090#1088#1077#1077#1077' '#1073#1083#1103#1090#1100'&quot;</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<b>46139</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 17:05)'
              #9#9'</div>'
              #9#9'<div>xxx: '#1071' '#1074#1095#1077#1088#1072' '#1093#1086#1076#1080#1083#1072' '#1085#1072' '#1072#1081#1082#1080#1076#1086' :)<br>yyy: '#1071' '
              #1074' '#1082#1091#1088#1089#1077' )) '#1055#1086#1085#1088#1072#1074#1080#1083#1086#1089#1100'? =)<br>xxx: '#1072#1075#1072'. )<br>yyy: '#1058#1077#1087#1077#1088#1100' '#1090#1099' '
              
                #1073#1091#1076#1077#1096#1100' '#1085#1072' '#1087#1072#1088#1085#1077' '#1089#1074#1086#1077#1084' '#1087#1088#1072#1082#1090#1080#1082#1086#1074#1072#1090#1100#1089#1103'? ))))<br>'#1093#1093#1093': '#1051#1086#1083' ) '#1071' '#1077#1075#1086' '#1080 +
                ' '
              #1090#1072#1082' '#1091#1083#1086#1078#1091' '#1086#1076#1085#1086#1081' '#1083#1077#1074#1086#1081'. '#1041#1077#1079' '#1072#1081#1082#1080#1076#1086'.<br>yyy: '#1054#1085' '#1090#1072#1082#1086#1081' '
              #1089#1083#1072#1073#1077#1085#1100#1082#1080#1081'? '#1054'_'#1086'<br>xxx: '#1053#1077#1090', '#1087#1088#1086#1089#1090#1086' '#1103' '#1087#1088#1080#1077#1084' '#1073#1077#1079#1086#1090#1082#1072#1079#1085#1099#1081' '
              
                #1079#1085#1072#1102'.<br>yyy: '#1051#1077#1074#1086#1081' '#1088#1091#1082#1086#1081' - '#1074' '#1087#1072#1093' '#1089#1086' '#1074#1089#1077#1081' '#1089#1080#1083#1099'? )<br>xxx: '#1060#1080', '#1082#1072 +
                #1082' '
              #1085#1077#1101#1089#1090#1077#1090#1080#1095#1085#1086'. '#1051#1077#1074#1086#1081' '#1088#1091#1082#1086#1081' '#1088#1072#1089#1089#1090#1077#1075#1080#1074#1072#1102' '#1083#1080#1092#1095#1080#1082' '#1080' '#1086#1085' '#1089#1072#1084' '#1087#1076#1072#1077#1090' '#1086#1090' '
              #1074#1086#1089#1090#1086#1088#1075#1072' O:)<br>yyy: '#1047#1072#1090#1086' '#1087#1088#1072#1082#1090#1080#1095#1085#1086' )) '#1052#1084#1084' =)<br>xxx: '#1042#1086#1086#1073#1097#1077' '#1103' '
              #1090#1088#1091#1076#1085#1086#1089#1090#1080' '#1083#1102#1073#1083#1102'. '#1059' '#1084#1077#1085#1103' '#1089#1074#1086#1103' '#1089#1080#1089#1090#1077#1084#1072' '#1086#1093#1086#1090#1099' '#1085#1072' '
              #1084#1091#1078#1080#1082#1086#1074'-'#1088#1086#1083#1077#1074#1080#1082#1086#1074'. '#1057#1085#1072#1095#1072#1083#1072' '#1087#1072#1083#1082#1086#1081' '#1073#1100#1077#1096#1100' '#1087#1086' '#1078#1077#1083#1077#1079#1085#1086#1084#1091' '#1074#1077#1076#1088#1091' '
              #1085#1072' '#1075#1086#1083#1086#1074#1077', '#1082#1086#1090#1086#1088#1086#1077' '#1079#1072#1084#1077#1085#1103#1077#1090' '#1096#1083#1077#1084'. '#1054#1075#1083#1091#1096#1072#1077#1096#1100'. '#1040' '#1087#1086#1090#1086#1084' '#1073#1077#1088#1077#1096#1100' '
              #1082#1086#1085#1089#1077#1088#1074#1085#1099#1081' '#1085#1086#1078' '#1080' '#1084#1077#1076#1083#1077#1085#1085#1086', '#1080#1079#1074#1083#1077#1082#1072#1077#1096#1100' '#1080#1079' '#1076#1086#1089#1087#1077#1093#1086#1074' '
              #1073#1077#1089#1095#1091#1074#1089#1090#1074#1077#1085#1085#1086#1077' '#1090#1077#1083#1086'. '#1040' '#1087#1086#1090#1086#1084' '#1086#1085' '#1091#1078#1077' '#1085#1080#1082#1091#1076#1072' '#1085#1077' '#1076#1077#1085#1077#1090#1089#1103'.<br>yyy: '
              'O_O ))) '#1040' '#1077#1089#1083#1080' '#1076#1086#1089#1087#1077#1093' - '#1073#1091#1090#1072#1092#1086#1088#1080#1103'? '#1053#1091', '#1090#1072#1084', '#1074#1077#1076#1077#1088#1082#1086' '
              #1087#1083#1072#1089#1090#1080#1082#1086#1074#1086#1077', '#1092#1086#1083#1100#1075#1086#1081' '#1086#1073#1084#1086#1090#1072#1085#1085#1086#1077' =))<br>xxx: '#1058#1086#1075#1076#1072' '
              #1087#1088#1080#1082#1072#1087#1099#1074#1072#1077#1096#1100' '#1090#1077#1083#1086' '#1087#1086#1076' '#1082#1091#1089#1090#1086#1084' '#1080' '#1080#1097#1077#1096#1100' '#1085#1086#1074#1086#1075#1086'.<br>yyy: '#1054#1086#1086' =)) '
              #1040' '#1077#1089#1083#1080' '#1085#1077' '#1086#1075#1083#1091#1096#1080#1096#1100'? '#1063#1090#1086' '#1073#1091#1076#1077#1096#1100' '#1076#1077#1083#1072#1090#1100', '#1082#1086#1075#1076#1072' '#1082' '#1090#1077#1073#1077' '
              #1087#1086#1074#1077#1088#1085#1077#1090#1089#1103' '#1090#1072#1082#1086#1081' '#1074#1086#1090' '#1079#1076#1086#1088#1086#1074#1099#1081', '#1084#1086#1075#1091#1095#1080#1081' '#1078#1077#1083#1077#1079#1085#1099#1081' '#1095#1077#1083#1086#1074#1077#1082'? '
              '))<br>xxx: O:) '#1051#1077#1074#1086#1081' '#1088#1091#1082#1086#1081' '#1088#1072#1089#1089#1090#1077#1075#1085#1091' '#1083#1080#1092#1095#1080#1082'.</div>'
              ''
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<b>46138</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 17:00)'
              #9#9'</div>'
              #9#9'<div>'#1057#1087#1072#1089#1080#1073#1086' '#1090#1077#1073#1077', '#1087#1088#1072#1076#1077#1076', '#1095#1090#1086' '#1090#1099' '#1074' 17 '#1075#1086#1076#1091' '
              #1089#1098#1077#1073#1072#1083' '#1085#1072' '#1090#1077#1083#1077#1075#1077' '#1080#1079' '#1091#1082#1088#1072#1080#1085#1099' '#1085#1072' '#1072#1083#1090#1072#1081'</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<b>46137</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 16:55)'
              #9#9'</div>'
              #9#9'<div>'#1047#1072#1093#1086#1078#1091' '#1085#1072' '#1082#1091#1093#1085#1102'.'#1052#1072#1090#1100','#1086#1090#1077#1094' '#1080' '#1073#1088#1072#1090' (8 '#1083#1077#1090') '
              #1080#1075#1088#1072#1102#1090' '#1074' '#1085#1072#1089#1090#1086#1083#1100#1085#1091#1102' '#1080#1075#1088#1091' '#1056#1080#1089#1082'.'#1063#1090#1086'-'#1090#1086' '#1074#1088#1086#1076#1077' '#1089#1090#1088#1072#1090#1077#1075#1080#1080' '#1074#1086#1077#1085#1085#1099#1093' '
              #1076#1077#1081#1089#1090#1074#1080#1081'.'#1059' '#1088#1077#1073#1077#1085#1082#1072' '#1074' '#1075#1083#1072#1079#1072#1093' '#1089#1083#1105#1079#1099' - '#1084#1080#1088#1085#1072#1103' '#1089#1077#1084#1077#1081#1085#1072#1103' '#1080#1075#1088#1072' '
              #1087#1088#1077#1074#1088#1072#1090#1080#1083#1072#1089#1100' '#1074' '#1074#1086#1077#1085#1085#1091#1102' '#1076#1080#1082#1090#1072#1090#1091#1088#1091'.<br>'#1052#1072#1084#1072':'#1048' '#1085#1077' '#1074#1079#1076#1091#1084#1072#1081#1090#1077' '
              #1087#1077#1088#1077#1089#1090#1072#1074#1083#1103#1090#1100' '#1084#1086#1080' '#1074#1086#1081#1089#1082#1072'!'#1042#1077#1088#1085#1080' '#1074#1089#1105' '#1085#1072' '#1084#1077#1089#1090#1086'!'#1048' '#1078#1088#1072#1090#1100' '#1085#1077' '
              #1087#1086#1081#1076#1077#1090#1077' '#1087#1086#1082#1072' '#1071#1087#1086#1085#1080#1102' '#1084#1085#1077' '#1085#1077' '#1087#1088#1086#1080#1075#1088#1072#1077#1090#1077'!<br>'#1071':'#1054#1093' '#1085#1080#1095#1077#1075#1086' '#1089#1077#1073#1077' '
              #1078#1077#1085#1089#1082#1086#1077' '#1083#1080#1094#1086' '#1074#1086#1081#1085#1099' '#1054'_'#1086' '#1055#1088#1103#1084' '#1088#1086#1076#1080#1085#1072'-'#1084#1072#1090#1100' '
              #1079#1086#1074#1105#1090'=)<br>'#1052#1072#1084#1072':'#1044#1086#1095#1072','#1090#1099' '#1087#1088#1086#1093#1086#1076#1080','#1091#1078#1080#1085' '#1089#1077#1073#1077' '#1088#1072#1079#1086#1075#1088#1077#1074#1072#1081'...'#1103' '#1091#1078#1077' '
              #1089#1082#1086#1088#1086' '#1080#1093' '#1086#1090#1076#1077#1083#1072#1102'.<br>'#1055#1072#1087#1072':'#1054#1083#1100','#1085#1091' '#1083#1072#1076#1085#1086' '#1090#1077#1073#1077'...<br>'#1052#1072#1084#1072':'#1063#1090#1086' '
              #1083#1072#1076#1085#1086'?!'#1053#1077' '#1074#1077#1088#1085#1077#1096#1100' '#1084#1086#1080#1093' '#1089#1086#1083#1076#1072#1090' - '#1085#1080#1082#1072#1082#1086#1075#1086' '#1087#1080#1074#1072'!<br>'#1055#1072#1087#1072' '
              #1089#1084#1086#1090#1088#1080#1090' '#1085#1072' '#1073#1088#1072#1090#1072':'#1055#1088#1086#1089#1090#1080','#1089#1099#1085','#1101#1090#1086' '#1074#1086#1081#1085#1072','#1090#1091#1090' '#1074#1089#1105' '#1084#1086#1078#1085#1086' '
              #1082#1091#1087#1080#1090#1100'.</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<b>46136</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 16:40)'
              #9#9'</div>'
              #9#9'<div>xxx: '#1089#1083#1099#1093#1072#1083', '#1089#1082#1086#1088#1086' '#1087#1086' '#1055#1077#1088#1074#1086#1084#1091' '#1085#1086#1074#1099#1081' '
              #1072#1074#1090#1086#1073#1080#1086#1075#1088#1072#1092#1080#1095#1077#1089#1082#1080#1081' '#1092#1080#1083#1100#1084' '#1089' '#1057#1077#1088#1075#1077#1077#1084' '#1041#1077#1079#1088#1091#1082#1086#1074#1099#1084' '
              #1074#1099#1081#1076#1077#1090'?<br>yyy: &quot;'#1055#1083#1077#1089#1077#1085#1100'&quot; '#1095#1090#1086'-'#1083#1080'?</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<b>46135</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 16:35)'
              #9#9'</div>'
              #9#9'<div>'#1093#1093#1093#1093#1093#1093'<br>x:'#1051#1070#1044#1048' '#1055#1054#1044#1057#1050#1040#1046#1048#1058#1045', '#1050#1040#1050' '
              #1041#1067#1057#1058#1056#1054' '#1057#1050#1048#1053#1059#1058#1068' 5-7'#1082#1075'??? '#1058#1086#1082' '#1088#1077#1072#1083#1100#1085#1054', '#1086#1095' '#1085#1072#1076#1086'..<br>y: '
              
                #1054#1090#1088#1077#1078#1100#1090#1077' '#1088#1091#1082#1091'.<br><br>'#1091#1091#1091#1091#1091'<br>'#1095#1105' '#1079#1072' '#1075#1086#1085' '#1088#1091#1082#1072' '#1084#1072#1082#1089' 3 '#1074#1077#1089#1080#1090', '#1085#1086#1075#1091 +
                ' '
              #1087#1080#1083#1080' '#1089#1091#1082#1086' '#1085#1086#1075#1091'</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<b>46134</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 16:25)'
              #9#9'</div>'
              #9#9'<div>'#1074#1095#1077#1088#1072' '#1077#1093#1072#1083' '#1074' '#1090#1088#1086#1083#1077#1081#1073#1091#1089#1077'. '#1093#1086#1083#1086#1076#1080#1085#1072' '
              #1078#1086#1089#1090#1082#1072#1103', '#1074#1088#1077' '#1088#1074#1091#1090#1100#1089#1103' '#1087#1086#1073#1099#1089#1090#1088#1077#1077' '#1076#1086#1077#1093#1072#1090#1100'. '#1079#1072#1096#1083#1072' '#1087#1088#1086#1087#1080#1090#1086#1075#1086' '#1074#1080#1076#1072' '
              
                #1076#1072#1084#1072' ('#1083#1077#1090' 40) '#1082#1086#1085#1076#1091#1082#1090#1086#1088' '#1075#1086#1074#1086#1088#1080#1090' '#1077#1081' - '#1087#1083#1072#1090#1080' '#1079#1072' '#1087#1088#1086#1077#1079#1076'. '#1086#1085#1072' - '#1085#1077#1072',' +
                ' '
              #1085#1077#1090#1091' '#1076#1077#1085#1077#1075'. '#1090#1086#1075#1076#1072' '#1074#1099#1093#1086#1076#1080'. '#1085#1077' '#1074#1099#1081#1076#1091', '#1093#1086#1083#1086#1076#1085#1086'. '#1085#1072#1095#1072#1083#1080' '#1089#1087#1086#1088#1080#1090#1100', '
              #1095#1091#1090#1100' '#1076#1086' '#1076#1088#1072#1082#1080' '#1085#1077' '#1076#1086#1096#1083#1086', '#1090#1086#1083#1082#1072#1083#1080#1089#1100', '#1088#1091#1075#1072#1083#1080#1089#1100'. '#1082#1086#1085#1076#1091#1082#1090#1086#1088' '#1091#1078#1077' '#1085#1077' '
              #1079#1085#1072#1077#1090', '#1095#1090#1086' '#1089' '#1085#1077#1081' '#1076#1077#1083#1072#1090#1100' '#1080' '#1075#1086#1074#1086#1088#1080#1090' '#1087#1086#1095#1077#1084#1091#1090#1086' '#1084#1085#1077' &quot; '#1085#1091' '#1095#1090#1086' '#1074#1099' '
              #1089#1090#1086#1080#1090#1077' '#1082#1072#1082' '#1089#1090#1086#1083#1073', '#1089#1076#1077#1083#1072#1081#1090#1077' '#1095#1090#1086#1085#1080#1073#1091#1076#1100'&quot; '#1103' '#1085#1077#1084#1085#1086#1075#1086' '
              #1088#1072#1089#1090#1077#1088#1103#1083#1089#1103' '#1080' '#1089#1087#1088#1086#1089#1080#1083' &quot;'#1095#1090#1086' '#1074#1099' '#1084#1085#1077' '#1087#1088#1077#1076#1083#1072#1075#1072#1077#1090#1077' '#1089#1076#1077#1083#1072#1090#1100'? '
              #1072#1088#1077#1089#1090#1086#1074#1072#1090#1100' '#1077#1077'?&quot; '#1080' '#1090#1091#1090' '#1091' '#1084#1077#1085#1103' '#1074' '#1084#1086#1079#1075#1091' '#1084#1077#1083#1100#1082#1085#1091#1083#1072' '#1084#1099#1089#1083#1100', '#1095#1090#1086' '
              #1084#1085#1077' '#1085#1072' '#1089#1083#1077#1076#1091#1102#1097#1077#1081' '#1086#1089#1090#1072#1085#1086#1074#1082#1077' '#1074#1099#1093#1086#1076#1080#1090#1100' '#1085#1091#1078#1085#1086' '#1080' '#1084#1086#1078#1085#1086' '#1085#1077#1084#1085#1086#1075#1086' '
              #1087#1086#1076#1091#1088#1072#1095#1080#1090#1100#1089#1103' '#1080' '#1087#1086#1090#1086#1084' '#1089#1087#1086#1082#1086#1081#1085#1086' '#1074#1099#1081#1090#1080' '#1080#1079' '#1090#1088#1086#1083#1083#1077#1081#1073#1091#1089#1072', '#1085#1077' '#1089#1075#1086#1088#1072#1103' '
              #1086#1090' '#1089#1090#1099#1076#1072'. '#1080' '#1103' '#1075#1088#1086#1084#1082#1086' '#1079#1072#1103#1074#1080#1083' &quot; '#1089#1080#1083#1086#1102', '#1076#1072#1085#1085#1086#1081' '#1084#1085#1077' '
              #1082#1086#1085#1076#1091#1082#1090#1086#1088#1086#1084' - '#1087#1088#1086#1074#1086#1079#1075#1083#1072#1096#1072#1102' '#1089#1077#1073#1103' '#1096#1077#1088#1080#1092#1086#1084' '#1101#1090#1086#1075#1086' '#1090#1088#1086#1083#1083#1077#1081#1073#1091#1089#1072'. '
              #1074#1099' '#1072#1088#1077#1089#1090#1086#1074#1072#1085#1099', '#1088#1091#1082#1080' '#1079#1072#1089#1087#1080#1085#1091'. '#1080#1084#1077#1077#1090#1077' '#1087#1088#1072#1074#1086' '#1093#1088#1072#1085#1080#1090#1100' '
              #1084#1086#1083#1095#1072#1085#1080#1077'.&quot;('#1087#1088#1080' '#1101#1090#1086#1084' '#1087#1072#1083#1100#1094#1072#1084#1080' '#1080#1079#1086#1073#1088#1072#1078#1072#1102' '#1087#1080#1089#1090#1086#1083#1077#1090' '#1080' '
              #1090#1099#1082#1072#1102' '#1080#1084' '#1074' '#1077#1077' '#1089#1090#1086#1088#1086#1085#1091') '#1080' '#1082#1090#1086' '#1073#1099' '#1084#1086#1075' '#1087#1086#1076#1091#1084#1072#1090#1100', '#1086#1085#1072' '#1089' '#1086#1093#1091#1077#1074#1096#1080#1084' '
              #1074#1080#1076#1086#1084' '#1076#1077#1081#1089#1090#1074#1080#1090#1077#1083#1100#1085#1086' '#1087#1086#1083#1086#1078#1080#1083#1072' '#1088#1091#1082#1080' '#1079#1072' '#1089#1087#1080#1085#1091'... ('#1083#1102#1076#1080' '#1074' '#1089#1072#1083#1086#1085#1077' '
              #1073#1098#1102#1090#1100#1089#1103' '#1075#1086#1083#1086#1074#1072#1084#1080' '#1086' '#1089#1090#1077#1082#1083#1086' '#1086#1090' '#1089#1084#1077#1093#1072') '
              #1085#1091' '#1103' '#1089' '#1074#1072#1078#1085#1099#1084' '#1074#1080#1076#1086#1084' '#1089#1085#1080#1084#1072#1102' '#1089' '#1089#1077#1073#1103' '#1096#1072#1088#1092' '#1080' '#1079#1072#1084#1072#1090#1099#1074#1072#1102' '#1077#1081' '#1088#1091#1082#1080'. '
              #1090#1091#1090' '#1072#1074#1090#1086#1073#1091#1089' '#1087#1086#1076#1098#1077#1079#1078#1072#1077#1090' '#1082' '#1086#1089#1090#1072#1085#1086#1074#1082#1077', '#1089#1087#1086#1082#1086#1081#1085#1086' '#1074#1099#1074#1086#1078#1091' '#1077#1077' '#1085#1072' '
              #1091#1083#1080#1094#1091', '#1079#1072#1073#1080#1088#1072#1102' '#1089#1074#1086#1081' '#1096#1072#1088#1092' '#1080' '#1080#1076#1091' '#1076#1072#1083#1100#1096#1077' '#1087#1086' '#1089#1074#1086#1080#1084' '#1076#1077#1083#1072#1084'.</div>'
              ''
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<b>46133</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 16:15)'
              #9#9'</div>'
              #9#9'<div>Rekken: '#1088#1072#1089#1089#1082#1072#1079#1099#1074#1072#1083#1072' '#1086#1076#1085#1072' '#1076#1077#1074#1095#1086#1085#1082#1072', '#1091' '
              #1085#1080#1093' '#1074' '#1080#1085#1089#1090' '#1091#1089#1090#1088#1086#1080#1083#1072#1089#1100' '#1085#1086#1074#1072#1103' '#1084#1086#1083#1086#1076#1072#1103' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100#1085#1080#1094#1072' '#1087#1086' '
              #1076#1080#1082#1090#1086#1088#1089#1082#1086#1084#1091' '#1084#1072#1089#1090#1077#1088#1089#1090#1074#1091', '#1087#1088#1086#1074#1086#1076#1103' '#1074' '#1078#1080#1079#1085#1100' '#1089#1074#1086#1080' '#1085#1086#1091'-'#1093#1072#1091', '#1086#1085#1072' '#1085#1072' '
              #1091#1088#1086#1082#1077' '#1088#1072#1079#1076#1072#1077#1090' '#1089#1090#1091#1076#1077#1085#1090#1072#1084' '#1094#1077#1088#1082#1086#1074#1085#1099#1077' '#1089#1074#1077#1095#1082#1080' '#1090#1080#1087#1072' '#1085#1072#1076#1086' '#1091#1095#1080#1090#1100#1089#1103' '
              #1075#1086#1074#1086#1088#1080#1090#1100' '#1090#1072#1082' '#1095#1090#1086#1073#1099' '#1087#1083#1072#1084#1103' '#1082#1072#1082' '#1084#1086#1078#1085#1086' '#1084#1077#1085#1100#1096#1077' '#1076#1077#1088#1075#1072#1083#1086#1089#1100'. '#1048' '#1074#1086#1090' '
              #1078#1080#1074#1086#1087#1080#1089#1100' '#1084#1072#1089#1083#1086#1084'- '#1079#1072#1093#1086#1076#1080#1090' '#1088#1077#1082#1090#1086#1088'- '#1087#1086#1083#1091#1090#1077#1084#1085#1072#1103' '#1072#1091#1076#1080#1090#1086#1088#1080#1103', '
              #1075#1088#1091#1087#1087#1072' '#1089#1086' '#1089#1074#1077#1095#1082#1072#1084#1080' '#1074#1086' '#1075#1083#1072#1074#1077' '#1089' '#1087#1088#1077#1087#1086#1076#1086#1074#1072#1090#1077#1083#1077#1084' '#1095#1090#1086' '#1090#1086' '#1084#1086#1085#1086#1090#1086#1085#1085#1086' '
              #1073#1091#1073#1085#1103#1090'.. '#1045#1083#1077' '#1086#1073#1098#1103#1089#1085#1080#1083#1080', '#1095#1090#1086' '#1074' '#1089#1090#1077#1085#1099' '#1080#1085#1089#1090#1080#1090#1091#1090#1072' '#1085#1077' '#1087#1088#1086#1073#1088#1072#1083#1072#1089#1100' '
              #1085#1080#1082#1072#1082#1072#1103' '#1089#1077#1082#1090#1072'...</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<b>46132</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 16:05)'
              #9#9'</div>'
              #9#9'<div>'#1055#1088#1080#1074#1086#1079#1103#1090' '#1088#1072#1079' '#1079#1080#1084#1086#1081' '#1085#1072' '#171#1089#1082#1086#1088#1091#1102#187' '
              #1088#1086#1078#1077#1085#1080#1094#1091' '#1080#1079' '#1076#1072#1083#1105#1082#1086#1075#1086' '#1093#1091#1090#1086#1088#1072' '#1085#1072' '#1089#1074#1086#1105#1084' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1077'. '#1046#1077#1085#1097#1080#1085#1072' '
              #1083#1077#1078#1080#1090' '#1085#1072' '#1079#1072#1076#1085#1077#1084' '#1089#1080#1076#1077#1085#1080#1080' '#171#1084#1086#1089#1082#1074#1080#1095#1072#187', '#1089#1090#1086#1085#1077#1090'. '#1057#1090#1072#1083#1080' '#1077#1105' '
              #1080#1079#1074#1083#1077#1082#1072#1090#1100', '#1095#1090#1086#1073#1099' '#1074' '#1088#1086#1076#1076#1086#1084' '#1079#1072#1085#1077#1089#1090#1080' ('#1086#1085' '#1088#1103#1076#1086#1084' '#1089' '
              #1085#1077#1086#1090#1083#1086#1078#1082#1086#1081').<br>'#1057#1084#1086#1090#1088#1103#1090', '#1072' '#1091' '#1085#1077#1105' '#1091#1078#1077' '#1075#1086#1083#1086#1074#1082#1072' '#1084#1083#1072#1076#1077#1085#1094#1072' '#1084#1077#1078#1076#1091' '
              #1085#1086#1075' '#1090#1086#1088#1095#1080#1090'. '#1055#1088#1080#1095#1105#1084' '#1075#1086#1083#1086#1074#1082#1072' '#1086#1076#1077#1090#1072#1103' '#1074' ...'#1095#1077#1087#1095#1080#1082'. '#1042#1089#1077' '#1074' '#1086#1089#1072#1076#1086#1082' '
              #1074#1099#1087#1072#1083#1080', '#1072' '#1087#1072#1087#1072#1096#1072' '#1086#1073#1098#1103#1089#1085#1103#1077#1090':<br>- '#1044#1072' '#1087#1086#1076#1098#1077#1079#1078#1072#1083#1080' '#1091#1078#1077', '#1072' '#1086#1085' '
              #1087#1086#1083#1077#1079'. '#1053#1091' '#1103' '#1077#1084#1091' '#1095#1077#1087#1095#1080#1082' '#1080' '#1085#1072#1076#1077#1083', '#1095#1090#1086#1073' '#1085#1077' '#1079#1072#1089#1090#1091#1076#1080#1083#1089#1103'. '#1047#1080#1084#1072' '
              #1074#1089#1105'-'#1090#1072#1082#1080'.<br>'#1058#1072#1082' '#1095#1090#1086' '#1080#1085#1086#1075#1076#1072' '#1088#1086#1078#1076#1072#1102#1090#1089#1103' '#1085#1077' '#1090#1086#1083#1100#1082#1086' '#1074' '#1088#1091#1073#1072#1096#1082#1072#1093', '#1085#1086' '
              #1080' '#1074' '#1095#1077#1087#1095#1080#1082#1072#1093'.</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<b>46131</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 16:00)'
              #9#9'</div>'
              #9#9'<div>'#1054#1073#1098#1103#1074#1083#1077#1085#1080#1077' '#1087#1086' '#1087#1088#1086#1076#1072#1078#1077' Lada Priora '#1085#1072' '
              #1086#1076#1085#1086#1084' '#1089#1072#1081#1090#1077':<br>&quot;'#1052#1072#1096#1080#1085#1072' '#1085#1086#1074#1072#1103', '#1087#1088#1086#1073#1077#1075' 500 '#1082#1084'. '#1050#1086#1075#1076#1072' '
              #1087#1086#1082#1091#1087#1072#1083' - '#1076#1091#1084#1072#1083' '#1085#1086#1088#1084#1072#1083#1100#1085#1072#1103' '#1084#1072#1096#1080#1085#1072', '#1086#1082#1072#1079#1072#1083#1086#1089#1100' '#1043#1040#1042#1053#1054'. '#1053#1077' '
              #1073#1080#1090#1072#1103'. '#1047#1072' '#1089#1074#1086#1081' '#1085#1077#1086#1073#1076#1091#1084#1072#1085#1085#1099#1081' '#1087#1086#1089#1090#1091#1087#1086#1082' '#1089#1082#1080#1076#1099#1074#1072#1102' 120 '#1090'.'#1088'., '#1090'.'#1077'. '
              #1085#1086#1074#1072#1103' '#1084#1072#1096#1080#1085#1072' '#1074' '#1089#1072#1083#1086#1085#1077' '#1089#1090#1086#1080#1090' 317, '#1086#1090#1076#1072#1084' '#1101#1090#1086' '#1075#1072#1074#1085#1086' '#1079#1072' 200, '
              #1073#1086#1083#1100#1096#1077' '#1086#1085#1072' '#1085#1077' '#1089#1090#1086#1080#1090'.&quot;</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              ''
              #9#9#9'<b>46130</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 15:45)'
              #9#9'</div>'
              #9#9'<div>-&gt;BiGBoN (21.43.53)'#1086' '#1095#1077#1084' '
              #1076#1091#1084#1072#1077#1096#1100'?<br>&lt;-'#1055#1072#1060#1086#1057#1085#1040#1103' '#1089#1059#1095#1050#1072'.i. (21.46.48)'#1054' '#1090#1086#1084' '#1095#1090#1086' '#1074#1089#1077' '
              #1084#1091#1078#1080#1082#1080' '#1082#1086#1079#1083#1099'...<br>-&gt;BiGBoN (21.47.29)'#1059#1075#1091' '#1072' '#1074#1089#1077' '#1076#1077#1074#1082#1080' '
              #1079#1086#1086#1092#1080#1083#1099'<br></div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              ''
              #9#9#9'<b>46129</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 15:15)'
              #9#9'</div>'
              #9#9'<div>'#1063#1072#1090', '#1088#1072#1079#1075#1086#1074#1086#1088' '#1087#1088#1086' '#1084#1086#1073#1080#1083#1100#1085#1099#1077'<br><br>xxx: '
              #1053#1072#1088#1086#1076', '#1072' '#1087#1088#1072#1074#1076#1072', '#1095#1090#1086' '#1077#1089#1083#1080' '#1085#1072' '#1073#1091#1084#1072#1078#1082#1091' '#1088#1103#1076#1086#1084' '#1089' '#1072#1082#1082#1091#1084#1091#1083#1103#1090#1086#1088#1086#1084' '
              #1074#1086#1076#1099' '#1082#1072#1087#1085#1091#1090#1100', '#1086#1085#1072' '#1094#1074#1077#1090' '#1087#1086#1084#1077#1085#1103#1077#1090'?<br>yyy: '#1087#1088#1086#1074#1077#1088#1080#1083' '#1090#1086#1083#1100#1082#1086' '#1095#1090#1086', '
              #1086#1085#1072' '#1082#1088#1072#1089#1085#1086#1081' '#1089#1090#1072#1083#1072'<br>zzz: ..'#1080' '#1090#1077#1088#1103#1077#1090#1089#1103' '#1075#1072#1088#1072#1085#1090#1080#1103'<br>aaa: '
              #1073#1083#1103'...<br>yyy: '#1041#1051#1071'!!!<br>bbb: '#1073#1083#1103'(((((((<br>ccc: '#1073#1083#1103'</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<b>46128</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 15:10)'
              #9#9'</div>'
              #9#9'<div>'#1103' '#1087#1086#1085#1103#1083' '#1079#1072#1095#1077#1084' '#1085#1091#1078#1085#1072' '#1084#1072#1096#1080#1085#1072' '#1074' '#1084#1086#1089#1082#1074#1077' ! '
              #1090#1086#1083#1100#1082#1086' '#1076#1083#1103' '#1090#1086#1075#1086', '#1095#1090#1086#1073#1099' '#1074' '#1074#1099#1093#1086#1076#1085#1099#1077' ... '#1085#1086#1095#1100#1102' ... '#1077#1079#1076#1080#1090#1100' '#1074' '
              #1075#1080#1087#1077#1088#1084#1072#1088#1082#1077#1090' '#1079#1072' '#1087#1088#1086#1076#1091#1082#1090#1072#1084#1080'</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<b>46127</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 14:55)'
              #9#9'</div>'
              ''
              #9#9'<div>xxx: '#1071' '#1090#1091#1090' '#1090#1077#1089#1090' '#1085#1072' ip '#1085#1072#1096#1077#1083'... '#1058#1086#1083#1080' '
              #1087#1086#1087#1088#1086#1073#1086#1074#1072#1090#1100'...<br>yyy: '#1101#1084#1084#1084#1084'... '#1090#1077#1089#1090' '#1085#1072' '#1072#1081#1087#1080'?) '#1087#1086#1076#1093#1086#1076#1080#1090' '#1083#1080' '#1074#1072#1084' '
              #1074#1072#1096' '#1072#1081' '#1087#1080' '#1072#1076#1088#1077#1089' '#1087#1086' '#1079#1085#1072#1082#1091' '#1079#1086#1076#1080#1072#1082#1072'?)))<br>yyy: '#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1072' '
              #1072#1081#1087#1080' '#1087#1086' '#1087#1077#1088#1074#1099#1084' '#1090#1088#1077#1084' '#1094#1080#1092#1088#1072#1084'?))<br>yyy: '#1082#1077#1084' '#1073#1099#1083' '#1074#1072#1096' '#1072#1081#1087#1080#1096#1085#1080#1082' '#1074' '
              #1087#1088#1086#1096#1083#1086#1081' '#1078#1080#1079#1085#1080'?)))</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<b>46126</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 14:50)'
              #9#9'</div>'
              ''
              #9#9'<div>Pasha: '#1085#1077' '#1087#1100#1077#1096#1100', '#1085#1077' '#1084#1072#1090#1077#1088#1080#1096#1100#1089#1103'..... '
              #1087#1088#1077#1083#1077#1089#1090#1100' '#1082#1072#1082#1072#1103'..) '#1082#1072#1082#1072#1090#1100' '#1073#1072#1073#1086#1095#1082#1072#1084#1080' '#1077#1097#1077' '#1085#1077' '
              #1085#1072#1091#1095#1080#1083#1072#1089#1100'..?))<br></div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<b>46125</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 14:40)'
              #9#9'</div>'
              #9#9'<div>'#1042#1086#1079#1083#1077' '#1076#1086#1084#1072' '#1085#1072' '#1089#1082#1074#1086#1088#1077#1095#1085#1080#1082#1077' '#1082#1072#1082#1086#1081'-'#1090#1086' '
              #1084#1091#1076#1088#1077#1094' '#1073#1086#1083#1100#1096#1080#1084#1080' '#1073#1091#1082#1074#1072#1084#1080' '#1085#1072#1087#1080#1089#1072#1083':&quot;'#1042#1079#1103#1083' '#1103' '
              #1080#1087#1086#1090#1077#1082#1091'...&quot;</div>'
              ''
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<b>46124</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 14:30)'
              #9#9'</div>'
              #9#9'<div>'#1055#1086#1089#1084#1086#1090#1088#1077#1083' '#1092#1080#1083#1100#1084' '#1087#1083#1077#1089#1077#1085#1100','#1090#1077#1087#1077#1088#1100' '#1082' '
              #1089#1083#1086#1074#1072' &quot;'#1103' '#1073#1077#1083#1072#1103' '#1080' '#1087#1091#1096#1080#1089#1090#1072#1103'&quot; '#1086#1090#1085#1086#1096#1091#1089#1100' '
              #1087#1086#1076#1086#1079#1088#1080#1090#1077#1083#1100#1085#1086'.</div>'
              ''
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<b>46123</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 14:30)'
              #9#9'</div>'
              #9#9'<div>'#1093#1093#1093': '#1080#1087#1072#1085#1099#1077' '#1088#1077#1082#1083#1072#1084#1097#1077#1075#1080'!<br>'#1091#1091#1091': '
              #1074#1072#1089#1089#1072#1087'?<br>'#1093#1093#1093': '#1076#1072' '#1080#1076#1091' '#1074' '#1091#1085#1080#1074#1077#1088' '#1090#1072#1084' '#1087#1086' '#1087#1091#1090#1080' '#1088#1077#1082#1083#1072#1084#1072' '#1084#1072#1075#1072#1079#1072' '
              #1086#1087#1090#1080#1082#1080'. '#1073#1086#1083#1100#1096#1080#1084#1080' '#1082#1088#1072#1089#1085#1099#1084#1080' '#1073#1091#1082#1074#1072#1084#1080' '#1085#1072#1087#1080#1089#1072#1085#1086': '#1087#1083#1086#1093#1086' '#1074#1080#1076#1080#1096#1100'? '
              #1087#1086#1076#1086#1081#1076#1080' '#1073#1083#1080#1078#1077'. '#1085#1091' '#1103' '#1082#1072#1082#1073#1099' '#1074' '#1072#1093#1091#1077' '#1087#1086#1090#1086#1084#1091' '#1095#1090#1086' '#1088#1077#1082#1083#1072#1084#1072' '#1088#1077#1072#1083#1100#1085#1086' '
              #1088#1072#1089#1087#1083#1099#1074#1072#1077#1090#1089#1103', '#1082#1072#1082' '#1073#1091#1076#1090#1086' '#1103' '#1089#1083#1077#1087#1086#1074#1072#1090'.. '#1087#1086#1076#1093#1086#1078#1091' '#1090#1072#1084' '#1085#1080#1078#1077' '
              #1085#1072#1087#1080#1089#1072#1085#1086': '#1077#1089#1083#1080' '#1089#1080#1090#1091#1072#1094#1080#1103' '#1085#1077' '#1080#1079#1084#1080#1085#1080#1083#1072#1089#1103', '#1090#1077#1073#1077' '#1089#1102#1076#1072'( '#1080' '#1089#1090#1088#1077#1083#1086#1095#1082#1072' '
              #1082' '#1076#1074#1077#1088#1080') '#1085#1091' '#1072' '#1087#1086' '#1084#1077#1088#1077' '#1087#1088#1080#1073#1083#1080#1078#1077#1085#1080#1103' '#1082#1072#1088#1090#1080#1085#1082#1072' '#1089#1090#1072#1085#1086#1074#1080#1090#1089#1103' '
              #1085#1077#1088#1072#1089#1087#1083#1099#1074#1095#1080#1090#1086#1081'. '#1086#1082#1072#1079#1099#1074#1072#1077#1090#1089#1103' '#1101#1090#1080' '#1091#1088#1086#1076#1099' '#1082#1072#1082#1091#1102#1090#1086' '#1084#1072#1090#1077#1088#1080#1102' '
              #1087#1086#1074#1077#1089#1080#1083#1080' '#1080#1079#1079#1072' '#1082#1086#1090#1086#1088#1086#1081' '#1080#1079#1076#1072#1083#1080' '#1074#1080#1076#1085#1086' '#1093#1077#1088#1086#1074#1086'(((<br>'#1091#1091#1091': '
              #1091#1093#1072#1093#1072#1093#1072#1093#1072#1093#1072'<br>'#1093#1093#1093': '#1090#1077#1073#1077' '#1091#1093#1086#1093#1072#1093#1072', '#1072' '#1103' '#1093#1086#1090#1077#1083' '#1085#1072#1093#1091#1081' '#1073#1088#1086#1089#1072#1090#1100' '#1079#1072' '
              #1082#1086#1084#1086#1087#1086#1084' '#1089#1080#1076#1077#1090#1100'(</div>'
              ''
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<b>46122</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 14:30)'
              #9#9'</div>'
              #9#9'<div>xxx<br>'#1082#1072#1082' '#1086#1085#1086'?)<br><br>yyy<br>'#1074#1077#1089#1100' '#1082' '
              #1082#1088#1072#1089#1082#1077'... '#1074' '#1090#1072#1082' '#1085#1086#1088#1084' ) '#1057#1072#1084' '#1082#1072#1082'?)<br><br>xxx<br>'#1085#1086#1088#1084' )'#1072' '#1095#1077#1085#1075#1086' '#1074' '
              #1082#1088#1072#1089#1082#1077'?<br><br>yyy<br>'#1059' '#1076#1088#1091#1075#1072' '#1089' '#1076#1077#1074#1095#1077#1085#1082#1086#1081' '#1075#1086#1076#1086#1074#1097#1080#1085#1072' '
              #1086#1090#1085#1086#1096#1077#1085#1080#1081' - '#1084#1072#1083#1102#1074#1072#1083#1080' '#1087#1086#1076' '#1086#1082#1085#1072#1084#1080' )<br><br>xxx<br>'#1080' '#1082#1072#1082' '
              #1088#1077#1079#1091#1083#1100#1090#1072#1090'?)<br><br>yyy<br>'#1095#1091#1102', '#1085#1072' '#1089#1077#1088#1076#1094#1077' '#1089#1090#1086#1080#1083#1086' '#1085#1072#1087#1080#1089#1072#1090#1100': '
              '&quot;'#1103' '#1085#1077' '#1078#1086#1087#1072', '#1103' - '#1089#1077#1088#1076#1094#1077'!&quot; )</div>'
              ''
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<b>46121</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 14:15)'
              #9#9'</div>'
              #9#9'<div>xxx: '#1046#1072#1083#1082#1086', '#1095#1090#1086' '#1082#1091#1088#1089#1086#1088#1086#1084' '#1085#1077#1083#1100#1079#1103' '
              #1089#1076#1074#1080#1075#1072#1090#1100' '#1087#1099#1083#1080#1085#1082#1080' '#1089' '#1101#1082#1088#1072#1085#1072'</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<b>46120</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 14:10)'
              #9#9'</div>'
              #9#9'<div>&gt;'#1056#1072#1085#1100#1096#1077' '#1074' '#1056#1086#1089#1089#1080#1080' '#1074' '#1090#1088#1091#1076#1085#1099#1077' '#1074#1088#1077#1084#1077#1085#1072' '
              #1086#1073#1085#1080#1084#1072#1083#1080' '#1073#1077#1088#1077#1079#1082#1091' '#1080' '#1075#1086#1088#1100#1082#1086' '#1087#1083#1072#1082#1072#1083#1080'... '#1072' '#1090#1077#1087#1077#1088#1100' '#1086#1073#1085#1080#1084#1072#1102#1090' '
              '&quot;'#1058#1086#1087#1086#1083#1100'&quot; '#1080' '#1085#1077#1093#1086#1088#1086#1096#1086' '#1091#1083#1099#1073#1072#1102#1090#1089#1103' ...</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<b>46119</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 14:10)'
              #9#9'</div>'
              #9#9'<div>XXX: '#1052#1077#1078#1076#1091' '#1087#1088#1086#1095#1080#1084' '#1074' '#1040#1085#1075#1083#1080#1080' '#1078#1080#1074#1105#1090' '
              #1076#1077#1074#1091#1096#1082#1072' '#1089' '#1072#1093#1091#1077#1085#1085#1086' '#1088#1077#1076#1082#1086#1081' '#1073#1086#1083#1077#1079#1085#1100#1102' - '#1086#1085#1072' '#1080#1089#1087#1099#1090#1099#1074#1072#1077#1090' '#1086#1088#1075#1072#1079#1084#1099' '
              #1086#1090' '#1083#1102#1073#1086#1081' '#1074#1080#1073#1088#1072#1094#1080#1080'. '#1044#1072#1078#1077' '#1089#1072#1084#1086#1081' '#1084#1072#1083#1077#1085#1100#1082#1086#1081'. '#1055#1086#1090#1086#1084#1091' '#1086#1085#1072' '
              #1088#1072#1073#1086#1090#1072#1077#1090' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1086#1088#1077#1084' '#1074'<br>YYY: '#1084#1085#1077' '#1073#1099' '#1090#1072#1082#1091#1102' '
              #1073#1086#1083#1077#1079#1085#1100'<br>ZZZ: '#1090#1099' '#1091#1074#1077#1088#1077#1085#1072' '#1095#1090#1086' '#1101#1090#1086' '#1073#1086#1083#1077#1079#1085#1100' '#1072' '#1085#1077' '#1072#1087#1075#1088#1077#1081#1076'?</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              ''
              #9#9#9'<b>46118</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 14:00)'
              #9#9'</div>'
              #9#9'<div>&lt;'#1063#1080#1075#1086'&gt; '#1087#1089#1080#1085#1072' '#1079#1072#1077#1073#1072#1083#1072' '
              #1083#1080#1085#1103#1090#1100'...'#1072#1088#1084#1072#1075#1077#1076#1086#1085' '#1075#1083#1086#1073#1072#1083#1100#1085#1099#1081'<br>&lt;'#1048#1088#1091#1096#1072'&gt; '#1074#1080#1090#1072#1084#1080#1085#1082#1072#1084#1077' '
              #1087#1072#1082#1072#1088#1084#1080' '#1078'<br>&lt;UncleFedor&gt; '#1089#1082#1086#1090#1095#1077#1084' '#1086#1073#1084#1086#1090#1072#1081'</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<b>46117</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 13:55)'
              #9#9'</div>'
              #9#9'<div>Morgie: '#1076#1086#1084#1072' '#1078#1088#1072#1090#1100' '#1085#1077#1095#1077#1075#1086', '#1072' '#1082#1086#1090#1103#1088#1072' '
              #1087#1080#1090#1072#1077#1090#1089#1103' '#1083#1091#1095#1096#1077' '#1084#1077#1085#1103'<br>Morgie: '#1077#1075#1086' '#1082#1086#1088#1084' '#1082#1080#1083#1086'-'#1090#1088#1080#1089#1090#1072' '#1089#1090#1086#1080#1090' 12 '
              
                #1073#1072#1082#1089#1086#1074'<br>Sef: '#1074#1086#1086#1086#1090', '#1074#1089#1105' '#1076#1088#1091#1075#1080#1084', '#1085#1080#1095#1077#1075#1086' '#1089#1077#1073#1077' )))<br>Morgie: '#1091#1075#1091 +
                ' '
              '^_^ *'#1089#1082#1088#1086#1084#1085#1086' '#1087#1086#1090#1091#1087#1080#1083#1072#1089#1100' '#1080' '#1087#1086#1087#1088#1072#1074#1080#1083#1072' '#1089#1087#1086#1083#1079#1072#1102#1097#1080#1081' '
              #1085#1080#1084#1073'*<br>Sef: '#1084#1072#1096#1072', '#1087#1086#1083#1086#1078#1080' '#1082#1088#1091#1075' '#1086#1090' '#1091#1085#1080#1090#1072#1079#1072' )) '#1101#1090#1086' '#1085#1077' '#1085#1080#1084#1073', '
              #1089#1082#1086#1083#1100#1082#1086' '#1088#1072#1079' '#1075#1086#1074#1086#1088#1080#1090#1100' :D<br>Morgie: '#1094#1091#1082'!!!!)))))))</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'<b>46116</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 13:50)'
              #9#9'</div>'
              #9#9'<div>xxxx: '#1082#1089#1090#1072#1090#1080' '#1080#1079#1085#1072#1089#1080#1083#1086#1074#1072#1085#1080#1077' '#1085#1077' '#1079#1072#1082#1088#1086#1077#1090' '
              #1084#1085#1077' '#1088#1086#1090'<br>yyyy: '#1071' '#1075#1086#1090#1086#1074' '#1087#1086#1089#1087#1086#1088#1080#1090#1100'))))))))))))))</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              ''
              #9#9#9'<b>46115</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 13:35)'
              #9#9'</div>'
              #9#9'<div>'#1093#1093#1093': '#1057#1077#1088#1077#1078#1082#1072'<br>'#1093#1093#1093': '#1050#1072#1082' '#1093#1086#1088#1086#1096#1086', '#1095#1090#1086' '
              #1090#1077#1073#1103' '#1079#1086#1074#1091#1090' '#1057#1077#1088#1077#1078#1082#1072'<br>'#1093#1093#1093': '#1103' '#1074#1086#1090' '#1090#1091#1090' '#1074#1089#1087#1086#1084#1085#1080#1083#1072', '#1095#1090#1086' '#1079#1086#1083#1086#1090#1086' '
              #1089#1085#1103#1090#1100' '#1074#1089#1077' '#1085#1072#1076#1086' '#1087#1077#1088#1077#1076' '#1087#1086#1077#1079#1076#1082#1086#1081' ))<br><br></div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<b>46114</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 13:30)'
              #9#9'</div>'
              ''
              #9#9'<div><br>'#1040#1085#1085#1072' '#1051#1099#1082#1086#1074#1072' 18'#1083#1077#1090' '#1056#1086#1089#1089#1080#1103', '
              #1048#1078#1077#1074#1089#1082'<br>'#1052#1086#1083#1086#1076#1099#1077' '#1083#1102#1076#1080', '#1085#1077' '#1087#1080#1096#1080#1090#1077' '#1084#1085#1077' '#1077#1089#1083#1080': '#1074#1072#1084' '#1077#1097#1077' '#1085#1077' '
              #1080#1089#1087#1086#1083#1085#1080#1083#1086#1089#1100' 25 '#1083#1077#1090', '#1077#1089#1083#1080' '#1074#1099' '#1078#1080#1074#1077#1090#1077' '#1089' '#1088#1086#1076#1080#1090#1077#1083#1103#1084#1080', '#1080#1083#1080' '
              #1089#1085#1080#1084#1072#1077#1090#1077' '#1082#1074#1072#1088#1090#1080#1088#1091', '#1077#1089#1083#1080' '#1074#1072#1096' '#1077#1078#1077#1084#1077#1089#1103#1095#1085#1099#1081' '#1076#1086#1093#1086#1076' '#1089#1086#1089#1090#1086#1074#1083#1103#1077#1090' 30 '
              #1090'.'#1088'...<br>'#1050#1086#1075#1086' '#1103' '#1093#1086#1095#1091' '#1085#1072#1081#1090#1080':<br>'#1062#1077#1083#1077#1091#1089#1090#1088#1077#1084#1083#1077#1085#1085#1086#1075#1086', '#1091#1089#1087#1077#1096#1085#1086#1075#1086', '
              #1097#1077#1076#1088#1086#1075#1086'.<br>'#1080' '#1087#1088#1077#1076#1091#1087#1088#1077#1078#1076#1072#1102' '#1089#1088#1072#1079#1091', '#1090#1088#1077#1073#1091#1102' '#1086#1095#1077#1085#1100' '
              #1084#1085#1086#1075#1086#1075#1086'<br>=========<br>'#1054#1085#1072' '#1074#1086#1090' '#1088#1077#1072#1083#1100#1085#1086' '#1076#1091#1084#1072#1077#1090', '#1095#1090#1086' '#1074' 25 '#1089' '
              #1079#1072#1088#1087#1083#1072#1090#1086#1081' 30+, '#1089#1074#1086#1077#1081' '#1082#1074#1072#1088#1090#1080#1088#1086#1081', '#1084#1072#1096#1080#1085#1086#1081' '#1080' '#1090#1087' '#1084#1085#1077' '#1085#1091#1078#1085#1072' '
              #1087#1083#1072#1090#1085#1072#1103' 18'#1090#1080' '#1083#1077#1090#1085#1103#1103' '#1076#1099#1088#1082#1072' '#1076#1072#1088#1084#1086#1077#1076'? &gt;_&lt;</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<b>46113</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 12:55)'
              #9#9'</div>'
              ''
              #9#9'<div>Furrer: '#1057#1084#1086#1090#1088#1077#1083' '#1085#1077#1076#1072#1074#1085#1086' '#1082#1072#1082#1086#1077' '#1090#1086' '#1089#1090#1072#1088#1086#1077' '
              #1080#1080#1085#1090#1077#1088#1074#1100#1102' '#1089' '#1040#1075#1072#1090#1086#1081' '#1050#1088#1080#1089#1090#1080'. '#1058#1072#1084' '#1091' '#1085#1080#1093' '#1089#1087#1088#1072#1096#1080#1074#1072#1102#1090' &quot;'#1087#1086#1095#1077#1084#1091' '
              #1074#1072#1096#1072' '#1084#1091#1079#1099#1082#1072' '#1074#1075#1086#1085#1103#1077#1090' '#1083#1102#1076#1077#1081' '#1074' '#1076#1077#1087#1088#1077#1089#1089#1080#1102'?&quot; '#1057#1090#1072#1088#1096#1080#1081' '
              #1086#1090#1074#1077#1095#1072#1077#1090' &quot;'#1051#1102#1073#1072#1103' '#1084#1091#1079#1099#1082#1072' '#1084#1086#1078#1077#1090' '#1074#1075#1086#1085#1103#1090#1100' '#1074' '#1076#1077#1087#1088#1077#1089#1089#1080#1102', '#1084#1077#1085#1103' '
              #1085#1072#1087#1088#1080#1084#1077#1088' '#1075#1088#1091#1087#1087#1072' '#1050#1086#1088#1085#1080' '#1074' '#1076#1077#1087#1088#1077#1089#1089#1080#1102' '#1074#1075#1086#1085#1103#1077#1090'&quot;</div>'
              #9'</div>'#9' '
              #9' '
              #9#9'<hr class="iq"> '
              '        <div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'<b>46112</b> ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-02 '
              #1074' 12:55)'
              #9#9'</div>'
              ''
              #9#9'<div>'#1056#1072#1073#1086#1090#1072#1083#1072' '#1103' '#1074' '#1074#1086#1077#1085#1085#1086#1084' '
              #1075#1086#1089#1087#1080#1090#1072#1083#1077'...<br>'#1047#1076#1072#1085#1080#1077' '#1089#1090#1072#1088#1080#1085#1085#1086#1077', '#1072#1082#1091#1089#1090#1080#1082#1072' '#1072#1092#1080#1075#1077#1085#1085#1072#1103'. '#1047#1072#1093#1086#1078#1091' '
              #1074' '#1086#1087#1077#1088#1072#1094#1080#1086#1085#1085#1091#1102' '#1085#1072#1088#1082#1086#1079' '#1076#1072#1074#1072#1090#1100'. '#1053#1072' '#1089#1086#1089#1077#1076#1085#1077#1084' '#1089#1090#1086#1083#1077' '#1091#1078#1077' '#1074#1086' '#1074#1089#1102' '
              #1080#1076#1077#1090' '#1086#1087#1077#1088#1072#1094#1080#1103'. '#1053#1072' '#1089#1090#1086#1083#1077' '#1089#1086#1083#1076#1072#1090', '#1077#1089#1090#1077#1089#1090#1074#1077#1085#1085#1086', '#1087#1086#1076' '#1085#1072#1088#1082#1086#1079#1086#1084'. '#1042#1089#1077' '
              #1089#1087#1086#1082#1086#1081#1085#1086'. '#1048' '#1074#1076#1088#1091#1075'....'#1101#1090#1086#1090' '#1089#1072#1084#1099#1081' '#1089#1086#1083#1076#1072#1090' '#1085#1072' '#1074#1089#1102' '#1086#1087#1077#1088#1072#1094#1080#1086#1085#1085#1091#1102' '
              
                #1082#1072#1082' '#1079#1072#1086#1088#1077#1090': &quot;'#1061#1086#1095#1091' '#1077#1073#1072#1094#1094#1072'!!!!&quot;<br>'#1042#1089#1077', '#1082#1090#1086' '#1074' '#1090#1086#1090' '#1084#1086#1084#1077#1085#1090 +
                ' '
              #1073#1099#1083' '#1074' '#1086#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086#1081' - '#1091#1087#1072#1083#1080' '#1087#1086#1076' '#1089#1090#1086#1083', '#1074#1082#1083#1102#1095#1072#1103' '
              #1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1099'.))))))<br></div>'
              #9'</div>'#9' '
              #9' '
              ' '
              ''
              '<div class="pager"><span '
              'class="first">'#1057#1090#1088#1072#1085#1080#1094#1099':</span><span>915</span><a '
              'href="/abyssbest/914">914</a><a '
              'href="/abyssbest/913">913</a><a '
              'href="/abyssbest/912">912</a><span>'#8230'</span><a '
              'href="/abyssbest/1">1</a><a '
              
                'href="/abyssbest/914">&gt;&gt;</a></div><br style="clear: both;"' +
                ' '
              '/></div>'
              #9'<div class="menu">'#1094#1080#1090#1072#1090#1099': [<a href="/">'#1087#1086#1089#1083#1077#1076#1085#1080#1077'</a>] '
              '[<a href="/random">'#1089#1083#1091#1095#1072#1081#1085#1099#1077'</a>] [<a href="/best">'#1083#1091#1095#1096#1080#1077'</a>] '
              
                '[<a href="/byrating">'#1087#1086' '#1088#1077#1081#1090#1080#1085#1075#1091'</a>] [<a href="/faq">FAQ</a>] [' +
                '<a '
              'href="/rss">RSS</a>] <br>'#1073#1077#1079#1076#1085#1072': [<a href="/abyss">'#1041#1077#1079#1076#1085#1072'</a>] '
              '[<a href="/abysstop">'#1090#1086#1087' '#1041#1077#1079#1076#1085#1099'</a>] <b>['#1083#1091#1095#1096#1077#1077' '#1041#1077#1079#1076#1085#1099']</b> [<a '
              'href="/add">'#1076#1086#1073#1072#1074#1080#1090#1100'</a>] <br>'#1095#1090#1086'-'#1090#1086': [<a '
              'href="/comics">'#1082#1086#1084#1080#1082#1089'</a>] [<a '
              
                'href="http://maillist.ru/81859/">'#1088#1072#1089#1089#1099#1083#1082#1072'</a>] [<a href="/idea">' +
                #1076#1083#1103' '
              #1084#1086#1073#1080#1083#1100#1085#1080#1082#1072'</a>] [<a href="/webmaster">'#1074#1077#1073#1084#1072#1089#1090#1077#1088#1091'</a>] </div>'
              ''
              #9'<hr><center><!--Rating@Mail.ru LOGO--><a target=_top'
              'href="http://top.mail.ru/jump?from=901403"><img'
              'src="http://top.list.ru/counter?id=901403;t=49;l=1"'
              'border=0 height=31 width=88'
              
                'alt="'#1056#1077#1081#1090#1080#1085#1075'@Mail.ru"/></a> <!--/LOGO--><!--LiveInternet logo-->' +
                '<a '
              'href="http://www.liveinternet.ru/click"'
              
                'target=_blank><img src="http://counter.yadro.ru/logo?15.1" borde' +
                'r=0'
              'title="LiveInternet"'
              'alt="" width=88 height=31></a><!--/LiveInternet-->'
              '<a href="http://www.yandex.ru/cy?base=0&host=bash.org.ru"><img '
              'src="http://www.yandex.ru/cycounter?bash.org.ru" width="88" '
              'height="31" alt="'#1048#1085#1076#1077#1082#1089' '#1062#1080#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1071'ndex" border="0"></a>'
              '<!-- SpyLOG -->'
              
                '<script src="http://tools.spylog.ru/counter_cv.js" id="spylog_co' +
                'de" '
              
                'type="text/javascript" counter="926575" part="" track_links="ext' +
                '" '
              'page_level="0">'
              '</script>'
              '<noscript>'
              '<a href="http://u9265.75.spylog.com/cnt?cid=926575&f=3&p=0" '
              'target="_blank">'
              '<img src="http://u9265.75.spylog.com/cnt?cid=926575&p=0" '
              'alt="SpyLOG" border="0" width="88" height="31"></a>'
              '</noscript>'
              '<!--/ SpyLOG --></center>'#9'<hr><small>'#1048#1076#1077#1103' '#1087#1088#1086#1077#1082#1090#1072' &copy; '
              'bash.org.'
              #9'<br>'#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1080' '#1087#1083#1102#1096#1082#1080' &copy; 2004'#8212'2009, '#1082#1086#1084#1072#1085#1076#1072' '
              'bash.org.ru.'
              #9'<br><a href="/ads">'#1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1076#1083#1103' '
              #1088#1077#1082#1083#1072#1084#1086#1076#1072#1090#1077#1083#1077#1081'</a>. '#1055#1086' '#1076#1088#1091#1075#1080#1084' '#1087#1086#1074#1086#1076#1072#1084': <a '
              'href="&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20&#115;&#'
              '117;%70%70%6f&#114;&#116;%40&#098;%61%73&#104;%2e&#111;&'
              '#114;&#103;%2e%72&#117;">&#115;&#117;&#112;&#112;&#111;&#1'
              '14;&#116;@&#098;&#097;&#115;&#104;&#046;&#111;&#114;&#103;'
              '&#046;&#114;&#117;</a>.'
              #9'</small>'
              ''
              '</div>'
              '<!--Rating@Mail.ru COUNTER--><script language="JavaScript" '
              'type="text/javascript"><!--'
              'd=document;var a='#39#39';a+='#39';r='#39'+escape(d.referrer)'
              'js=10//--></script><script language="JavaScript1.1" '
              'type="text/javascript"><!--'
              'a+='#39';j='#39'+navigator.javaEnabled()'
              'js=11//--></script><script language="JavaScript1.2" '
              'type="text/javascript"><!--'
              's=screen;a+='#39';s='#39'+s.width+'#39'*'#39'+s.height'
              'a+='#39';d='#39'+(s.colorDepth?s.colorDepth:s.pixelDepth)'
              'js=12//--></script><script language="JavaScript1.3" '
              'type="text/javascript"><!--'
              'js=13//--></script><script language="JavaScript" '
              'type="text/javascript"><!--'
              'd.write('#39'<img src="http://top.list.ru/counter'#39'+'
              #39'?id=901403;js='#39'+js+a+'#39';rand='#39'+Math.random()+'
              #39'" height=1 width=1/>'#39')'
              'if(11<js)d.write('#39'<'#39'+'#39'!-- '#39')//--></script><noscript><img'
              'src="http://top.list.ru/counter?js=na;id=901403"'
              
                'height=1 width=1 alt=""/></noscript><script language="JavaScript' +
                '" '
              'type="text/javascript"><!--'
              'if(11<js)d.write('#39'--'#39'+'#39'>'#39')//--></script><!--/COUNTER-->'
              '<!--LiveInternet counter--><script type="text/javascript"><!--'
              'document.write("<img src='#39'http://counter.yadro.ru/hit?r"+'
              'escape(document.referrer)+((typeof(screen)=="undefined")?"":'
              '";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?'
              'screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+'
              '";"+Math.random()+'
              
                '"'#39' width=1 height=1 alt='#39#39'>")//--></script><!--/LiveInternet--><' +
                'script '
              'type="text/javascript">'
              'var gaJsHost = (("https:" == document.location.protocol) ? '
              '"https://ssl." : "http://www.");'
              'document.write(unescape("%3Cscript src='#39'" + gaJsHost + '
              '"google-analytics.com/ga.js'#39' '
              'type='#39'text/javascript'#39'%3E%3C/script%3E"));'
              '</script>'
              '<script type="text/javascript">'
              'var pageTracker = _gat._getTracker("UA-3271837-1");'
              'pageTracker._initData();'
              'pageTracker._trackPageview();'
              '</script>'
              '</body>'
              '</html>')
            TabOrder = 0
          end
        end
        object ts1: TTabSheet
          Caption = 'TestAbyssTop'
          ImageIndex = 3
          object TestAbyssTopMemo: TMemo
            Left = 0
            Top = 0
            Width = 342
            Height = 408
            Align = alClient
            Lines.Strings = (
              '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 '
              'Transitional//EN">'
              '<html>'
              '<head>'
              #9'<title>bash.org.ru - '#1062#1080#1090#1072#1090#1085#1080#1082' '#1056#1091#1085#1077#1090#1072'</title>'
              #9'<link rel="shortcut icon" '
              'href="http://s.bash.org.ru/favicon.ico" '
              'type="image/vnd.microsoft.icon">'
              #9'<link rel="stylesheet" type="text/css" media="screen" '
              'href="http://s.bash.org.ru/screen.css">'
              #9'<link rel="stylesheet" type="text/css" media="handheld" '
              'href="http://s.bash.org.ru/mobile.css">'
              #9'<link rel="alternate" title="Bash.org.ru RSS" '
              'href="http://bash.org.ru/rss/" type="application/rss+xml">'
              #9'<meta http-equiv="Content-Type" content="text/html; '
              'charset=windows-1251">'
              #9'<script src="http://s.bash.org.ru/mtools.js" '
              'language="JavaScript" type="text/javascript"></script> '
              ''
              '</head>'
              '<body style="margin: 0px;">'
              
                '<div style="width: auto; margin: 0px; padding: 0px 0px 0px 30px;' +
                ' '
              
                'background-color: #eee; font-size: 8pt;"><b>[bash.org.ru]</b> [<' +
                'a '
              'href="http://ithappens.ru">IT Happens</a>]</div>'
              '<div id="page">'
              #9'<div class="header"><a href="/"><img '
              'src="http://s.bash.org.ru/logo.gif" width="300" height="40" '
              'alt="bash.org.ru" /></a>bash.org.ru '#8212' '#1062#1080#1090#1072#1090#1085#1080#1082' '#1056#1091#1085#1077#1090#1072'</div>'
              #9'<div class="menu">'#1094#1080#1090#1072#1090#1099': [<a href="/">'#1087#1086#1089#1083#1077#1076#1085#1080#1077'</a>] '
              '[<a href="/random">'#1089#1083#1091#1095#1072#1081#1085#1099#1077'</a>] [<a href="/best">'#1083#1091#1095#1096#1080#1077'</a>] '
              
                '[<a href="/byrating">'#1087#1086' '#1088#1077#1081#1090#1080#1085#1075#1091'</a>] [<a href="/faq">FAQ</a>] [' +
                '<a '
              'href="/rss">RSS</a>] <br>'#1073#1077#1079#1076#1085#1072': [<a href="/abyss">'#1041#1077#1079#1076#1085#1072'</a>] '
              '<b>['#1090#1086#1087' '#1041#1077#1079#1076#1085#1099']</b> [<a href="/abyssbest">'#1083#1091#1095#1096#1077#1077' '#1041#1077#1079#1076#1085#1099'</a>] '
              '[<a href="/add">'#1076#1086#1073#1072#1074#1080#1090#1100'</a>] <br>'#1095#1090#1086'-'#1090#1086': [<a '
              'href="/comics">'#1082#1086#1084#1080#1082#1089'</a>] [<a '
              
                'href="http://maillist.ru/81859/">'#1088#1072#1089#1089#1099#1083#1082#1072'</a>] [<a href="/idea">' +
                #1076#1083#1103' '
              #1084#1086#1073#1080#1083#1100#1085#1080#1082#1072'</a>] [<a href="/webmaster">'#1074#1077#1073#1084#1072#1089#1090#1077#1088#1091'</a>] </div>'
              ''
              #9'<div id="quotes">'#9' '
              '<div class="q">'
              #9'<div class="vote">'
              #9#9'<b>1:</b>'
              #9#9'[ <span>34</span> ]'#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 10:55'
              #9'</div>'
              #9'<div>'#1056#1072#1089#1089#1082#1072#1079#1099#1074#1072#1077#1090' '#1076#1080#1088#1077#1082#1090#1086#1088' '#1075#1086#1089'.'#1091#1095#1077#1088#1077#1078#1076#1077#1085#1080#1103' ('#1087#1088#1086' '
              #1074#1099#1076#1077#1083#1077#1085#1080#1077' '#1073#1102#1076#1078#1077#1090#1085#1099#1093' '#1082#1086#1084#1087#1086#1074'):<br>'#8212' '#1071' '#1074' '#1101#1090#1086#1084' '#1076#1077#1083#1077' '#1088#1091#1082#1091' '#1085#1072#1073#1080#1083#1072'. '
              #1055#1088#1080#1082#1080#1085#1091#1083#1072' - '#1085#1091#1078#1085#1086' 20 '#1089#1080#1089#1090#1077#1084#1085#1080#1082#1086#1074', '#1086#1090#1087#1088#1072#1074#1080#1083#1072' '#1079#1072#1082#1072#1079' '#1085#1072' 70. '
              #1054#1090#1074#1077#1090#1080#1083#1080', '#1095#1090#1086' '#1084#1086#1075#1091#1090' '#1074#1099#1089#1083#1072#1090#1100' 23. '#1055#1088#1080#1074#1077#1079#1083#1080', '#1088#1072#1073#1086#1095#1080#1093' '#1086#1082#1072#1079#1072#1083#1086#1089#1100' '
              '20. '#1050#1072#1082' '#1080' '#1085#1072#1076#1086'.</div>'
              ''
              '</div>'
              #9' '
              #9' '
              #9'<hr class="iq"> '
              '<div class="q">'
              #9'<div class="vote">'
              #9#9'<b>2:</b>'
              #9#9'[ <span>33</span> ]'#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-01 22:38'
              #9'</div>'
              #9'<div>'#1093#1093#1093#1093#1093#1093'<br>x:'#1051#1070#1044#1048' '#1055#1054#1044#1057#1050#1040#1046#1048#1058#1045', '#1050#1040#1050' '#1041#1067#1057#1058#1056#1054' '
              #1057#1050#1048#1053#1059#1058#1068' 5-7'#1082#1075'??? '#1058#1086#1082' '#1088#1077#1072#1083#1100#1085#1054', '#1086#1095' '#1085#1072#1076#1086'..<br>y: '#1054#1090#1088#1077#1078#1100#1090#1077' '
              
                #1088#1091#1082#1091'.<br><br>'#1091#1091#1091#1091#1091'<br>'#1095#1105' '#1079#1072' '#1075#1086#1085' '#1088#1091#1082#1072' '#1084#1072#1082#1089' 3 '#1074#1077#1089#1080#1090', '#1085#1086#1075#1091' '#1087#1080#1083#1080' '#1089#1091#1082 +
                #1086' '
              #1085#1086#1075#1091'</div>'
              ''
              '</div>'
              #9' '
              #9' '
              #9'<hr class="iq"> '
              '<div class="q">'
              #9'<div class="vote">'
              #9#9'<b>3:</b>'
              #9#9'[ <span>32</span> ]'#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 07:54'
              #9'</div>'
              #9'<div>&lt;Minimus&gt; &quot;'#1087#1088#1086#1096#1091' '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1080#1090#1100' '
              #1073#1086#1083#1100#1085#1080#1095#1085#1099#1081' '#1085#1072' '#1085#1077#1076#1077#1083#1102' '#1074#1074#1080#1076#1091' '#1073#1077#1079#1091#1076#1077#1088#1078#1085#1086#1075#1086' '
              #1087#1086#1085#1086#1089#1072'&quot;<br>&lt;Minimus&gt; &quot;'#1073#1099#1089#1090#1088#1077#1077#1077' '#1073#1083#1103#1090#1100'&quot;</div>'
              ''
              '</div>'
              #9' '
              #9' '
              #9'<hr class="iq"> '
              '<div class="q">'
              #9'<div class="vote">'
              #9#9'<b>4:</b>'
              #9#9'[ <span>31</span> ]'#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 05:46'
              #9'</div>'
              #9'<div>'#1073#1072#1096' '#1089#1091#1082#1086' '#1089#1087#1072#1089' '#1084#1077#1085#1103'!!'#1090#1086#1095#1085#1077#1077' '#1084#1072#1075#1085#1080#1090#1086#1083#1091','#1082#1086#1090#1086#1088#1091#1102' '
              #1082#1072#1082#1080#1077' '#1090#1086' '#1082#1086#1085#1076#1086#1084#1099' '#1087#1099#1090#1072#1083#1080#1089#1100' '#1074#1099#1090#1072#1097#1080#1090#1100' '#1080#1079' '#1084#1086#1077#1075#1086' '#1072#1074#1090#1086'.'#1079#1072#1095#1080#1090#1072#1083#1089#1103' '
              #1080' '#1074' '#1087#1086#1083#1087#1103#1090#1086#1075#1086' '#1074' '#1086#1082#1085#1086' '#1091#1074#1080#1076#1077#1083','#1082#1072#1082' '#1090#1088#1080' '#1089#1082#1086#1090#1072' '#1074#1089#1082#1088#1099#1074#1072#1102#1090' '#1084#1072#1096#1080#1085#1091'.'#1086#1090' '
              #1074#1089#1077#1081' '#1076#1091#1096#1080' '#1074#1099#1088#1072#1078#1072#1102' '#1073#1083#1072#1075#1086#1076#1072#1088#1085#1086#1089#1090#1100'.'#1089#1087#1072#1089#1080#1073#1086'</div>'
              ''
              '</div>'
              #9' '
              #9' '
              #9'<hr class="iq"> '
              '<div class="q">'
              #9'<div class="vote">'
              #9#9'<b>5:</b>'
              #9#9'[ <span>31</span> ]'#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-01 20:09'
              #9'</div>'
              #9'<div>xxx: '#1089#1083#1099#1093#1072#1083', '#1089#1082#1086#1088#1086' '#1087#1086' '#1055#1077#1088#1074#1086#1084#1091' '#1085#1086#1074#1099#1081' '
              #1072#1074#1090#1086#1073#1080#1086#1075#1088#1072#1092#1080#1095#1077#1089#1082#1080#1081' '#1092#1080#1083#1100#1084' '#1089' '#1057#1077#1088#1075#1077#1077#1084' '#1041#1077#1079#1088#1091#1082#1086#1074#1099#1084' '
              #1074#1099#1081#1076#1077#1090'?<br>yyy: &quot;'#1055#1083#1077#1089#1077#1085#1100'&quot; '#1095#1090#1086'-'#1083#1080'?</div>'
              ''
              '</div>'
              #9'<hr class="iq"> '
              '<div class="q"><div><script language='#39'JavaScript'#39' '
              
                'type='#39'text/javascript'#39' src='#39'http://lol.bash.org.ru/b/adx.js'#39'></s' +
                'cript>'
              '<script language='#39'JavaScript'#39' type='#39'text/javascript'#39'>'
              '<!--'
              '   if (!document.phpAds_used) document.phpAds_used = '#39','#39';'
              '   phpAds_random = new String (Math.random()); phpAds_random = '
              'phpAds_random.substring(2,11);'
              '   '
              '   document.write ("<" + "script language='#39'JavaScript'#39' '
              'type='#39'text/javascript'#39' src='#39'");'
              '   document.write ("http://lol.bash.org.ru/b/adjs.php?n=" + '
              'phpAds_random);'
              '   document.write ("&amp;what=zone:2");'
              '   document.write ("&amp;exclude=" + document.phpAds_used);'
              '   if (document.referrer)'
              
                '      document.write ("&amp;referer=" + escape(document.referrer' +
                '));'
              '   document.write ("'#39'><" + "/script>");'
              '//-->'
              
                '</script><noscript><a href='#39'http://lol.bash.org.ru/b/adclick.php' +
                '?n='#39' '
              'target='#39'_blank'#39'><img '
              'src='#39'http://lol.bash.org.ru/b/adview.php?what=zone:2&amp;n='#39' '
              
                'border='#39'0'#39' alt='#39#39'></a></noscript></div></div><div class="q"><div' +
                ' '
              'style="text-align: center; font-size: 10pt;">'#1053#1072' '#1089#1072#1081#1090#1077' <a '
              'href="http://www.platforma2009.ru/">'#1055#1083#1072#1090#1092#1086#1088#1084#1072' Online</a> '#1089#1090#1072#1083#1080' '
              #1076#1086#1089#1090#1091#1087#1085#1099' '#1073#1086#1083#1077#1077' '#1096#1077#1089#1090#1080#1076#1077#1089#1103#1090#1080' '#1090#1077#1093#1085#1080#1095#1077#1089#1082#1080#1093' '#1076#1086#1082#1083#1072#1076#1086#1074' '#1087#1086' '
              #1087#1088#1086#1076#1091#1082#1090#1072#1084' Microsoft, '#1072' '#1090#1072#1082#1078#1077' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1099' '#1082' '#1085#1080#1084' '
              '('#1087#1088#1077#1079#1077#1085#1090#1072#1094#1080#1080', '#1087#1088#1080#1084#1077#1088#1099' '#1082#1086#1076#1072' '#1080' '#1090#1072#1082' '#1076#1072#1083#1077#1077'). <a '
              'href="http://www.platforma2009.ru/">'#1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1091#1081#1090#1077#1089#1100'</a> '#1080' '
              #1089#1090#1072#1085#1100#1090#1077' '#1086#1076#1085#1080#1084' '#1080#1079' '#1091#1095#1072#1089#1090#1085#1080#1082#1086#1074' '#1055#1083#1072#1090#1092#1086#1088#1084#1099' Online!</div></div> '
              #9' '
              #9'<hr class="iq"> '
              '<div class="q">'
              ''
              #9'<div class="vote">'
              #9#9'<b>6:</b>'
              #9#9'[ <span>31</span> ]'#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 15:11'
              #9'</div>'
              #9'<div>'#1050':<br>'#1040#1085#1085#1072' '#1051#1099#1082#1086#1074#1072' 18'#1083#1077#1090' '#1056#1086#1089#1089#1080#1103', '
              #1048#1078#1077#1074#1089#1082'<br>'#1052#1086#1083#1086#1076#1099#1077' '#1083#1102#1076#1080', '#1085#1077' '#1087#1080#1096#1080#1090#1077' '#1084#1085#1077' '#1077#1089#1083#1080': '#1074#1072#1084' '#1077#1097#1077' '#1085#1077' '
              #1080#1089#1087#1086#1083#1085#1080#1083#1086#1089#1100' 25 '#1083#1077#1090', '#1077#1089#1083#1080' '#1074#1099' '#1078#1080#1074#1077#1090#1077' '#1089' '#1088#1086#1076#1080#1090#1077#1083#1103#1084#1080', '#1080#1083#1080' '
              #1089#1085#1080#1084#1072#1077#1090#1077' '#1082#1074#1072#1088#1090#1080#1088#1091', '#1077#1089#1083#1080' '#1074#1072#1096' '#1077#1078#1077#1084#1077#1089#1103#1095#1085#1099#1081' '#1076#1086#1093#1086#1076' '#1089#1086#1089#1090#1086#1074#1083#1103#1077#1090' 30 '
              #1090'.'#1088'...<br>'#1050#1086#1075#1086' '#1103' '#1093#1086#1095#1091' '#1085#1072#1081#1090#1080':<br>'#1062#1077#1083#1077#1091#1089#1090#1088#1077#1084#1083#1077#1085#1085#1086#1075#1086', '#1091#1089#1087#1077#1096#1085#1086#1075#1086', '
              #1097#1077#1076#1088#1086#1075#1086'.<br>'#1080' '#1087#1088#1077#1076#1091#1087#1088#1077#1078#1076#1072#1102' '#1089#1088#1072#1079#1091', '#1090#1088#1077#1073#1091#1102' '#1086#1095#1077#1085#1100' '
              #1084#1085#1086#1075#1086#1075#1086'<br>=========<br>'#1054#1085#1072' '#1074#1086#1090' '#1088#1077#1072#1083#1100#1085#1086' '#1076#1091#1084#1072#1077#1090', '#1095#1090#1086' '#1074' 25 '#1089' '
              #1079#1072#1088#1087#1083#1072#1090#1086#1081' 30+, '#1089#1074#1086#1077#1081' '#1082#1074#1072#1088#1090#1080#1088#1086#1081', '#1084#1072#1096#1080#1085#1086#1081' '#1080' '#1090#1087' '#1084#1085#1077' '#1085#1091#1078#1085#1072' '
              #1087#1083#1072#1090#1085#1072#1103' 18'#1090#1080' '#1083#1077#1090#1085#1103#1103' '#1076#1099#1088#1082#1072' '#1076#1072#1088#1084#1086#1077#1076'? '
              
                '&gt;_&lt;<br>--------------<br>'#1040#1093#1072#1093#1072#1093#1072#1093#1072#1093#1072#1093#1072#1093#1072', '#1087#1080#1079#1076#1077#1094' '#1087#1072#1094#1072#1085#1091' '#1079#1086 +
                #1083#1086#1090#1086#1081' '
              #1087#1072#1084#1103#1090#1085#1080#1082'</div>'
              ''
              '</div>'
              #9' '
              #9' '
              #9'<hr class="iq"> '
              '<div class="q">'
              #9'<div class="vote">'
              #9#9'<b>7:</b>'
              #9#9'[ <span>30</span> ]'#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 04:00'
              #9'</div>'
              #9'<div>'#1057#1087#1072#1089#1080#1073#1086' '#1090#1077#1073#1077', '#1087#1088#1072#1076#1077#1076', '#1095#1090#1086' '#1090#1099' '#1074' 17 '#1075#1086#1076#1091' '#1089#1098#1077#1073#1072#1083' '#1085#1072' '
              #1090#1077#1083#1077#1075#1077' '#1080#1079' '#1091#1082#1088#1072#1080#1085#1099' '#1085#1072' '#1072#1083#1090#1072#1081'</div>'
              ''
              '</div>'
              #9' '
              #9' '
              #9'<hr class="iq"> '
              '<div class="q">'
              #9'<div class="vote">'
              #9#9'<b>8:</b>'
              #9#9'[ <span>29</span> ]'#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-01 19:56'
              #9'</div>'
              #9'<div>-&gt;BiGBoN (21.43.53)'#1086' '#1095#1077#1084' '
              #1076#1091#1084#1072#1077#1096#1100'?<br>&lt;-'#1055#1072#1060#1086#1057#1085#1040#1103' '#1089#1059#1095#1050#1072'.i. (21.46.48)'#1054' '#1090#1086#1084' '#1095#1090#1086' '#1074#1089#1077' '
              #1084#1091#1078#1080#1082#1080' '#1082#1086#1079#1083#1099'...<br>-&gt;BiGBoN (21.47.29)'#1059#1075#1091' '#1072' '#1074#1089#1077' '#1076#1077#1074#1082#1080' '
              #1079#1086#1086#1092#1080#1083#1099'<br></div>'
              ''
              '</div>'
              #9' '
              #9' '
              #9'<hr class="iq"> '
              '<div class="q">'
              #9'<div class="vote">'
              #9#9'<b>9:</b>'
              #9#9'[ <span>29</span> ]'#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 00:59'
              #9'</div>'
              #9'<div>'#1053#1077' '#1076#1072#1074#1085#1086' '#1074' '#1086#1076#1085#1086#1081' '#1089#1077#1090#1080' '#1084#1072#1075#1072#1079#1080#1085#1086#1074' '#1073#1099#1083#1080' '#1079#1072#1084#1077#1095#1077#1085#1099' '
              #1095#1091#1076#1085#1099#1077' '#1082#1086#1085#1089#1077#1088#1074#1099' '#1044#1103#1076#1103' '#1074#1072#1085#1103' '#1093#1088#1077#1085' '#1089' '#1083#1080#1084#1086#1085#1086#1084'</div>'
              ''
              '</div>'
              #9' '
              #9' '
              #9'<hr class="iq"> '
              '<div class="q">'
              #9'<div class="vote">'
              #9#9'<b>10:</b>'
              #9#9'[ <span>28</span> ]'#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 02:11'
              #9'</div>'
              #9'<div>xxx: '#1052#1086#1095#1077#1087#1086#1083#1086#1074#1072#1103' '#1089#1080#1089#1090#1077#1084#1072' '#1089' '#1082#1088#1086#1074#1077#1085#1086#1089#1085#1086#1081' '#1085#1077' '
              #1089#1086#1086#1073#1097#1072#1102#1090#1089#1103'<br>yyy: '#1069#1090#1086' '#1077#1089#1083#1080' '#1087#1072#1094#1080#1077#1085#1090' '#1093#1086#1088#1086#1096#1086' '#1089#1077#1073#1103' '#1074#1077#1083' '#1076#1086' '#1085#1072#1095#1072#1083#1072' '
              #1086#1087#1077#1088#1072#1094#1080#1080'!!!</div>'
              ''
              '</div>'
              #9' '
              #9'<hr class="iq"> '
              '<div class="q"><div><center><iframe '
              'src="http://lol.bash.org.ru/_ad.php?zone=zone:3" '
              'allowtransparency="true" style="background-color:#f3f3f3;" '
              'width="600" height="90" marginwidth="0" marginheight="0" '
              'scrolling="no" frameborder="0" name="ctf" '
              'id="ctf"></iframe></center></div></div> '
              #9'<hr class="iq"> '
              '<div class="q">'
              #9'<div class="vote">'
              #9#9'<b>11:</b>'
              #9#9'[ <span>28</span> ]'#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 12:18'
              #9'</div>'
              ''
              #9'<div>'#1072' '#1079#1085#1072#1077#1090#1077','#1082#1072#1082' '#1091' '#1085#1072#1089' '#1091#1073#1086#1088#1097#1080#1094#1072' '#1083#1072#1089#1082#1086#1074#1086' '#1082#1086#1090#1086#1074' '
              #1085#1072#1079#1099#1074#1072#1077#1090'? &quot;'#1093#1091'*'#1090#1072' '#1087#1083#1102#1096#1077#1074#1072#1103'&quot;... :))</div>'
              '</div>'
              #9' '
              #9' '
              #9'<hr class="iq"> '
              '<div class="q">'
              #9'<div class="vote">'
              #9#9'<b>12:</b>'
              #9#9'[ <span>27</span> ]'#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-01 23:10'
              #9'</div>'
              ''
              #9'<div>Alex:<br>'#1103' '#1087#1086#1089#1090#1072#1074#1080#1083' '#1088#1077#1082#1086#1088#1076'<br>Alex:<br>'#1055#1086#1095#1080#1089#1090#1080#1083' '
              '100 '#1088#1099#1073#1077#1096#1077#1082'<br>Olegas:<br>'#1082#1072#1082#1080#1093' '#1088#1099#1073#1077#1096#1077#1082'?<br>Alex:<br>'#1082#1091#1087#1080#1083' '
              #1089#1077#1076#1085#1103' '#1082#1080#1083#1086' '#1082#1072#1088#1072#1089#1080#1082#1086#1074'<br>Alex:<br>'#1057#1077#1081#1095#1072#1089' '
              #1078#1072#1088#1102'<br>Olegas:<br>'#1082#1080#1083#1086' '#1082#1072#1088#1072#1089#1077#1081' = 1000 '#1075#1088' - 100 '#1088#1099#1073#1077#1096#1077#1082' - 10 '#1075#1088' '
              #1082#1072#1088#1072#1089#1100'<br>'#1057#1040#1064#1040' - '#1058#1071' '#1054#1041#1052#1040#1053#1059#1051#1048' - '#1069#1058#1054' '#1040#1050#1042#1040#1056#1048#1059#1053#1067#1045' '
              #1056#1067#1041#1050#1048'<br>'#1085#1086' '#1091#1078#1072#1089' ! '#1058#1067' '#1048#1061' '#1057#1052#1054#1043' '#1055#1054#1063#1048#1057#1058#1048#1058#1068'???</div>'
              '</div>'
              ''
              #9' '
              #9' '
              #9'<hr class="iq"> '
              '<div class="q">'
              #9'<div class="vote">'
              #9#9'<b>13:</b>'
              #9#9'[ <span>27</span> ]'#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-01 21:41'
              #9'</div>'
              #9'<div>&quot;...'#1089#1077#1081#1095#1072#1089', '#1092#1080#1085#1072#1085#1089#1086#1074#1099#1077' '#1072#1085#1072#1083#1080#1090#1080#1082#1080' '#1093#1091#1078#1077' '
              #1089#1080#1085#1086#1087#1090#1080#1082#1086#1074'...&quot; ('#1089') '#1087#1077#1088#1074#1099#1081' '#1082#1072#1085#1072#1083', '#1074#1086#1089#1082#1088#1077#1089#1085#1086#1077' '
              '&quot;'#1042#1088#1077#1084#1103'&quot;</div>'
              ''
              '</div>'
              #9' '
              #9' '
              #9'<hr class="iq"> '
              '<div class="q">'
              #9'<div class="vote">'
              #9#9'<b>14:</b>'
              #9#9'[ <span>26</span> ]'#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-01 22:36'
              #9'</div>'
              #9'<div>'#1061#1061#1061': '#1082#1090#1086' '#1074' '#1083#1080#1085#1077#1081#1082#1091' '#1080#1075#1088#1072#1083'?<br>YYY '#187' XXX : '#1103' '#1074' '#1085#1077#1105' '
              #1095#1077#1088#1090#1080#1083'</div>'
              ''
              '</div>'
              #9' '
              #9' '
              #9'<hr class="iq"> '
              '<div class="q">'
              #9'<div class="vote">'
              #9#9'<b>15:</b>'
              #9#9'[ <span>26</span> ]'#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-01 21:04'
              #9'</div>'
              #9'<div>Mr. DHD, 01.02.2009 21:03:05:<br>'#1095#1090#1086' '#1090#1099' '#1076#1091#1084#1072#1077#1096#1100' '
              #1086#1073' '#1101#1092#1090#1072#1085#1072#1079#1080#1080'?<br><br>DanilPo, 21:03:19:<br>'#1063#1090#1086' '#1086#1085#1072' '#1087#1080#1096#1077#1090#1089#1103' '
              #1095#1077#1088#1077#1079' &quot;'#1074'&quot;</div>'
              ''
              '</div>'
              #9' '
              #9' '
              #9'<hr class="iq"> '
              '<div class="q">'
              #9'<div class="vote">'
              #9#9'<b>16:</b>'
              #9#9'[ <span>26</span> ]'#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-01 20:34'
              #9'</div>'
              #9'<div>'#1047#1072#1093#1086#1076#1080#1096#1100' '#1074' '#1083#1080#1092#1090' - '#1072' '#1090#1072#1084' '#1085#1072#1075#1072#1078#1077#1085#1086', '#1074#1099#1093#1086#1076#1080#1096#1100' - '
              #1090#1077#1087#1077#1088#1100' '#1077#1097#1077' '#1080' '#1085#1072#1073#1083#1077#1074#1072#1085#1086'!</div>'
              ''
              '</div>'
              #9' '
              #9' '
              #9'<hr class="iq"> '
              '<div class="q">'
              #9'<div class="vote">'
              #9#9'<b>17:</b>'
              #9#9'[ <span>26</span> ]'#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-01 23:26'
              #9'</div>'
              #9'<div>'#1071' (19:51:43 1/02/2009)<br>'#1055#1088#1080#1074#1077#1090'. '#1055#1086#1103#1074#1080#1083#1089#1103' '
              #1088#1072#1079#1075#1086#1074#1086#1088' '#1082' '#1090#1077#1073#1077'. '#1051#1080#1095#1085#1099#1081'. '#1050#1086#1075#1076#1072' '#1090#1077#1073#1077' '#1091#1076#1086#1073#1085#1086' '#1073#1091#1076#1077#1090' '#1087#1086#1075#1086#1074#1086#1088#1080#1090#1100'? '
              #1052#1086#1078#1085#1086' '#1080' '#1087#1086' '#1090#1077#1083#1077#1092#1086#1085#1091', '#1085#1086' '#1073#1077#1079' '#1089#1083#1091#1096#1072#1090#1077#1083#1077#1081' '#1082#1072#1082' '#1089' '#1090#1074#1086#1077#1081' '#1090#1072#1082' '#1080' '#1089' '
              #1084#1086#1077#1081' '#1089#1090#1086#1088#1086#1085#1099'.<br><br>'#1040#1085#1103' (23:09:06 '
              '1/02/2009)<br>'#1087#1088#1080#1074#1077#1090'!<br>'#1084#1086#1078#1077#1096#1100' '#1087#1080#1089#1072#1090#1100' '#1074' '#1072#1089#1100#1082#1091' '#1089#1084#1077#1083#1086'!<br>'#1071' '
              '(23:10:10 1/02/2009)<br>'#1061#1084', '#1103' '#1087#1086#1082#1072' '#1085#1077' '#1091#1074#1077#1088#1077#1085', '#1095#1090#1086' '#1101#1090#1086' '#1090#1099', '#1040#1085#1103'. '
              #1055#1086#1089#1077#1084#1091' '#1074#1086#1087#1088#1086#1089': '#1095#1090#1086' '#1087#1086#1076#1072#1088#1080#1083#1072' '#1084#1085#1077' '#1054#1082#1089#1072#1085#1072' '#1085#1072' '#1076#1077#1085#1100' '
              #1088#1086#1078#1076#1077#1085#1080#1103'?<br>'#1040#1085#1103' (23:10:34 1/02/2009)<br>'#1087#1086#1090#1086#1084' '#1087#1086#1075#1086#1074#1086#1088#1080#1084', '
              #1086#1082'<br>'#1071' (23:11:24 1/02/2009)<br>'#1061#1086#1088#1086#1096#1086', '#1095#1077#1083#1086#1074#1077#1082', '#1074#1099#1076#1072#1102#1097#1080#1081' '
              #1089#1077#1073#1103' '#1079#1072' '#1040#1085#1102'.</div>'
              ''
              '</div>'
              #9' '
              #9' '
              #9'<hr class="iq"> '
              '<div class="q">'
              #9'<div class="vote">'
              #9#9'<b>18:</b>'
              #9#9'[ <span>26</span> ]'#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-01 20:57'
              #9'</div>'
              #9'<div>45507 ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-01-28 '#1074' 10:55)<br>'#1077#1073#1072#1085#1091#1090#1072#1103' '
              #1089#1090#1088#1072#1085#1072'!!! '#1058#1086#1082#1072' '#1095#1090#1086' '#1089#1084#1086#1090#1088#1077#1083' '#1074' '#1085#1086#1074#1086#1089#1090#1103#1093': '#1087#1100#1103#1085#1099#1081' '#1084#1091#1089#1086#1088' '#1075#1086#1076' '#1085#1072#1079#1072#1076' '
              #1085#1072#1089#1084#1077#1088#1090#1100' '#1089#1073#1080#1083' 11-'#1083#1077#1090#1085#1102#1102' '#1076#1077#1074#1086#1095#1082#1091', '#1085#1077' '#1086#1089#1090#1072#1085#1086#1074#1080#1083#1089#1103' '#1080' '#1085#1077' '#1086#1082#1072#1079#1072#1083' '
              #1077#1081' '#1087#1077#1088#1074#1091#1102' '#1087#1086#1084#1086#1097#1100', '#1072' '#1087#1088#1086#1089#1090#1086' '#1087#1086#1077#1093#1072#1083' '#1076#1072#1083#1100#1096#1077'. '#1057#1077#1081#1095#1072#1089' '#1077#1075#1086' '#1089#1091#1076#1103#1090', '
              #1077#1084#1091' '#1075#1088#1086#1079#1080#1090' '#1044#1054' 5 '#1051#1045#1058' '#1051#1048#1064#1045#1053#1048#1071' '#1057#1042#1054#1041#1054#1044#1067'!!! '#1069#1090#1086', '#1073#1083#1103#1076#1100', '
              #1089#1087#1088#1072#1074#1077#1076#1083#1080#1074#1086'???<br><br>'#1045#1089#1083#1080' '#1085#1072' '#1086#1073#1097#1077#1081' '#1079#1086#1085#1077', '#1090#1086' '#1076#1072'</div>'
              ''
              '</div>'
              #9' '
              #9' '
              #9'<hr class="iq"> '
              '<div class="q">'
              #9'<div class="vote">'
              #9#9'<b>19:</b>'
              #9#9'[ <span>25</span> ]'#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-01 20:17'
              #9'</div>'
              #9'<div>'#1042#1095#1077#1088#1072' '#1087#1088#1080#1089#1085#1080#1083#1089#1103' '#1082#1086#1096#1084#1072#1088' - '#1071' '#1091#1076#1072#1083#1103#1083' '#1087#1072#1087#1082#1091' '
              'downloads.<br>'#1055#1088#1086#1089#1085#1091#1083#1089#1103' '#1074' '#1093#1086#1083#1086#1076#1085#1086#1084' '#1087#1086#1090#1091'.</div>'
              ''
              '</div>'
              #9' '
              #9' '
              #9'<hr class="iq"> '
              '<div class="q">'
              #9'<div class="vote">'
              #9#9'<b>20:</b>'
              #9#9'[ <span>25</span> ]'#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 00:50'
              #9'</div>'
              #9'<div>'#1093#1093#1093': '#1083#1102#1073#1086#1074', '#1101#1090#1086' '#1082#1086#1075#1076#1072' '#1074#1089#1090#1072#1077#1090' '#1076#1072#1078#1077' '#1086#1090' '#1088#1072#1079#1075#1086#1074#1086#1088#1072' '#1087#1086' '
              #1072#1089#1077'<br>'#1091#1091#1091': '#1076#1088#1091#1075' '#1090#1099' '#1086#1097#1080#1073#1089#1103', '#1101#1090#1086' '#1089#1087#1077#1088#1084#1090#1086#1082#1089#1080#1082#1086#1079'</div>'
              ''
              '</div>'
              #9' '
              #9' '
              #9'<hr class="iq"> '
              '<div class="q">'
              #9'<div class="vote">'
              #9#9'<b>21:</b>'
              #9#9'[ <span>25</span> ]'#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-01 22:39'
              #9'</div>'
              #9'<div>'#1093#1093#1093': '#1052#1077#1085#1103' '#1087#1088#1086#1089#1090#1086' '#1089#1090#1086#1087#1086#1088#1080#1090', '#1082#1086#1075#1076#1072' '#1087#1088#1086#1075#1088#1072#1084#1084#1072' '
              #1074#1099#1076#1072#1077#1090' '#1089#1086#1086#1073#1097#1077#1085#1080#1103' '#1074' '#1089#1090#1080#1083#1077' &quot;'#1087#1088#1086#1080#1079#1086#1096#1083#1072' '#1085#1077#1080#1079#1074#1077#1089#1090#1085#1072#1103' '
              #1086#1096#1080#1073#1082#1072', '#1086#1073#1088#1072#1090#1080#1090#1077#1089#1100' '#1082' '#1089#1074#1086#1077#1084#1091' '#1089#1080#1089#1090#1077#1084#1085#1086#1084#1091' '
              #1072#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088#1091'&quot;<br>'#1059#1059#1059': '#1085#1091' '#1086#1073#1088#1072#1090#1080#1089#1100' '#1087#1091#1089#1090#1100' '#1086#1085' '#1080' '
              #1088#1072#1079#1075#1088#1077#1073#1072#1077#1090'<br>'#1093#1093#1093': '#1076#1099#1082' '#1103' '#1080' '#1077#1089#1090#1100' '#1086#1085'((</div>'
              ''
              '</div>'
              #9' '
              #9' '
              #9'<hr class="iq"> '
              '<div class="q">'
              #9'<div class="vote">'
              #9#9'<b>22:</b>'
              #9#9'[ <span>25</span> ]'#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-01 23:12'
              #9'</div>'
              #9'<div>'#1054#1076#1084#1080#1085#1099', '#1089#1086#1079#1076#1072#1081#1090#1077' '#1073#1072#1096'-'#1092#1086#1088#1091#1084'!<br><br>'#1055#1083#1102#1089#1091#1077#1084'! '
              #1044#1072#1074#1085#1086' '#1093#1086#1090#1077#1083' '#1084#1077#1089#1090#1086' '#1075#1076#1077' '#1073#1091#1076#1077#1090' '#1090#1091#1095#1072' '#1085#1072#1088#1086#1076#1091' '#1080' '#1075#1076#1077' '#1084#1086#1078#1085#1086' '#1073#1091#1076#1077#1090' '
              #1087#1086#1075#1086#1074#1086#1088#1080#1090#1100' '#1085#1072' '#1083#1102#1073#1099#1077' '#1090#1077#1084#1099'.</div>'
              ''
              '</div>'
              #9' '
              #9' '
              #9'<hr class="iq"> '
              '<div class="q">'
              #9'<div class="vote">'
              #9#9'<b>23:</b>'
              #9#9'[ <span>25</span> ]'#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 10:31'
              #9'</div>'
              #9'<div>'#1055#1051#1070#1064#1040': '#1091' '#1084#1077#1085#1103' '#1074#1089#1077#1075#1076#1072' '#1073#1099#1083#1072' '#1084#1077#1095#1090#1072' '#1082#1091#1087#1080#1090#1100' '
              #1073#1086#1083#1100#1096#1091#1102' '#1089#1086#1073#1072#1082#1091', '#1080' '#1095#1090#1086#1073#1099' '#1086#1085#1072' '#1089#1086' '#1084#1085#1086#1081' '#1085#1072' '#1082#1088#1086#1074#1072#1090#1077' '#1089#1087#1072#1083#1072'))) '#1074#1084#1077#1089#1090#1086' '
              #1084#1091#1078#1072')))<br>'#1045#1085#1103': '#1072' '#1084#1091#1078' '#1079#1085#1072#1077#1090'?<br>'#1055#1051#1070#1064#1040': '
              #1076#1086#1075#1072#1076#1099#1074#1072#1077#1090#1089#1103'...<br>'#1055#1051#1070#1064#1040': '#1103' '#1080#1085#1086#1075#1076#1072' '#1077#1075#1086' '#1086#1073#1085#1080#1084#1072#1102' '#1079#1072' '#1084#1086#1093#1085#1072#1090#1099#1077' '
              #1085#1086#1078#1082#1080' '#1080' '#1083#1072#1072#1072#1072#1089#1082#1086#1074#1086' '#1090#1072#1082' '#1075#1086#1074#1086#1088#1102' &quot;'#1064#1072#1072#1072#1072#1088#1080#1082'&quot;..)</div>'
              ''
              '</div>'
              #9' '
              #9' '
              #9'<hr class="iq"> '
              '<div class="q">'
              #9'<div class="vote">'
              #9#9'<b>24:</b>'
              #9#9'[ <span>24</span> ]'#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-01 20:38'
              #9'</div>'
              #9'<div>'#1055#1086#1084#1085#1102' '#1073#1099#1083#1086' '#1076#1077#1083#1086'. 2002 '#1075#1086#1076'. '#1051#1077#1090#1086'. '#1046#1072#1088#1072'. '#1048#1076#1091' '#1089' '
              #1076#1088#1091#1075#1086#1084' '#1085#1072' '#1084#1077#1076' '#1086#1089#1084#1086#1090#1088', '#1090#1072#1082' '#1079#1072' '#1082#1086#1084#1087#1072#1085#1080#1102'. '#1055#1088#1080#1096#1083#1080' '#1085#1072' '
              #1092#1083#1102#1086#1088#1086#1075#1088#1072#1092#1080#1102'. '#1047#1072#1093#1086#1076#1080#1084' '#1080'... '#1086' '#1041#1086#1078#1077', '#1089#1090#1086#1080#1090' '#1073#1072#1073#1082#1072' '#1074' '#1086#1076#1085#1086#1081' '#1102#1073#1082#1077'. '
              #1052#1099' '#1074' '#1096#1086#1082#1077', '#1074#1088#1072#1095#1080#1093#1072' '#1085#1072' '#1085#1072#1089' '#1086#1088#1105#1090', '#1090#1080#1087#1072' '#1087#1086#1095#1077#1084#1091' '#1073#1077#1079' '#1088#1072#1079#1088#1077#1096#1077#1085#1080#1103', '
              
                #1079#1076#1077#1089#1100' '#1078#1077' '#1087#1072#1094#1080#1077#1085#1090'!!! '#1040' '#1073#1072#1073#1091#1083#1103' '#1089#1090#1086#1080#1090' '#1080' '#1074#1099#1076#1072#1105#1090':&quot; '#1053#1080#1095#1077#1075#1086', '#1087#1091#1089#1090#1100 +
                ' '
              #1084#1072#1083#1100#1095#1080#1082#1080' '#1087#1086#1075#1083#1103#1076#1103#1090' '#1085#1072' '#1078#1077#1085#1089#1082#1086#1077' '#1090#1077#1083#1086'...&quot;. '#1055#1086#1089#1083#1077' '#1101#1090#1086#1075#1086' '#1085#1077#1076#1077#1083#1102' '
              #1085#1072' '#1076#1077#1074#1091#1096#1077#1082' '#1085#1077' '#1089#1084#1086#1090#1088#1077#1083'</div>'
              ''
              '</div>'
              #9' '
              #9' '
              #9'<hr class="iq"> '
              '<div class="q">'
              #9'<div class="vote">'
              #9#9'<b>25:</b>'
              #9#9'[ <span>24</span> ]'#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-01 21:26'
              #9'</div>'
              #9'<div>xxx: '#1063#1091#1074#1072#1082', '#1082#1072#1082#1086#1077' '#1084#1085#1091' '#1082#1080#1085#1086' '#1087#1086#1089#1084#1072#1088#1077#1090#1100'?! '#1056#1072#1081#1089#1082#1086#1077' '
              #1086#1079#1077#1088#1086' '#1080#1083#1080' '#1041#1091#1075#1080#1084#1077#1085' 2?<br>yyy: '#1056#1072#1081#1089#1082#1086#1077' '#1086#1079#1077#1088#1086'<br>xxx: '#1058#1099' '
              #1089#1084#1072#1088#1077#1083'?<br>yyy: '#1085#1077#1090', '#1103' '#1073#1091#1075#1080#1084#1077#1085' '#1089#1084#1086#1090#1088#1077#1083'</div>'
              ''
              '</div>'
              #9' '
              #9' '
              ' </div>'
              #9'<div class="menu">'#1094#1080#1090#1072#1090#1099': [<a href="/">'#1087#1086#1089#1083#1077#1076#1085#1080#1077'</a>] '
              '[<a href="/random">'#1089#1083#1091#1095#1072#1081#1085#1099#1077'</a>] [<a href="/best">'#1083#1091#1095#1096#1080#1077'</a>] '
              
                '[<a href="/byrating">'#1087#1086' '#1088#1077#1081#1090#1080#1085#1075#1091'</a>] [<a href="/faq">FAQ</a>] [' +
                '<a '
              'href="/rss">RSS</a>] <br>'#1073#1077#1079#1076#1085#1072': [<a href="/abyss">'#1041#1077#1079#1076#1085#1072'</a>] '
              '<b>['#1090#1086#1087' '#1041#1077#1079#1076#1085#1099']</b> [<a href="/abyssbest">'#1083#1091#1095#1096#1077#1077' '#1041#1077#1079#1076#1085#1099'</a>] '
              '[<a href="/add">'#1076#1086#1073#1072#1074#1080#1090#1100'</a>] <br>'#1095#1090#1086'-'#1090#1086': [<a '
              'href="/comics">'#1082#1086#1084#1080#1082#1089'</a>] [<a '
              
                'href="http://maillist.ru/81859/">'#1088#1072#1089#1089#1099#1083#1082#1072'</a>] [<a href="/idea">' +
                #1076#1083#1103' '
              #1084#1086#1073#1080#1083#1100#1085#1080#1082#1072'</a>] [<a href="/webmaster">'#1074#1077#1073#1084#1072#1089#1090#1077#1088#1091'</a>] </div>'
              ''
              #9'<hr><center><!--Rating@Mail.ru LOGO--><a target=_top'
              'href="http://top.mail.ru/jump?from=901403"><img'
              'src="http://top.list.ru/counter?id=901403;t=49;l=1"'
              'border=0 height=31 width=88'
              
                'alt="'#1056#1077#1081#1090#1080#1085#1075'@Mail.ru"/></a> <!--/LOGO--><!--LiveInternet logo-->' +
                '<a '
              'href="http://www.liveinternet.ru/click"'
              
                'target=_blank><img src="http://counter.yadro.ru/logo?15.1" borde' +
                'r=0'
              'title="LiveInternet"'
              'alt="" width=88 height=31></a><!--/LiveInternet-->'
              '<a href="http://www.yandex.ru/cy?base=0&host=bash.org.ru"><img '
              'src="http://www.yandex.ru/cycounter?bash.org.ru" width="88" '
              'height="31" alt="'#1048#1085#1076#1077#1082#1089' '#1062#1080#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1071'ndex" border="0"></a>'
              '<!-- SpyLOG -->'
              
                '<script src="http://tools.spylog.ru/counter_cv.js" id="spylog_co' +
                'de" '
              
                'type="text/javascript" counter="926575" part="" track_links="ext' +
                '" '
              'page_level="0">'
              '</script>'
              '<noscript>'
              '<a href="http://u9265.75.spylog.com/cnt?cid=926575&f=3&p=0" '
              'target="_blank">'
              '<img src="http://u9265.75.spylog.com/cnt?cid=926575&p=0" '
              'alt="SpyLOG" border="0" width="88" height="31"></a>'
              '</noscript>'
              '<!--/ SpyLOG --></center>'#9'<hr><small>'#1048#1076#1077#1103' '#1087#1088#1086#1077#1082#1090#1072' &copy; '
              'bash.org.'
              #9'<br>'#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1080' '#1087#1083#1102#1096#1082#1080' &copy; 2004'#8212'2009, '#1082#1086#1084#1072#1085#1076#1072' '
              'bash.org.ru.'
              #9'<br><a href="/ads">'#1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1076#1083#1103' '
              #1088#1077#1082#1083#1072#1084#1086#1076#1072#1090#1077#1083#1077#1081'</a>. '#1055#1086' '#1076#1088#1091#1075#1080#1084' '#1087#1086#1074#1086#1076#1072#1084': <a '
              'href="&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20&#115;%7'
              '5&#112;%70%6f&#114;&#116;&#064;%62%61&#115;&#104;%2e&#11'
              '1;%72&#103;%2e%72&#117;">&#115;&#117;&#112;&#112;&#111;&#'
              '114;&#116;@&#098;&#097;&#115;&#104;&#046;&#111;&#114;&#103'
              ';&#046;&#114;&#117;</a>.'
              #9'</small>'
              ''
              '</div>'
              '<!--Rating@Mail.ru COUNTER--><script language="JavaScript" '
              'type="text/javascript"><!--'
              'd=document;var a='#39#39';a+='#39';r='#39'+escape(d.referrer)'
              'js=10//--></script><script language="JavaScript1.1" '
              'type="text/javascript"><!--'
              'a+='#39';j='#39'+navigator.javaEnabled()'
              'js=11//--></script><script language="JavaScript1.2" '
              'type="text/javascript"><!--'
              's=screen;a+='#39';s='#39'+s.width+'#39'*'#39'+s.height'
              'a+='#39';d='#39'+(s.colorDepth?s.colorDepth:s.pixelDepth)'
              'js=12//--></script><script language="JavaScript1.3" '
              'type="text/javascript"><!--'
              'js=13//--></script><script language="JavaScript" '
              'type="text/javascript"><!--'
              'd.write('#39'<img src="http://top.list.ru/counter'#39'+'
              #39'?id=901403;js='#39'+js+a+'#39';rand='#39'+Math.random()+'
              #39'" height=1 width=1/>'#39')'
              'if(11<js)d.write('#39'<'#39'+'#39'!-- '#39')//--></script><noscript><img'
              'src="http://top.list.ru/counter?js=na;id=901403"'
              
                'height=1 width=1 alt=""/></noscript><script language="JavaScript' +
                '" '
              'type="text/javascript"><!--'
              'if(11<js)d.write('#39'--'#39'+'#39'>'#39')//--></script><!--/COUNTER-->'
              '<!--LiveInternet counter--><script type="text/javascript"><!--'
              'document.write("<img src='#39'http://counter.yadro.ru/hit?r"+'
              'escape(document.referrer)+((typeof(screen)=="undefined")?"":'
              '";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?'
              'screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+'
              '";"+Math.random()+'
              
                '"'#39' width=1 height=1 alt='#39#39'>")//--></script><!--/LiveInternet--><' +
                'script '
              'type="text/javascript">'
              'var gaJsHost = (("https:" == document.location.protocol) ? '
              '"https://ssl." : "http://www.");'
              'document.write(unescape("%3Cscript src='#39'" + gaJsHost + '
              '"google-analytics.com/ga.js'#39' '
              'type='#39'text/javascript'#39'%3E%3C/script%3E"));'
              '</script>'
              '<script type="text/javascript">'
              'var pageTracker = _gat._getTracker("UA-3271837-1");'
              'pageTracker._initData();'
              'pageTracker._trackPageview();'
              '</script>'
              '</body>'
              '</html>')
            TabOrder = 0
          end
        end
        object TestMemoMainTabSheet: TTabSheet
          Caption = 'TestAbyss'
          ImageIndex = 4
          object TestAbyssMemo: TMemo
            Left = 0
            Top = 0
            Width = 342
            Height = 408
            Align = alClient
            Lines.Strings = (
              '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 '
              'Transitional//EN">'
              '<html>'
              '<head>'
              #9'<title>bash.org.ru - '#1062#1080#1090#1072#1090#1085#1080#1082' '#1056#1091#1085#1077#1090#1072'</title>'
              #9'<link rel="shortcut icon" '
              'href="http://s.bash.org.ru/favicon.ico" '
              'type="image/vnd.microsoft.icon">'
              #9'<link rel="stylesheet" type="text/css" media="screen" '
              'href="http://s.bash.org.ru/screen.css">'
              #9'<link rel="stylesheet" type="text/css" media="handheld" '
              'href="http://s.bash.org.ru/mobile.css">'
              #9'<link rel="alternate" title="Bash.org.ru RSS" '
              'href="http://bash.org.ru/rss/" type="application/rss+xml">'
              #9'<meta http-equiv="Content-Type" content="text/html; '
              'charset=windows-1251">'
              #9'<script src="http://s.bash.org.ru/mtools.js" '
              'language="JavaScript" type="text/javascript"></script> '
              ''
              '</head>'
              '<body style="margin: 0px;">'
              
                '<div style="width: auto; margin: 0px; padding: 0px 0px 0px 30px;' +
                ' '
              
                'background-color: #eee; font-size: 8pt;"><b>[bash.org.ru]</b> [<' +
                'a '
              'href="http://ithappens.ru">IT Happens</a>]</div>'
              '<div id="page">'
              #9'<div class="header"><a href="/"><img '
              'src="http://s.bash.org.ru/logo.gif" width="300" height="40" '
              'alt="bash.org.ru" /></a>bash.org.ru '#8212' '#1062#1080#1090#1072#1090#1085#1080#1082' '#1056#1091#1085#1077#1090#1072'</div>'
              #9'<div class="menu">'#1094#1080#1090#1072#1090#1099': [<a href="/">'#1087#1086#1089#1083#1077#1076#1085#1080#1077'</a>] '
              '[<a href="/random">'#1089#1083#1091#1095#1072#1081#1085#1099#1077'</a>] [<a href="/best">'#1083#1091#1095#1096#1080#1077'</a>] '
              
                '[<a href="/byrating">'#1087#1086' '#1088#1077#1081#1090#1080#1085#1075#1091'</a>] [<a href="/faq">FAQ</a>] [' +
                '<a '
              'href="/rss">RSS</a>] <br>'#1073#1077#1079#1076#1085#1072': <b>['#1041#1077#1079#1076#1085#1072']</b> [<a '
              'href="/abysstop">'#1090#1086#1087' '#1041#1077#1079#1076#1085#1099'</a>] [<a href="/abyssbest">'#1083#1091#1095#1096#1077#1077' '
              #1041#1077#1079#1076#1085#1099'</a>] [<a href="/add">'#1076#1086#1073#1072#1074#1080#1090#1100'</a>] <br>'#1095#1090#1086'-'#1090#1086': [<a '
              'href="/comics">'#1082#1086#1084#1080#1082#1089'</a>] [<a '
              
                'href="http://maillist.ru/81859/">'#1088#1072#1089#1089#1099#1083#1082#1072'</a>] [<a href="/idea">' +
                #1076#1083#1103' '
              #1084#1086#1073#1080#1083#1100#1085#1080#1082#1072'</a>] [<a href="/webmaster">'#1074#1077#1073#1084#1072#1089#1090#1077#1088#1091'</a>] </div>'
              ''
              #9'<div id="quotes">'#9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9#1042#1074#1077#1076#1080#1090#1077' '#1082#1083#1102#1095#1077#1074#1091#1102' '#1092#1088#1072#1079#1091' '#1076#1083#1103' '#1087#1086#1080#1089#1082#1072':'
              #9#9'</div>'
              #9#9'<div>'
              #9#9#9'<form action="/abyss"><input '
              'type="text" name="text" value="" style="width: 90%">'
              #9#9#9'<input type="submit" '
              'value="'#1053#1072#1081#1090#1080'"></form>'
              #9#9'</div>'
              #9'</div>'#9#9#9#9' '
              #9'<div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'2202745'
              #9#9#9#9#9#9'[ <a '
              'href="/abyss/2202745/rulez" onclick="v(2202745, 0, 1); return '
              'false;">+</a> <span id="v2202745">|</span> <a '
              'href="/abyss/2202745/sux" onclick="v(2202745, 1, 1); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/abyss/2202745/bayan" '
              'onclick="v(2202745, 2, 1); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 16:29'
              #9#9'</div>'
              #9#9'<div>16:19:59 ha**niel<br>'#1086#1083#1100' '#1072' '#1082#1072#1082#1086#1081' '#1091' '
              #1082#1086#1088#1073#1080#1085#1099' '#1090#1080#1087' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103'<br>16:20:14 '#1059'**'#1092#1082#1072'<br>'#1090#1099' '#1089#1086' '#1084#1085#1086#1081' '
              #1088#1072#1079#1075#1086#1074#1072#1088#1080#1074#1072#1077#1096#1100'?))<br>16:20:18 ha**niel<br>'#1082#1086#1086#1082#1089#1080#1072#1083#1100#1085#1099#1081' '
              #1082#1072#1073#1077#1083#1100'?<br>16:20:20 '#1059'**'#1092#1082#1072'<br>'#1074#1089#1084#1099#1089#1083#1077'?)<br>16:20:24 '
              
                'ha**niel<br>'#1076#1072'<br>'#1085#1091' '#1093#1086#1095#1091' '#1082#1086#1088#1073#1080#1085#1091'<br>16:20:51 '#1059'**'#1092#1082#1072'<br>'#1086#1085' '#1090#1072#1082#1086#1081 +
                ' '
              #1086#1088#1072#1085#1078#1077#1074#1099#1081'...</div>'
              ''
              #9'</div>'#9#9' '
              #9' '
              #9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'2202484'
              #9#9#9#9#9#9'[ <a '
              'href="/abyss/2202484/rulez" onclick="v(2202484, 0, 1); return '
              'false;">+</a> <span id="v2202484">|</span> <a '
              'href="/abyss/2202484/sux" onclick="v(2202484, 1, 1); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/abyss/2202484/bayan" '
              'onclick="v(2202484, 2, 1); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 14:42'
              #9#9'</div>'
              ''
              #9#9'<div>'#1080#1097#1091' '#1087#1072#1088#1085#1103' '#1085#1072' '#1076#1083#1080#1090#1077#1083#1100#1085#1099#1077' '
              #1086#1090#1085#1086#1096#1077#1085#1080#1103'<br>'#1074#1086#1079#1088#1072#1089#1090' 12 '#1083#1077#1090', '#1074' '#1090#1102#1084#1077#1085#1080'. '#1095#1090#1086#1073' '#1085#1077' '#1080#1079#1084#1077#1085#1103#1083', '#1080' '
              #1083#1102#1073#1080#1083' '#1084#1077#1085#1103'. '#1103' '#1092#1086#1085#1072#1090#1082#1072' '#1088#1072#1085#1077#1090#1086#1095#1077#1082'</div>'
              #9'</div>'#9#9' '
              #9' '
              #9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'2202652'
              #9#9#9#9#9#9'[ <a '
              'href="/abyss/2202652/rulez" onclick="v(2202652, 0, 1); return '
              'false;">+</a> <span id="v2202652">|</span> <a '
              'href="/abyss/2202652/sux" onclick="v(2202652, 1, 1); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/abyss/2202652/bayan" '
              'onclick="v(2202652, 2, 1); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 15:49'
              #9#9'</div>'
              #9#9'<div>morninggale<br>'#1043#1086#1089#1087#1086#1076#1080'..'#1085#1091' '#1095#1090#1086' '
              #1079#1072#1089#1090#1072#1074#1083#1103#1077#1090' '#1084#1086#1077#1075#1086' '#1073#1088#1072#1090#1072' '#1089#1086#1074#1072#1090#1100' '#1087#1072#1083#1100#1094#1099' '#1074' '#1076#1074#1077#1088#1100' '#1087#1077#1088#1077#1076' '#1090#1077#1084' '#1082#1072#1082' '#1077#1105' '
              #1079#1072#1082#1088#1099#1090#1100'..<br>IAM<br>'#1083#1102#1073#1086#1087#1099#1090#1089#1090#1074#1086'<br>morninggale<br>'#1058#1072#1082' '#1086#1085' '
              #1086#1088#1077#1090' '#1085#1072' '#1074#1077#1089#1100' '#1076#1086#1084' '#1087#1086#1090#1086#1084'..<br>IAM (15:48:31 2/02/2009)<br>'#1101#1090#1086' '#1086#1090' '
              #1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1077#1085#1080#1103' '#1083#1102#1073#1086#1087#1099#1090#1089#1090#1074#1072'<br>morninggale (15:49:26 '
              '2/02/2009)<br>'#1040#1075#1072'..'#1080' '#1087#1072#1083#1100#1094#1099' '#1089#1080#1085#1080#1077'..<br>'#1054#1090' '#1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1077#1085#1080#1103' '#1087#1086' '
              #1084#1086#1077#1084#1091' '#1090#1086#1083#1100#1082#1086' '#1076#1077#1074#1086#1095#1082#1080' '#1085#1077#1082#1086#1090#1086#1088#1099#1077' '#1086#1088#1091#1090'..'#1072' '#1086#1090' '#1083#1102#1073#1086#1087#1099#1090#1089#1090#1074#1072'-'#1073#1088#1072#1074#1099#1077' '
              #1088#1072#1079#1074#1077#1076#1095#1080#1082#1080' '#1087#1088#1080' '#1087#1099#1090#1082#1072#1093'</div>'
              #9'</div>'#9#9' '
              #9' '
              #9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'2201702'
              #9#9#9#9#9#9'[ <a '
              'href="/abyss/2201702/rulez" onclick="v(2201702, 0, 1); return '
              'false;">+</a> <span id="v2201702">|</span> <a '
              'href="/abyss/2201702/sux" onclick="v(2201702, 1, 1); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/abyss/2201702/bayan" '
              'onclick="v(2201702, 2, 1); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 07:53'
              #9#9'</div>'
              #9#9'<div>&lt;Kaltmann&gt; '#1059' '#1085#1072#1089' '#1077#1089#1090#1100' '#1086#1090#1076#1077#1083' '#1045#1048#1062' '
              '('#1077#1076#1080#1085#1099#1081' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1099#1081' '#1094#1077#1085#1090#1088'), '#1089' '#1095#1077#1084' '#1089#1074#1103#1079#1072#1085' '#1087#1086#1089#1090#1086#1103#1085#1085#1099#1081' '
              #1088#1078#1072#1095'. '#1042#1086#1090', '#1085#1072#1087#1088#1080#1084#1077#1088', '#1089#1077#1081#1095#1072#1089' '#1087#1086' '#1090#1077#1083#1077#1092#1086#1085#1091': &quot;'#1059' '#1090#1077#1073#1103' '#1077#1089#1090#1100' '
              #1088#1091#1083#1077#1090#1082#1072'? '#1048#1079#1084#1077#1088#1100', '#1087#1086#1078#1072#1083#1091#1081#1089#1090#1072', '#1088#1072#1089#1089#1090#1086#1103#1085#1080#1077' '#1086#1090' '#1045#1048#1062' '#1076#1086' '
              #1089#1090#1077#1085#1099'&quot;. '#1055#1086' '#1090#1077#1083#1077#1092#1086#1085#1091' '#1079#1074#1091#1095#1080#1090' '#1074#1077#1083#1080#1082#1086#1083#1077#1087#1085#1086')</div>'
              ''
              #9'</div>'#9#9' '
              #9' '
              #9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'2201530'
              #9#9#9#9#9#9'[ <a '
              'href="/abyss/2201530/rulez" onclick="v(2201530, 0, 1); return '
              'false;">+</a> <span id="v2201530">|</span> <a '
              'href="/abyss/2201530/sux" onclick="v(2201530, 1, 1); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/abyss/2201530/bayan" '
              'onclick="v(2201530, 2, 1); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 02:49'
              #9#9'</div>'
              ''
              #9#9'<div>'#1082'<br>/*<br>'#1055#1086' '#1087#1086#1074#1086#1076#1091' '#1080#1083#1083#1102#1089#1090#1088#1080#1088#1086#1074#1072#1085#1085#1086#1081' '
              #1089#1090#1072#1090#1100#1080' &quot;'#1082#1072#1083'&quot; '#1074' '#1074#1080#1082#1080#1087#1077#1076#1080#1080':<br><br>'#1056#1091#1089#1089#1082#1080#1081' '#1087#1077#1088#1077#1074#1086#1076' '#1089' '
              #1095#1077#1096#1089#1082#1086#1075#1086' '#1085#1077#1084#1077#1094#1082#1086#1081' '#1089#1082#1072#1079#1082#1080' &quot;'#1055#1088#1086' '#1082#1088#1086#1090#1072', '#1082#1086#1090#1086#1088#1099#1081' '#1093#1086#1090#1077#1083' '
              #1091#1079#1085#1072#1090#1100', '#1082#1090#1086' '#1077#1084#1091' '#1085#1072#1082#1072#1082#1072#1083' '#1085#1072' '#1075#1086#1083#1086#1074#1091'&quot; - '#1072#1074#1090#1086#1088' '#1088#1072#1089#1089#1082#1072#1079#1099#1074#1072#1077#1090' '
              #1076#1077#1090#1103#1084' '#1086' '#1090#1086#1084', '#1082#1072#1082' '#1074#1099#1075#1083#1103#1076#1080#1090' '#1082#1072#1083' '#1088#1072#1079#1083#1080#1095#1085#1099#1093' '#1078#1080#1074#1086#1090#1085#1099#1093'.<br><br>'#1069#1090#1086' '
              #1085#1077' '#1096#1091#1090#1082#1072', '#1074' '#1090#1086#1081' '#1078#1077' '#1089#1090#1072#1090#1100#1077', '#1074#1085#1080#1079#1091', '#1089#1087#1080#1089#1086#1082' '#1083#1080#1090#1077#1088#1072#1090#1091#1088#1099'...'#1083#1102#1076#1080', '#1075#1076#1077' '
              #1101#1090#1091' '#1089#1082#1072#1079#1082#1091' '#1089#1082#1072#1095#1072#1090#1100'???<br>*/<br><br>'#1085#1072#1079#1074#1072#1085#1080#1077' '#1089#1082#1072#1079#1082#1080' '#1074' '#1074#1080#1082#1080' '
              #1077#1089#1083#1080' '#1090#1099' '#1085#1077' '#1079#1072#1084#1077#1090#1080#1083' '#1101#1090#1086' '#1089#1094#1099#1083#1082#1072','#1078#1084#1072#1082#1072#1081' '#1080' '#1085#1072#1089#1083#1072#1078#1076#1072#1081#1089#1103'(=</div>'
              #9'</div>'#9#9'<hr class="iq"> '
              ''
              '<div class="q"><div><script language='#39'JavaScript'#39' '
              
                'type='#39'text/javascript'#39' src='#39'http://lol.bash.org.ru/b/adx.js'#39'></s' +
                'cript>'
              '<script language='#39'JavaScript'#39' type='#39'text/javascript'#39'>'
              '<!--'
              '   if (!document.phpAds_used) document.phpAds_used = '#39','#39';'
              '   phpAds_random = new String (Math.random()); phpAds_random = '
              'phpAds_random.substring(2,11);'
              '   '
              '   document.write ("<" + "script language='#39'JavaScript'#39' '
              'type='#39'text/javascript'#39' src='#39'");'
              '   document.write ("http://lol.bash.org.ru/b/adjs.php?n=" + '
              'phpAds_random);'
              '   document.write ("&amp;what=zone:2");'
              '   document.write ("&amp;exclude=" + document.phpAds_used);'
              '   if (document.referrer)'
              
                '      document.write ("&amp;referer=" + escape(document.referrer' +
                '));'
              '   document.write ("'#39'><" + "/script>");'
              '//-->'
              
                '</script><noscript><a href='#39'http://lol.bash.org.ru/b/adclick.php' +
                '?n='#39' '
              'target='#39'_blank'#39'><img '
              'src='#39'http://lol.bash.org.ru/b/adview.php?what=zone:2&amp;n='#39' '
              
                'border='#39'0'#39' alt='#39#39'></a></noscript></div></div><div class="q"><div' +
                ' '
              
                'style="text-align: center; font-size: 10pt;">'#1058#1099' - '#1087#1088#1086#1075#1088#1072#1084#1084#1080#1089#1090' '#1080#1083 +
                #1080' '
              #1089#1080#1089#1090#1077#1084#1085#1099#1081' '#1072#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088'? '#1056#1072#1073#1086#1090#1072#1077#1096#1100' '#1089' Windows? '#1058#1086#1075#1076#1072' '#1090#1077#1073#1077' '
              #1073#1091#1076#1077#1090' '#1080#1085#1090#1077#1088#1077#1089#1077#1085' <a '
              
                'href="http://bash.org.ru/gogogo/10200">http://www.techdays.ru/</' +
                'a'
              '> - '#1090#1072#1084' '#1090#1099' '#1089#1084#1086#1078#1077#1096#1100' '#1085#1072#1081#1090#1080' '#1074#1080#1076#1077#1086#1076#1086#1082#1083#1072#1076#1099' '#1080' '#1087#1086#1091#1095#1072#1089#1090#1074#1086#1074#1072#1090#1100' '#1074' '
              #1089#1077#1084#1080#1085#1072#1088#1072#1093' '#1087#1086' '#1074#1089#1077#1084' '#1085#1086#1074#1099#1084' '#1090#1077#1093#1085#1086#1083#1086#1075#1080#1103#1084' '#1080' '#1089#1080#1089#1090#1077#1084#1072#1084', '
              #1087#1088#1077#1076#1083#1072#1075#1072#1077#1084#1099#1084' Microsoft!</div></div> '
              #9' '
              #9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'2203174'
              #9#9#9#9#9#9'[ <a '
              'href="/abyss/2203174/rulez" onclick="v(2203174, 0, 1); return '
              'false;">+</a> <span id="v2203174">|</span> <a '
              'href="/abyss/2203174/sux" onclick="v(2203174, 1, 1); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/abyss/2203174/bayan" '
              'onclick="v(2203174, 2, 1); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 19:26'
              #9#9'</div>'
              #9#9'<div>Amss: '#1089#1090#1086#1102' '#1085#1077#1076#1072#1074#1085#1086' '#1074#1086#1079#1083#1077' '#1084#1077#1090#1088#1086', '#1082#1091#1088#1102' ... '
              #1089#1083#1099#1096#1091' '#1082#1072#1082' '#1076#1074#1072' '#1090#1080#1087#1080#1095#1085#1099#1093' '#1073#1099#1076#1083#1086'-'#1084#1091#1076#1072#1082#1072' '#1088#1078#1091#1090' '#1085#1072#1076' '#1085#1072#1088#1086#1076#1086#1084', '
              #1082#1086#1090#1086#1088#1099#1081' '#1077#1083#1077' '#1080#1076#1077#1090' '#1087#1086' '#1075#1086#1083#1086#1083#1077#1076#1091' ... '#1085#1091' '#1074#1086#1086#1073#1097#1077#1084' '#1084#1080#1085#1091#1090#1099' '#1095#1077#1088#1077#1079' '#1076#1074#1077' '
              #1088#1077#1096#1080#1083#1080' '#1086#1085#1080' '#1095#1077#1090' '#1082#1091#1087#1080#1090#1100' '#1074' '#1083#1072#1088#1100#1082#1077' '#1085#1072#1087#1088#1086#1090#1080#1074', '#1089#1080#1085#1093#1088#1086#1085#1085#1086' '#1076#1077#1083#1072#1102#1090' '
              #1096#1072#1075', '#1089#1080#1085#1093#1088#1086#1085#1085#1086' '#1087#1086#1076#1089#1082#1072#1083#1100#1079#1099#1074#1072#1102#1090#1089#1103' '#1080' '#1087#1072#1076#1072#1102#1090'))))) '#1074' '#1078#1080#1079#1085#1080' '#1090#1072#1082' '
              #1079#1083#1086#1088#1072#1076#1085#1086' '#1085#1077' '#1088#1078#1072#1083'))))))</div>'
              #9'</div>'#9#9' '
              #9' '
              #9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'2200762'
              #9#9#9#9#9#9'[ <a '
              'href="/abyss/2200762/rulez" onclick="v(2200762, 0, 1); return '
              'false;">+</a> <span id="v2200762">|</span> <a '
              'href="/abyss/2200762/sux" onclick="v(2200762, 1, 1); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/abyss/2200762/bayan" '
              'onclick="v(2200762, 2, 1); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-01 20:52'
              #9#9'</div>'
              #9#9'<div>xxx: '#1071' '#1090#1077#1073#1077' '#1077#1097#1077' '#1088#1072#1079' '#1087#1086#1074#1090#1086#1088#1103#1102' '#1084#1099' '
              #1087#1088#1086#1080#1079#1086#1096#1083#1080' '#1086#1090' '#1073#1086#1075#1072'!!!<br>yyy: '#1040#1073#1089#1086#1083#1102#1090#1085#1086' '#1089' '#1090#1086#1073#1086#1081' '#1089#1086#1075#1083#1072#1089#1077#1085'! '#1053#1077#1090' '
              #1073#1086#1075#1072' '#1082#1088#1086#1084#1077' '#1045#1089#1090#1077#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1086#1090#1073#1086#1088#1072' '#1080' '#1044#1072#1088#1074#1080#1085' '#1087#1088#1086#1088#1086#1082' '#1077#1075#1086'!</div>'
              #9'</div>'#9#9' '
              #9' '
              #9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'2203029'
              #9#9#9#9#9#9'[ <a '
              'href="/abyss/2203029/rulez" onclick="v(2203029, 0, 1); return '
              'false;">+</a> <span id="v2203029">|</span> <a '
              'href="/abyss/2203029/sux" onclick="v(2203029, 1, 1); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/abyss/2203029/bayan" '
              'onclick="v(2203029, 2, 1); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 18:28'
              #9#9'</div>'
              #9#9'<div>'#1050'<br>'#1050'<br><br>45998 ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' '
              '2009-02-01 '#1074' 16:50)<br>4 '#1076#1077#1082#1072#1073#1088#1103' 2008 '#1075'.: '#1042#1083#1072#1076#1080#1084#1080#1088' '#1055#1091#1090#1080#1085': '
              #1076#1077#1074#1072#1083#1100#1074#1072#1094#1080#1080' '#1088#1091#1073#1083#1103' '#1074' '#1056#1086#1089#1089#1080#1080' '#1085#1077' '#1073#1091#1076#1077#1090'<br>19 '#1103#1085#1074#1072#1088#1103' 2009 '#1075'.: '
              #1042#1083#1072#1076#1080#1084#1080#1088' '#1055#1091#1090#1080#1085' '#1088#1072#1079#1098#1103#1089#1085#1080#1083' '#1087#1088#1080#1095#1080#1085#1099' '#1076#1077#1074#1072#1083#1100#1074#1072#1094#1080#1080' '#1088#1091#1073#1083#1103'<br>27 '
              #1103#1085#1074#1072#1088#1103' 2009 '#1075'.: '#1042#1083#1072#1076#1080#1084#1080#1088' '#1055#1091#1090#1080#1085' '#1089#1095#1080#1090#1072#1077#1090' '#1076#1077#1074#1072#1083#1100#1074#1072#1094#1080#1102' '#1087#1086#1083#1077#1079#1085#1086#1081' '
              #1084#1077#1088#1086#1081'<br>...<br>15 '#1092#1077#1074#1088#1072#1083#1103' 2009 '#1075'.: '#1042#1083#1072#1076#1080#1084#1080#1088' '#1055#1091#1090#1080#1085': '
              #1076#1077#1074#1072#1083#1100#1074#1072#1094#1080#1080' '#1088#1091#1073#1083#1103' '#1074' '#1056#1086#1089#1089#1080#1080' '#1085#1077' '
              #1073#1099#1083#1086'<br>================================================'
              '====<br>'#1081#1072' '#1095#1086#1090' '#1085#1077' '#1084#1072#1085#1080#1084#1072#1102', '#1085#1086' '#1076#1072#1090#1072' '#1094#1080#1090#1072#1090#1099' 1 '#1092#1077#1074#1088#1072#1083#1103' 2009 '
              #1075'.<br>==================================================='
              '=<br>'#1040#1074#1090#1086#1088' '#1094#1080#1090#1072#1090#1099' '#1082#1072#1082' '#1073#1099' '#1087#1088#1077#1076#1087#1086#1083#1072#1075#1072#1077#1090', '#1095#1090#1086' '#1087#1088#1086#1080#1079#1086#1081#1076#1077#1090' '#1074' '
              #1073#1091#1076#1091#1102#1097#1077#1084', '#1080#1084#1077#1085#1085#1086' '#1076#1083#1103' '#1101#1090#1086#1075#1086' '#1086#1085' '#1089#1090#1072#1074#1080#1090' '#1089#1080#1084#1074#1086#1083' &quot;...&quot; '
              '('#1084#1085#1086#1075#1086#1090#1086#1095#1080#1077'), '#1074' '#1076#1072#1085#1085#1086#1084' '#1082#1086#1085#1090#1077#1082#1089#1090#1077' '#1089#1080#1084#1074#1086#1083#1080#1079#1080#1088#1091#1102#1097#1080#1081' '#1087#1088#1086#1096#1077#1089#1090#1074#1077#1077' '
              #1086#1087#1088#1077#1076#1077#1083#1077#1085#1085#1086#1075#1086' '#1074#1088#1077#1084#1077#1085#1080'. '#1058#1072#1082#1086#1081' '#1087#1088#1080#1077#1084' '#1074#1087#1077#1088#1074#1099#1077' '#1073#1099#1083' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085' '
              #1074' '#1092#1088#1072#1085#1094#1091#1079#1089#1082#1086#1081' '#1083#1080#1090#1077#1088#1072#1090#1091#1088#1077' XVIII ('#1074#1086#1089#1077#1084#1085#1072#1076#1094#1072#1090#1086#1075#1086') '#1074#1077#1082#1072', '#1087#1086#1089#1083#1077' '
              #1095#1077#1075#1086' '#1087#1088#1080#1086#1073#1088#1077#1083' '#1086#1075#1088#1086#1084#1085#1077#1081#1096#1091#1102' '#1087#1086#1087#1091#1083#1103#1088#1085#1086#1089#1090#1100' '#1080' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1090#1089#1103' '#1087#1086' '
              #1089#1077#1081' '#1076#1077#1085#1100' '#1084#1085#1086#1078#1077#1089#1090#1074#1086#1084' '#1087#1080#1089#1072#1090#1077#1083#1077#1081'.<br><br>'#1057#1084'. '
              #1087#1088#1080#1084#1077#1088':<br><br>...<br>'#1040' '#1087#1086#1091#1090#1088#1091' '#1086#1085#1080' '
              #1087#1088#1086#1089#1085#1091#1083#1080#1089#1100'.<br><br>'#1058#1072#1082'-'#1090#1086'!<br><br>======================<br>'
              #1050#1072#1087#1080#1090#1072#1085' '#1054#1095#1077#1074
              #1080#1076#1085#1086#1089#1090#1100'! '#1040' '#1103' '#1076#1091#1084#1072#1083' '#1090#1099' '#1087#1086#1084#1077#1088'!</div>'
              ''
              #9'</div>'#9#9' '
              #9' '
              #9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'2201832'
              #9#9#9#9#9#9'[ <a '
              'href="/abyss/2201832/rulez" onclick="v(2201832, 0, 1); return '
              'false;">+</a> <span id="v2201832">|</span> <a '
              'href="/abyss/2201832/sux" onclick="v(2201832, 1, 1); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/abyss/2201832/bayan" '
              'onclick="v(2201832, 2, 1); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 10:03'
              #9#9'</div>'
              ''
              #9#9'<div>'#1054#1073#1098#1103#1074#1072' '#1085#1072' '#1092#1086#1088#1091#1084#1077':<br>&quot;'#1055#1088#1086#1076#1072#1084' '
              #1072#1082#1091#1089#1090#1080#1095#1077#1089#1082#1091#1102' '#1075#1080#1090#1072#1088#1091' &quot;'#1083#1077#1085#1080#1085#1075#1088#1072#1076#1082#1072'&quot; '#1073#1077#1079' '#1082#1086#1083#1082#1072' - '#1079#1072' 6000 '
              #1090#1077#1085#1075#1077'. '#1084#1086#1075#1091' '#1087#1086#1089#1090#1072#1074#1080#1090#1100' '#1082#1086#1083#1086#1082' '#1080' '#1087#1088#1086#1076#1072#1090#1100' '#1079#1072' 8000 '#1090#1077#1085#1075#1077' - '#1087#1088#1086#1089#1090#1086' '
              #1083#1077#1085#1100' &quot;</div>'
              #9'</div>'#9#9' '
              #9' '
              #9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'2200861'
              #9#9#9#9#9#9'[ <a '
              'href="/abyss/2200861/rulez" onclick="v(2200861, 0, 1); return '
              'false;">+</a> <span id="v2200861">|</span> <a '
              'href="/abyss/2200861/sux" onclick="v(2200861, 1, 1); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/abyss/2200861/bayan" '
              'onclick="v(2200861, 2, 1); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-01 21:42'
              #9#9'</div>'
              #9#9'<div>VP (21:10:35 1/02/2009)<br>'#1085#1072#1089#1090#1100', '#1087#1088#1080#1074#1077#1090', '
              #1089#1083#1091#1096#1072#1081', '#1091' '#1085#1072#1089' '#1085#1072' '#1091#1095#1077#1073#1085#1080#1082#1077' '#1087#1086' '#1092#1080#1079#1080#1082#1077' '#1094#1080#1092#1088#1072' 10 '#1080#1083#1080' '
              '11?)<br><br>nastya91072 (21:12:14 1/02/2009)<br>11<br><br>VP '
              '(21:12:25 1/02/2009)<br>'#1073#1083#1103#1090#1100')'#1091' '#1084#1077#1085#1103' 10)<br><br>nastya91072 '
              '(21:12:36 1/02/2009)<br>'#1093#1072#1093#1072#1093#1072#1093#1072'<br><br>VP (21:13:03 '
              '1/02/2009)<br>'#1101#1090#1086' '#1085#1072#1079#1099#1074#1072#1077#1090#1089#1103' &quot;'#1087#1086#1089#1084#1086#1090#1088#1080' '#1074' '#1092#1077#1074#1088#1072#1083#1077' 11'#1075#1086' '
              #1082#1083#1072#1089#1089#1072' '#1085#1072' '#1091#1095#1077#1073#1085#1080#1082' '#1092#1080#1079#1080#1082#1080' '#1074' '#1087#1077#1088#1074#1099#1081' '#1088#1072#1079'&quot;</div>'
              #9'</div>'#9#9' '
              #9'<hr class="iq"> '
              ''
              '<div class="q"><div><center><iframe '
              'src="http://lol.bash.org.ru/_ad.php?zone=zone:3" '
              'allowtransparency="true" style="background-color:#f3f3f3;" '
              'width="600" height="90" marginwidth="0" marginheight="0" '
              'scrolling="no" frameborder="0" name="ctf" '
              'id="ctf"></iframe></center></div></div> '
              #9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'2202051'
              #9#9#9#9#9#9'[ <a '
              'href="/abyss/2202051/rulez" onclick="v(2202051, 0, 1); return '
              'false;">+</a> <span id="v2202051">|</span> <a '
              'href="/abyss/2202051/sux" onclick="v(2202051, 1, 1); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/abyss/2202051/bayan" '
              'onclick="v(2202051, 2, 1); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 11:46'
              #9#9'</div>'
              ''
              #9#9'<div>'#1044#1080#1081#1082#1089#1090#1088#1072':<br>'#1079#1072#1089#1090#1072#1074#1080#1083#1072' '#1089#1077#1073#1103' '
              #1091#1073#1080#1088#1072#1090#1100#1089#1103'?<br>'#1047#1083#1086#1081' '#1076#1088#1091#1080#1076':<br>'#1091#1075#1091'. '#1085#1072' '#1089#1090#1086#1083#1077'<br>'#1047#1083#1086#1081' '
              #1076#1088#1091#1080#1076':<br>'#1074#1086#1090' '#1101#1090#1086' '#1075#1088#1103#1079#1080'!!!!!<br>'#1044#1080#1081#1082#1089#1090#1088#1072':<br>'#1101#1090#1086' '#1089#1072#1084#1086#1077' '#1089#1090#1088#1072#1096#1085#1086#1077' '
              #1091' '#1090#1077#1073#1103' '#1085#1072' '#1089#1090#1086#1083#1077'<br>'#1047#1083#1086#1081' '#1076#1088#1091#1080#1076':<br>'#1072' '#1077#1097#1105' '#1103' '#1093#1086#1095#1091' '#1082#1083#1072#1074#1091' '#1088#1072#1079#1086#1073#1088#1072#1090#1100' '
              #1080' '#1087#1086#1095#1090#1080#1090#1100'... '#1050#1085#1086#1087#1082#1080' '#1087#1083#1086#1093#1086' '#1085#1072#1078#1080#1084#1072#1090#1100#1089#1103' '
              #1089#1090#1072#1083#1080'<br>'#1044#1080#1081#1082#1089#1090#1088#1072':<br>'#1087#1086#1095#1090#1080#1090#1100' '#1082#1083#1072#1074#1091'... '#1085#1076#1072'<br>'#1047#1083#1086#1081' '
              #1076#1088#1091#1080#1076':<br>'#1087#1086#1095#1080#1089#1090#1080#1090#1100'*</div>'
              #9'</div>'#9#9' '
              #9' '
              #9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'2202212'
              #9#9#9#9#9#9'[ <a '
              'href="/abyss/2202212/rulez" onclick="v(2202212, 0, 1); return '
              'false;">+</a> <span id="v2202212">|</span> <a '
              'href="/abyss/2202212/sux" onclick="v(2202212, 1, 1); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/abyss/2202212/bayan" '
              'onclick="v(2202212, 2, 1); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 13:01'
              #9#9'</div>'
              #9#9'<div>'#1051#1048#1040#1053#1054'4'#1082#1072': '#1040' '#1090#1099' '#1086#1090#1082#1091#1076#1072'?<br>'#1040#1079#1080#1082#1086': '#1089' '
              #1050#1099#1088#1075#1099#1079#1089#1090#1072#1085#1072'<br>'#1051#1048#1040#1053#1054'4'#1082#1072': '#1040' '#1089#1090#1088#1072#1085#1072'?<br>'#1040#1079#1080#1082#1086': '
              #1041#1080#1096#1082#1077#1082'<br>'#1051#1048#1040#1053#1054'4'#1082#1072': '#1054#1075#1086'</div>'
              ''
              #9'</div>'#9#9' '
              #9' '
              #9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'2202973'
              #9#9#9#9#9#9'[ <a '
              'href="/abyss/2202973/rulez" onclick="v(2202973, 0, 1); return '
              'false;">+</a> <span id="v2202973">|</span> <a '
              'href="/abyss/2202973/sux" onclick="v(2202973, 1, 1); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/abyss/2202973/bayan" '
              'onclick="v(2202973, 2, 1); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 18:01'
              #9#9'</div>'
              ''
              #9#9'<div>RE:<br><br>46012 ('#1089#1086#1093#1088#1072#1085#1077#1085#1072' 2009-02-01 '
              #1074' 18:45)<br>'#1074' '#1092#1080#1083#1086#1089#1086#1092#1089#1082#1086#1081' '#1095#1072#1089#1090#1080' '#1073#1072#1096#1072' '#1077#1097#1077' '#1085#1077' '#1087#1086#1076#1085#1080#1084#1072#1083#1089#1103' '
              #1074#1086#1087#1088#1086#1089' '#1074#1085#1077#1096#1085#1086#1089#1090#1080' '#1073#1072#1088#1099#1096#1077#1085#1100' '#1089#1086#1074#1088#1077#1084#1077#1085#1085#1099#1093'. '#1074#1087#1088#1086#1095#1077#1084' '#1082#1072#1082' '#1080' '
              #1102#1085#1086#1096#1077#1081'. '#1044#1077#1083#1086' '#1074' '#1095#1077#1084'. '#1053#1099#1085#1095#1077' '#1086#1095' '#1087#1086#1087#1091#1083#1103#1088#1085#1086' '#1093#1086#1076#1080#1090#1100' '#1074' '#1102#1073#1086#1095#1082#1077', '
              #1082#1086#1090#1086#1088#1091#1102' '#1087#1088#1086#1097#1077' '#1085#1072#1079#1074#1072#1090#1100' '#1086#1090#1089#1091#1090#1089#1090#1074#1080#1077#1084' '#1086#1085#1086#1081'. '#1074#1085#1077' '#1079#1072#1074#1080#1089#1080#1084#1086#1089#1090#1080' '#1086#1090' '
              #1087#1086#1075#1086#1076#1099'. '#1080' '#1082#1086#1083#1075#1086#1090#1082#1080'. '#1076#1077#1085' 15. '#1041#1072#1088#1099#1096#1085#1080', '#1082#1086#1090#1086#1088#1099#1081' '#1090#1072#1082' '#1086#1076#1077#1074#1072#1102#1090#1089#1103' '#1074' '
              '-10 '#1080#1083#1080' '#1076#1072#1078#1077' '#1087#1088#1080' '#1073#1086#1083#1077#1077' '#1093#1086#1083#1086#1076#1085#1086#1081' '#1087#1086#1075#1086#1076#1077' '#1079#1072' '#1073#1086#1088#1090#1086#1084'. '
              #1055#1056#1054#1044#1054#1051#1046#1040#1049#1058#1045' '#1042' '#1058#1054#1052' '#1046#1045' '#1044#1059#1061#1045'. '#1077#1089#1083#1080' '#1074#1099' '#1074#1089#1077' '#1079#1072#1088#1072#1073#1086#1090#1072#1077#1090#1077' '
              #1089#1077#1073#1077' '#1090#1072#1082#1080#1084' '#1086#1073#1088#1072#1079#1086#1084' '#1073#1077#1089#1087#1083#1086#1076#1080#1077' - '#1074' '#1089#1083#1077#1076#1091#1102#1097#1077#1084' '#1087#1086#1082#1086#1083#1077#1085#1080#1080' '#1073#1091#1076#1077#1090' '
              #1084#1077#1085#1100#1096#1077' '#1084#1086#1088#1072#1083#1100#1085#1099#1093' '#1091#1088#1086#1076#1086#1074' =)<br>'#1072' '#1102#1085#1086#1096#1072#1084', '#1085#1077' '#1085#1086#1089#1103#1097#1080#1084' '
              #1087#1086#1076#1096#1090#1072#1085#1085#1080#1082#1080' ,'#1080#1073#1086' '#1085#1077' '#1084#1086#1076#1085#1099#1077' - '#1090#1086#1090' '#1078#1077' '#1089#1086#1074#1077#1090'. '#1095#1077#1084' '#1074#1099#1096#1077' '#1087#1088#1086#1094#1077#1085#1090' '
              #1084#1072#1083#1100#1095#1080#1082#1086#1074' '#1073#1077#1079' '#1084#1086#1079#1075#1086#1074' '#1089' '#1085#1077#1089#1090#1086#1103#1095#1082#1086#1081' - '#1090#1077#1084' '#1084#1077#1085#1100#1096#1077' '#1080#1076#1080#1086#1090#1086#1074' '#1074#1099' '
              #1085#1072#1088#1086#1076#1080#1090#1077'. =)))<br><br>'#1081#1072' '#1074#1085#1077#1089#1083#1072' '#1089#1074#1086#1081' '#1074#1082#1083#1072#1076' '#1074' '#1079#1072#1089#1086#1088#1077#1085#1080#1077' '#1073#1072#1096#1072'. '
              
                #1084#1086#1078#1085#1086' '#1091#1084#1080#1088#1072#1090#1100'.<br>------------------------------------<br>'#1052#1072#1083#1072#1076#1077 +
                #1094'! '#1041#1040#1064' - '#1101#1090#1086' '
              #1094#1080#1090#1072#1090#1085#1080#1082', '#1072' '#1085#1077' '#1092#1083#1091#1076#1080#1083#1100#1085#1103'. '#1059#1084#1088#1080' '#1080' '#1076#1072#1081' '#1078#1080#1090#1100' '#1072#1092#1092#1090#1072#1088#1072#1084'. '#1048' '
              #1075#1077#1085#1086#1092#1086#1085#1076' '#1087#1086#1095#1080#1089#1090#1080#1094#1094#1086'...</div>'
              #9'</div>'#9#9' '
              #9' '
              #9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'2200751'
              #9#9#9#9#9#9'[ <a '
              'href="/abyss/2200751/rulez" onclick="v(2200751, 0, 1); return '
              'false;">+</a> <span id="v2200751">|</span> <a '
              'href="/abyss/2200751/sux" onclick="v(2200751, 1, 1); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/abyss/2200751/bayan" '
              'onclick="v(2200751, 2, 1); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-01 20:44'
              #9#9'</div>'
              #9#9'<div>'#1087#1088#1080#1074#1077#1090'<br>'#1087#1088'<br>'#1090#1088#1072#1092#1080#1082' '#1101#1082#1086#1085#1086#1084#1080#1096' '
              ':)<br>'#1076'<br>:)<br>:)<br></div>'
              #9'</div>'#9#9' '
              #9' '
              #9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              ''
              #9#9#9'2202274'
              #9#9#9#9#9#9'[ <a '
              'href="/abyss/2202274/rulez" onclick="v(2202274, 0, 1); return '
              'false;">+</a> <span id="v2202274">|</span> <a '
              'href="/abyss/2202274/sux" onclick="v(2202274, 1, 1); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/abyss/2202274/bayan" '
              'onclick="v(2202274, 2, 1); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 13:23'
              #9#9'</div>'
              #9#9'<div>'#1093#1093#1093': '#1053#1091' '#1082#1072#1082' '#1090#1077#1073#1077' '#1084#1086#1081' '#1087#1086#1076#1075#1086#1085' '#1087#1086' '#1087#1086#1074#1086#1076#1091' '
              #1087#1086#1076#1079#1072#1088#1072#1073#1086#1090#1072#1090#1100'? '#1047#1072#1087#1083#1072#1090#1080#1083#1080'?<br>yyy: '#1057#1083#1091#1096#1072#1081', '#1072' '#1095#1077#1084' '#1086#1085#1080' '
              #1079#1072#1085#1080#1084#1072#1102#1090#1089#1103'? '#1071' '#1053#1045#1044#1045#1051#1070' '#1091' '#1085#1080#1093' '#1087#1088#1086#1089#1080#1076#1077#1083', '#1053#1054' '#1058#1040#1050' '#1048' '#1053#1045' '
              #1055#1054#1053#1071#1051'!!! '#1069#1090#1086' '#1087#1088#1086#1089#1090#1086' '#1087#1087#1094' '#1082#1072#1082#1086#1081'-'#1090#1086'!<br>'#1093#1093#1093': ?????<br>yyy: '#1055#1088#1080#1096#1105#1083' '
              #1074' '#1082#1072#1085#1090#1086#1088#1091' '#1090#1072#1084' 5 '#1087#1077#1088#1089#1086#1074' '#1089#1080#1076#1080#1090', '#1087#1086#1079#1085#1072#1082#1086#1084#1080#1083#1089#1103', '#1086#1082#1072#1079#1072#1083#1086#1089#1100' '#1091' '#1085#1080#1093' '
              #1090#1072#1084' '#1074#1089#1077' '#1076#1080#1088#1077#1082#1090#1086#1088#1072' - '#1075#1077#1085'.'#1076#1080#1088#1077#1082#1090#1086#1088', '#1092#1080#1085#1072#1085#1089#1086#1074#1099#1081', '#1090#1077#1093#1085#1080#1095#1077#1089#1082#1080#1081', '
              #1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1077#1085#1085#1099#1081' '#1080' '#1087#1086' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080'......<br>yyy: '#1055#1088#1080#1082#1086#1083#1100#1085#1086' '
              #1073#1099#1083#1086' '#1082' '#1085#1080#1084' '#1085#1072' '#1088#1072#1073#1086#1090#1091' '#1087#1088#1080#1093#1086#1076#1080#1090#1100', '#1086#1085#1080' '#1074#1077#1089#1100' '#1076#1077#1085#1100' '#1089#1080#1076#1077#1083#1080' '#1074' '#1086#1076#1085#1086#1084' '
              #1082#1072#1073#1080#1085#1077#1090#1077' '#1080' '#1088#1072#1079#1075#1072#1076#1099#1074#1072#1083#1080' '#1082#1088#1086#1089#1089#1074#1086#1088#1076' '#1080' '#1082#1091#1088#1080#1083#1080', '#1103' '#1085#1077#1076#1077#1083#1102' '#1089' '#1085#1080#1084#1080' '
              #1087#1088#1086#1089#1080#1076#1077#1083', '#1085#1086' '#1090#1072#1082' '#1080' '#1085#1077' '#1087#1086#1085#1103#1083' '#1082#1090#1086' '#1080#1079' '#1085#1080#1093' '#1079#1072' '#1095#1090#1086' '#1086#1090#1074#1077#1095#1072#1077#1090'! '
              #1058#1077#1093#1085#1080#1095#1077#1089#1082#1080#1084' '#1073#1099#1083' '#1085#1072#1074#1077#1088#1085#1086' '#1090#1086#1090' '#1082#1090#1086' '#1087#1088#1080#1085#1086#1089#1080#1083' '#1082#1088#1086#1089#1089#1074#1086#1088#1076', '#1090#1086#1090' '#1082#1090#1086' '
              #1087#1080#1089#1072#1083' '#1073#1099#1083' '#1074#1080#1076#1080#1084#1086' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1077#1085#1085#1099#1084', '#1092#1080#1085#1072#1085#1089#1086#1074#1099#1081' '#1090#1086#1090' '#1082#1090#1086' '
              #1076#1077#1085#1100#1075#1080' '#1089#1086#1073#1080#1088#1072#1083' '#1089#1086' '#1074#1089#1077#1093' '#1085#1072' '#1085#1086#1074#1099#1077' '#1080' '#1086#1090#1076#1072#1074#1072#1083' '#1090#1077#1093#1085#1080#1095#1077#1089#1082#1086#1084#1091', '#1072' '#1087#1086' '
              #1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080' '#1085#1072#1074#1077#1088#1085#1086' '#1090#1086#1090' '#1082#1090#1086' '#1087#1077#1087#1077#1083#1100#1085#1080#1094#1099' '#1087#1086#1089#1090#1086#1103#1085#1085#1086' '
              #1074#1099#1082#1080#1076#1099#1074#1072#1083', '#1072' '#1075#1077#1085#1077#1088#1072#1083#1100#1085#1099#1084' '#1090#1086#1090' '#1082#1090#1086' '#1089#1080#1076#1077#1083' '#1080' '#1085#1080#1082#1091#1103' '#1085#1077' '#1076#1077#1083#1072#1083' '#1080' '#1085#1080' '
              #1079#1072' '#1095#1090#1086' '#1085#1077' '#1086#1090#1074#1077#1095#1072#1083' !</div>'
              ''
              #9'</div>'#9#9' '
              #9' '
              #9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'2200801'
              #9#9#9#9#9#9'[ <a '
              'href="/abyss/2200801/rulez" onclick="v(2200801, 0, 1); return '
              'false;">+</a> <span id="v2200801">|</span> <a '
              'href="/abyss/2200801/sux" onclick="v(2200801, 1, 1); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/abyss/2200801/bayan" '
              'onclick="v(2200801, 2, 1); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-01 21:11'
              #9#9'</div>'
              ''
              #9#9'<div>'#1085#1072' '#1090#1077#1084#1091' '#1078#1077#1085#1089#1082#1086#1081' '#1083#1086#1075#1080#1082#1077','#1087#1088#1086' '#1076#1080#1085#1086#1079#1072#1074#1088#1072' '#1080' '
              '% '#1074#1089#1090#1088#1077#1095#1080' '#1089' '#1085#1080#1084'.<br>'#1057#1087#1088#1086#1089#1080#1083' '#1091' '#1089#1074#1086#1077#1081' '#1082#1072#1082#1086#1081' '#1096#1072#1085#1089' '#1074#1089#1090#1088#1077#1095#1080' '#1091' '#1085#1077#1105' '#1089' '
              #1076#1080#1085#1086#1079#1072#1074#1088#1086#1084',<br>'#1086#1090#1074#1077#1090#1080#1083#1072' 0%.........'#1087#1086#1090#1086#1084' '#1076#1086#1073#1072#1074#1080#1083#1072' '#1095#1090#1086' '#1079#1080#1084#1086#1081' '#1074' '
              #1084#1086#1089#1082#1074#1077'<br>'#1076#1080#1085#1086#1079#1072#1074#1088#1099' '#1085#1077' '#1074#1086#1076#1102#1090#1089#1103'....</div>'
              #9'</div>'#9#9' '
              #9' '
              #9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'2202894'
              #9#9#9#9#9#9'[ <a '
              'href="/abyss/2202894/rulez" onclick="v(2202894, 0, 1); return '
              'false;">+</a> <span id="v2202894">|</span> <a '
              'href="/abyss/2202894/sux" onclick="v(2202894, 1, 1); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/abyss/2202894/bayan" '
              'onclick="v(2202894, 2, 1); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 17:31'
              #9#9'</div>'
              #9#9'<div>22:31:50] '#1052#1091'3'#1072': '#1103' '#1074#1086#1090' '#1085#1072#1096#1083#1072' '#1091#1078#1077' '#1087#1072#1088#1085#1103' '
              #1073#1083#1080#1079#1082#1086#1075#1086' '#1084#1085#1077' '#1087#1086' '#1076#1091#1093#1091'..'#1085#1086' '#1086#1085' '#1078#1080#1074#1077#1090' '#1074' '#1042#1086#1083#1075#1086#1075#1088#1072#1076#1077'..'#1082#1072#1082#1072#1103' '
              #1076#1086#1089#1072#1076#1072'<br>[22:32:28] Encento: '#1072' '#1103' '#1085#1072#1096#1077#1083' '#1089#1077#1073#1077' '#1076#1077#1074#1091#1096#1082#1091', '#1073#1083#1080#1079#1082#1091#1102' '
              #1074#1086' '#1074#1089#1077#1093' '#1089#1084#1099#1089#1083#1072#1093', '#1085#1086' '#1086#1085#1072' '#1073#1072#1089#1089'-'#1075#1080#1090#1072#1088#1072', '#1090#1086#1078#1077' '#1085#1077#1087#1088#1080#1103#1090#1085#1086#1089#1090#1100'))</div>'
              #9'</div>'#9#9' '
              #9' '
              #9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'2203143'
              #9#9#9#9#9#9'[ <a '
              'href="/abyss/2203143/rulez" onclick="v(2203143, 0, 1); return '
              'false;">+</a> <span id="v2203143">|</span> <a '
              'href="/abyss/2203143/sux" onclick="v(2203143, 1, 1); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/abyss/2203143/bayan" '
              'onclick="v(2203143, 2, 1); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 19:16'
              #9#9'</div>'
              #9#9'<div>Taha: '#1082#1089#1090#1072#1090#1080' '#1085#1072' '#1087#1086#1083#1085#1086#1084' '
              #1089#1077#1088#1100#1077#1079#1077'<br>Taha: '#1089#1086#1075#1083#1072#1089#1085#1086' '#1086#1092' '#1080#1085#1092#1077'<br>Taha: '#1095#1077#1088#1077#1079' 200 '#1083#1077#1090' '
              #1080#1087#1086#1085#1094#1077#1074' '#1085#1077' '#1073#1091#1076#1077#1090'<br>da2k: '#1073#1083#1103#1103#1103#1103#1103#1103#1103#1103'<br>da2k: '#1072' '#1082#1090#1086' '#1072#1085#1080#1084#1077' '
              #1088#1080#1089#1086#1074#1072#1090#1100' '#1073#1091#1076#1077#1090' ?????? T_T</div>'
              #9'</div>'#9#9' '
              #9' '
              #9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'2202795'
              #9#9#9#9#9#9'[ <a '
              'href="/abyss/2202795/rulez" onclick="v(2202795, 0, 1); return '
              'false;">+</a> <span id="v2202795">|</span> <a '
              'href="/abyss/2202795/sux" onclick="v(2202795, 1, 1); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/abyss/2202795/bayan" '
              'onclick="v(2202795, 2, 1); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 16:47'
              #9#9'</div>'
              #9#9'<div>'#1057#1077#1056#1077#1043#1072' '
              '(11:50:18)<br>'#1087#1088#1080#1074#1077#1090'<br><br>NoName '
              '(11:50:24)<br>'#1085#1077#1090'<br><br>'#1057#1077#1056#1077#1043#1072' (11:50:36)<br>'#1095#1090#1086' '
              #1085#1077#1090'??????????????????<br><br>NoName (11:51:00)<br>'#1082#1072#1082' '#1086#1090#1074#1077#1090' '
              #1085#1072' '#1090#1074#1086#1081' '#1085#1077#1079#1072#1076#1072#1085#1085#1099#1081' '#1074#1086#1087#1088#1086#1089'</div>'
              #9'</div>'#9#9' '
              #9' '
              #9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              ''
              #9#9'<div class="vote">'
              #9#9#9'2203202'
              #9#9#9#9#9#9'[ <a '
              'href="/abyss/2203202/rulez" onclick="v(2203202, 0, 1); return '
              'false;">+</a> <span id="v2203202">|</span> <a '
              'href="/abyss/2203202/sux" onclick="v(2203202, 1, 1); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/abyss/2203202/bayan" '
              'onclick="v(2203202, 2, 1); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 19:39'
              #9#9'</div>'
              #9#9'<div>'#1093#1093#1093' '#1040' '#1103' '#1089#1074#1072#1088#1097#1080#1082#1086#1084' '#1088#1072#1073#1086#1090#1072#1102'<br>'#1091#1091#1091' '
              #1055#1077#1083#1100#1084#1077#1085#1080' '#1089#1074#1072#1088#1080#1090#1100' '#1089#1084#1086#1078#1077#1096#1100'?</div>'
              ''
              #9'</div>'#9#9' '
              #9' '
              #9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'2202813'
              #9#9#9#9#9#9'[ <a '
              'href="/abyss/2202813/rulez" onclick="v(2202813, 0, 1); return '
              'false;">+</a> <span id="v2202813">|</span> <a '
              'href="/abyss/2202813/sux" onclick="v(2202813, 1, 1); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/abyss/2202813/bayan" '
              'onclick="v(2202813, 2, 1); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 16:54'
              #9#9'</div>'
              ''
              #9#9'<div>'#1042#1082#1083#1102#1095#1072#1102' '#1090#1077#1083#1077#1074#1080#1079#1086#1088'... '#1053#1086#1074#1086#1089#1090#1080'. '
              #1057#1072#1088#1072#1090#1086#1074'.<br>'#1043#1086#1083#1086#1089' '#1076#1080#1082#1090#1086#1088#1072': &quot;'#1061#1086#1090#1080#1090#1077' '#1087#1086#1087#1072#1089#1090#1100' '#1074' '#1103#1097#1080#1082'?! '
              #1047#1074#1086#1085#1080#1090#1077' '#1087#1086' '#1085#1086#1084#1077#1088#1091'...&quot;</div>'
              #9'</div>'#9#9' '
              #9' '
              #9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'2202618'
              #9#9#9#9#9#9'[ <a '
              'href="/abyss/2202618/rulez" onclick="v(2202618, 0, 1); return '
              'false;">+</a> <span id="v2202618">|</span> <a '
              'href="/abyss/2202618/sux" onclick="v(2202618, 1, 1); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/abyss/2202618/bayan" '
              'onclick="v(2202618, 2, 1); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 15:35'
              #9#9'</div>'
              #9#9'<div>- '#1050#1086#1088#1086#1074#1082#1091' '#1073#1091#1076#1077#1096#1100'?<br>- '#1044#1072#1074#1072#1081'<br>- '#1040' '#1103' '
              #1041#1077#1083#1086#1095#1082#1086#1081' '#1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1102#1089#1100'...<br><br>'#1048#1079#1074#1088#1072#1097#1077#1085#1080#1103'? '#1054#1090#1085#1102#1076#1100' %) '
              #1050#1086#1085#1092#1077#1090#1099'</div>'
              #9'</div>'#9#9' '
              #9' '
              #9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'2203104'
              #9#9#9#9#9#9'[ <a '
              'href="/abyss/2203104/rulez" onclick="v(2203104, 0, 1); return '
              'false;">+</a> <span id="v2203104">|</span> <a '
              'href="/abyss/2203104/sux" onclick="v(2203104, 1, 1); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/abyss/2203104/bayan" '
              'onclick="v(2203104, 2, 1); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 19:02'
              #9#9'</div>'
              #9#9'<div>'#1042#1086' '#1074#1088#1077#1084#1103' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1086#1073#1085#1072#1088#1091#1078#1077#1085#1099' '
              #1089#1083#1077#1076#1091#1102#1097#1080#1077' '#1086#1096#1080#1073#1082#1080'<br><br>* '#1069#1090#1086' '#1080#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' '#1091#1078#1077' '#1082#1077#1084'-'#1090#1086' '
              #1079#1072#1085#1103#1090#1086' '#1080#1083#1080' '#1085#1077' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103#1084' '#1072#1076#1084#1080#1085#1080#1089#1090#1088#1072#1094#1080#1080'. '#1045#1089#1083#1080' '
              #1074#1099' '#1080' '#1077#1089#1090#1100' randomnick2348, '#1080' '#1074#1099' '#1079#1072#1073#1099#1083#1080' '#1074#1072#1096' '#1087#1072#1088#1086#1083#1100', '#1085#1072#1078#1084#1080#1090#1077' '
              #1079#1076#1077#1089#1100'.</div>'
              #9'</div>'#9#9' '
              #9' '
              #9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              #9#9#9'2201394'
              #9#9#9#9#9#9'[ <a '
              'href="/abyss/2201394/rulez" onclick="v(2201394, 0, 1); return '
              'false;">+</a> <span id="v2201394">|</span> <a '
              'href="/abyss/2201394/sux" onclick="v(2201394, 1, 1); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/abyss/2201394/bayan" '
              'onclick="v(2201394, 2, 1); return false;">[:||||:]</a>'
              ''
              #9#9#9#9#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 01:18'
              #9#9'</div>'
              #9#9'<div>&lt;MuHoTaBp&gt; '#1080' '#1087#1086#1076#1091#1084#1072#1083' ... '#1072' '#1074' '#1101#1090#1086#1084' '
              #1095#1090#1086#1090#1086' '#1077#1089#1090#1100'<br>&lt;MuHoTaBp&gt; '#1105#1084#1072#1105' '#1087#1088#1086#1095#1080#1090#1072#1083' '#1090#1077#1084#1091' '#1044#1077#1085#1100' '#1089#1074'. '
              #1042#1072#1083#1077#1085#1090#1080#1085#1072' '#1082#1072#1082' &quot;'#1044#1077#1085#1100' '#1089#1074#1103#1090#1086#1075#1086' '#1074#1072#1079#1077#1083#1080#1085#1072'&quot;</div>'
              #9'</div>'#9#9' '
              #9' '
              #9#9#9#9'<hr class="iq"> '
              #9'<div class="q">'
              #9#9'<div class="vote">'
              ''
              #9#9#9'2201973'
              #9#9#9#9#9#9'[ <a '
              'href="/abyss/2201973/rulez" onclick="v(2201973, 0, 1); return '
              'false;">+</a> <span id="v2201973">|</span> <a '
              'href="/abyss/2201973/sux" onclick="v(2201973, 1, 1); return '
              'false;">&minus;</a> ]'
              #9#9#9'<a href="/abyss/2201973/bayan" '
              'onclick="v(2201973, 2, 1); return false;">[:||||:]</a>'
              #9#9#9#9#9#9
              #1076#1086#1073#1072#1074#1083#1077#1085#1072' 2009-02-02 11:11'
              #9#9'</div>'
              #9#9'<div>'#1082':<br>'#1043#1086#1089#1087#1086#1076#1072','#1095#1100#1080' '#1094#1080#1090#1072#1090#1099' '#1103#1074#1083#1103#1102#1090' '#1089#1086#1073#1086#1081' '
              #1088#1072#1089#1089#1091#1078#1076#1077#1085#1080#1103' '#1086' '#1084#1086#1088#1072#1083#1080','#1084#1086#1083#1086#1076#1105#1078#1080' '#1080' '#1074#1086#1086#1073#1097#1077' '
              #1089#1086#1074#1088#1077#1084#1077#1085#1085#1086#1089#1090#1080','#1090#1077','#1095#1100#1080' '#1094#1080#1090#1072#1090#1099' '#1089#1086#1076#1077#1088#1078#1072#1090' '#1087#1088#1080#1079#1099#1074#1099' &quot;'#1089#1076#1077#1083#1072#1090#1100' '
              #1041#1054#1056' '#1095#1080#1097#1077' '#1074' '#1087#1083#1072#1085#1077' '#1094#1080#1090#1072#1090'&quot; '#1080#1083#1080' &quot;'#1091#1073#1088#1072#1090#1100' '#1085#1072' '#1093#1091#1081' '#1089' '#1073#1072#1096#1072' '
              #1084#1072#1083#1086#1083#1077#1090#1086#1082','#1073#1083#1086#1085#1076#1080#1085#1086#1082','#1075#1086#1087#1085#1080#1082#1086#1074' '#1080' '#1087#1088#1086#1095#1080#1093'&quot;!'#1045#1089#1083#1080' '#1074#1072#1096#1072' '#1094#1080#1090#1072#1090#1072' '
              #1085#1080#1095#1077#1075#1086' '#1089#1084#1077#1096#1085#1086#1075#1086' '#1089#1086#1073#1086#1102' '#1085#1077#1085#1077#1089#1105#1090','#1089#1090#1072#1074#1100#1090#1077' '#1074' '#1085#1072#1095#1072#1083#1077' '#1082#1072#1087#1089#1086#1084' '
              '&quot;'#1070#1052#1054#1056#1040' '#1053#1045' '#1057#1054#1044#1045#1056#1046#1048#1058'&quot;.'#1054#1095#1077#1085#1100' '#1084#1085#1086#1075#1080#1077' '#1089#1082#1072#1078#1091#1090' '
              #1089#1087#1072#1089#1080#1073#1086'.'#1055#1083#1102#1089#1072#1085#1080#1090#1077'.<br><br>_______________________<br><br>'#1058
              #1099' '#1095#1090#1086'-'#1090#1086' '#1074#1085#1072#1095#1072#1083#1077' '#1079#1072#1073#1099#1083' '#1087#1086#1089#1090#1072#1074#1080#1090#1100'?</div>'
              ''
              #9'</div>'#9#9' '
              #9' '
              ' '
              '<div class="aby"><a href="/abyss?28102">'#1040' '
              #1044#1040#1051#1068#1064#1045'?!</a></div></div>'
              #9'<div class="menu">'#1094#1080#1090#1072#1090#1099': [<a href="/">'#1087#1086#1089#1083#1077#1076#1085#1080#1077'</a>] '
              '[<a href="/random">'#1089#1083#1091#1095#1072#1081#1085#1099#1077'</a>] [<a href="/best">'#1083#1091#1095#1096#1080#1077'</a>] '
              
                '[<a href="/byrating">'#1087#1086' '#1088#1077#1081#1090#1080#1085#1075#1091'</a>] [<a href="/faq">FAQ</a>] [' +
                '<a '
              'href="/rss">RSS</a>] <br>'#1073#1077#1079#1076#1085#1072': <b>['#1041#1077#1079#1076#1085#1072']</b> [<a '
              'href="/abysstop">'#1090#1086#1087' '#1041#1077#1079#1076#1085#1099'</a>] [<a href="/abyssbest">'#1083#1091#1095#1096#1077#1077' '
              #1041#1077#1079#1076#1085#1099'</a>] [<a href="/add">'#1076#1086#1073#1072#1074#1080#1090#1100'</a>] <br>'#1095#1090#1086'-'#1090#1086': [<a '
              'href="/comics">'#1082#1086#1084#1080#1082#1089'</a>] [<a '
              
                'href="http://maillist.ru/81859/">'#1088#1072#1089#1089#1099#1083#1082#1072'</a>] [<a href="/idea">' +
                #1076#1083#1103' '
              #1084#1086#1073#1080#1083#1100#1085#1080#1082#1072'</a>] [<a href="/webmaster">'#1074#1077#1073#1084#1072#1089#1090#1077#1088#1091'</a>] </div>'
              ''
              #9'<hr><center><!--Rating@Mail.ru LOGO--><a target=_top'
              'href="http://top.mail.ru/jump?from=901403"><img'
              'src="http://top.list.ru/counter?id=901403;t=49;l=1"'
              'border=0 height=31 width=88'
              
                'alt="'#1056#1077#1081#1090#1080#1085#1075'@Mail.ru"/></a> <!--/LOGO--><!--LiveInternet logo-->' +
                '<a '
              'href="http://www.liveinternet.ru/click"'
              
                'target=_blank><img src="http://counter.yadro.ru/logo?15.1" borde' +
                'r=0'
              'title="LiveInternet"'
              'alt="" width=88 height=31></a><!--/LiveInternet-->'
              '<a href="http://www.yandex.ru/cy?base=0&host=bash.org.ru"><img '
              'src="http://www.yandex.ru/cycounter?bash.org.ru" width="88" '
              'height="31" alt="'#1048#1085#1076#1077#1082#1089' '#1062#1080#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1071'ndex" border="0"></a>'
              '<!-- SpyLOG -->'
              
                '<script src="http://tools.spylog.ru/counter_cv.js" id="spylog_co' +
                'de" '
              
                'type="text/javascript" counter="926575" part="" track_links="ext' +
                '" '
              'page_level="0">'
              '</script>'
              '<noscript>'
              '<a href="http://u9265.75.spylog.com/cnt?cid=926575&f=3&p=0" '
              'target="_blank">'
              '<img src="http://u9265.75.spylog.com/cnt?cid=926575&p=0" '
              'alt="SpyLOG" border="0" width="88" height="31"></a>'
              '</noscript>'
              '<!--/ SpyLOG --></center>'#9'<hr><small>'#1048#1076#1077#1103' '#1087#1088#1086#1077#1082#1090#1072' &copy; '
              'bash.org.'
              #9'<br>'#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1080' '#1087#1083#1102#1096#1082#1080' &copy; 2004'#8212'2009, '#1082#1086#1084#1072#1085#1076#1072' '
              'bash.org.ru.'
              #9'<br><a href="/ads">'#1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1076#1083#1103' '
              #1088#1077#1082#1083#1072#1084#1086#1076#1072#1090#1077#1083#1077#1081'</a>. '#1055#1086' '#1076#1088#1091#1075#1080#1084' '#1087#1086#1074#1086#1076#1072#1084': <a '
              'href="&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20&#115;%7'
              '5&#112;&#112;&#111;%72%74&#064;%62&#097;%73&#104;&#046;&'
              '#111;%72%67&#046;%72&#117;">&#115;&#117;&#112;&#112;&#111'
              ';&#114;&#116;@&#098;&#097;&#115;&#104;&#046;&#111;&#114;&#'
              '103;&#046;&#114;&#117;</a>.'
              #9'</small>'
              ''
              '</div>'
              '<!--Rating@Mail.ru COUNTER--><script language="JavaScript" '
              'type="text/javascript"><!--'
              'd=document;var a='#39#39';a+='#39';r='#39'+escape(d.referrer)'
              'js=10//--></script><script language="JavaScript1.1" '
              'type="text/javascript"><!--'
              'a+='#39';j='#39'+navigator.javaEnabled()'
              'js=11//--></script><script language="JavaScript1.2" '
              'type="text/javascript"><!--'
              's=screen;a+='#39';s='#39'+s.width+'#39'*'#39'+s.height'
              'a+='#39';d='#39'+(s.colorDepth?s.colorDepth:s.pixelDepth)'
              'js=12//--></script><script language="JavaScript1.3" '
              'type="text/javascript"><!--'
              'js=13//--></script><script language="JavaScript" '
              'type="text/javascript"><!--'
              'd.write('#39'<img src="http://top.list.ru/counter'#39'+'
              #39'?id=901403;js='#39'+js+a+'#39';rand='#39'+Math.random()+'
              #39'" height=1 width=1/>'#39')'
              'if(11<js)d.write('#39'<'#39'+'#39'!-- '#39')//--></script><noscript><img'
              'src="http://top.list.ru/counter?js=na;id=901403"'
              
                'height=1 width=1 alt=""/></noscript><script language="JavaScript' +
                '" '
              'type="text/javascript"><!--'
              'if(11<js)d.write('#39'--'#39'+'#39'>'#39')//--></script><!--/COUNTER-->'
              '<!--LiveInternet counter--><script type="text/javascript"><!--'
              'document.write("<img src='#39'http://counter.yadro.ru/hit?r"+'
              'escape(document.referrer)+((typeof(screen)=="undefined")?"":'
              '";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?'
              'screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+'
              '";"+Math.random()+'
              
                '"'#39' width=1 height=1 alt='#39#39'>")//--></script><!--/LiveInternet--><' +
                'script '
              'type="text/javascript">'
              'var gaJsHost = (("https:" == document.location.protocol) ? '
              '"https://ssl." : "http://www.");'
              'document.write(unescape("%3Cscript src='#39'" + gaJsHost + '
              '"google-analytics.com/ga.js'#39' '
              'type='#39'text/javascript'#39'%3E%3C/script%3E"));'
              '</script>'
              '<script type="text/javascript">'
              'var pageTracker = _gat._getTracker("UA-3271837-1");'
              'pageTracker._initData();'
              'pageTracker._trackPageview();'
              '</script>'
              '</body>'
              '</html>')
            TabOrder = 0
          end
        end
        object ts2: TTabSheet
          Caption = 'TestIThappens'
          ImageIndex = 5
          object TestITHappensMemo: TMemo
            Left = 0
            Top = 0
            Width = 342
            Height = 408
            Align = alClient
            Lines.Strings = (
              '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 '
              'Transitional//EN">'
              '<html>'
              '<head>'
              #9'<title>IT happens</title>'
              #9'<link rel="stylesheet" type="text/css" media="screen" '
              'href="/main.css">'
              #9'<link rel="alternate" title="IT happens RSS" '
              'href="http://ithappens.ru/rss/" type="application/rss+xml">'
              #9'<meta http-equiv="Content-Type" content="text/html; '
              'charset=windows-1251">'
              #9'<script src="/mootools.js" language="JavaScript" '
              'type="text/javascript"></script> '
              '</head>'
              ''
              '<body style="margin: 0px;">'
              
                '<div style="width: auto; margin: 0px; padding: 0px 0px 0px 30px;' +
                ' '
              'background-color: #eee; font-size: 8pt;">[<a '
              'href="http://bash.org.ru/">bash.org.ru</a>] <b>[IT '
              'Happens]</b></div>'
              #9#9'<!--Rating@Mail.ru COUNTER--><script '
              'language="JavaScript" type="text/javascript"><!--'
              'd=document;var a='#39#39';a+='#39';r='#39'+escape(d.referrer)'
              'js=10//--></script><script language="JavaScript1.1" '
              'type="text/javascript"><!--'
              'a+='#39';j='#39'+navigator.javaEnabled()'
              'js=11//--></script><script language="JavaScript1.2" '
              'type="text/javascript"><!--'
              's=screen;a+='#39';s='#39'+s.width+'#39'*'#39'+s.height'
              'a+='#39';d='#39'+(s.colorDepth?s.colorDepth:s.pixelDepth)'
              'js=12//--></script><script language="JavaScript1.3" '
              'type="text/javascript"><!--'
              'js=13//--></script><script language="JavaScript" '
              'type="text/javascript"><!--'
              'd.write('#39'<IMG src="http://de.c3.b7.a1.top.mail.ru/counter'#39'+'
              #39'?id=1523334;js='#39'+js+a+'#39';rand='#39'+Math.random()+'
              #39'" height="1" width="1" alt="top.mail.ru" border="0" />'#39')'
              'if(11<js)d.write('#39'<'#39'+'#39'!-- '#39')//--></script><noscript><img'
              'src="http://de.c3.b7.a1.top.mail.ru/counter?js=na;id=1523334"'
              
                'height="1" width="1" alt="top.mail.ru" border="0" /></noscript><' +
                'script '
              'language="JavaScript" type="text/javascript"><!--'
              'if(11<js)d.write('#39'--'#39'+'#39'>'#39')//--></script><!--/COUNTER-->'
              '<!--LiveInternet counter--><script type="text/javascript"><!--'
              'document.write("<img src='#39'http://counter.yadro.ru/hit?r"+'
              'escape(document.referrer)+((typeof(screen)=="undefined")?"":'
              '";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?'
              'screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+'
              '";"+Math.random()+'
              
                '"'#39' width=1 height=1 alt='#39#39'>")//--></script><!--/LiveInternet-->'#9 +
                #9
              '<table cellpadding="10" cellspacing="0" width="100%">'
              ''
              #9#9'<tr>'
              #9#9#9'<td colspan="2" class="top">'
              #9#9#9#9'<div><h1>IT '
              'happens</h1></div>'#9#9#9#9'<div '
              'class="sub-title">'#1050#1083#1080#1077#1085#1090' '#1080' '#1089#1072#1087#1087#1086#1088#1090'. '#1056#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082' '#1080' '#1079#1072#1082#1072#1079#1095#1080#1082'. '
              #1055#1088#1086#1075#1088#1072#1084#1084#1080#1089#1090' '#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1072'. '#1042#1077#1089#1090#1080' '#1089' '#1092#1088#1086#1085#1090#1086#1074'.</div>'
              #9#9#9'</td>'
              #9#9'</tr>'
              #9#9'<tr><td class="main" width="100%" '
              'align="center"><table cellpadding="0" cellspacing="0" '
              'class="content">'
              #9#9'<tr>'
              ''
              #9#9#9'<td class="text" width="530" '
              'align="center">'
              #9#9'<div class="selector"><span '
              'class="cur"><b>58</b></span><span><a '
              'href="/page/57">57</a></span><span><a '
              'href="/page/56">56</a></span><span><a '
              'href="/page/55">55</a></span><span><a '
              'href="/page/54">54</a></span><span><a '
              'href="/page/53">53</a></span><span><a '
              'href="/page/52">52</a></span><span><a '
              'href="/page/51">51</a></span><span><a '
              'href="/page/50">50</a></span>&bull;<span><a '
              'href="/page/3">3</a></span><span><a '
              'href="/page/2">2</a></span><span><a '
              'href="/page/1">1</a></span></div><script language="JavaScript" '
              'type="text/javascript"><!--'
              'function vote(stid) {'
              '    var req = new Request.HTML({url:'#39'/vote/'#39'+stid, onSuccess: '
              
                'function(html) { $('#39'res'#39'+stid).set('#39'text'#39', '#39#1089#1087#1072#1089#1080#1073#1086', '#1074#1072#1096' '#1075#1086#1083#1086#1089' '#1091 +
                #1095#1090#1077#1085#39');}});'
              '    req.send();'
              '}'
              '//--></script>'
              ''
              '<div class="text">'
              '    <h3><a href="/story/577">#577: '#1055#1088#1080' '#1074#1089#1077#1084' '#1073#1086#1075#1072#1090#1089#1090#1074#1077' '#1074#1099#1073#1086#1088#1072' '
              #1076#1088#1091#1075#1086#1081' '#1072#1083#1100#1090#1077#1088#1085#1072#1090#1080#1074#1099' '#1085#1077#1090'</a></h3>'
              '<p class="date">6 '#1092#1077#1074#1088#1072#1083#1103' 2009, 09:00<p class="date">'#1088#1077#1081#1090#1080#1085#1075': '
              '1158'
              '<p class="text">'#1044#1072#1074#1085#1086' '#1076#1077#1083#1086' '#1073#1099#1083#1086'...<br><br>'#1059' '#1085#1072#1096#1077#1081' '#1089#1086#1090#1088#1091#1076#1085#1080#1094#1099' '
              #1074#1089#1077' '#1074#1088#1077#1084#1103' '#1073#1099#1083#1080' '#1087#1088#1086#1073#1083#1077#1084#1099' '#1089' Windows, '#1090#1072#1082' '#1095#1090#1086' '#1103' '#1091#1089#1090#1072#1085#1086#1074#1080#1083' '#1085#1072' '#1077#1077' '
              #1084#1072#1096#1080#1085#1091' DOS '#1080' '#1087#1086#1089#1090#1072#1074#1080#1083' '#1074' '#1072#1074#1090#1086#1079#1072#1075#1088#1091#1079#1082#1091' '#1087#1088#1086#1089#1090#1086#1077' '#1084#1077#1085#1102' '#1090#1072#1082#1086#1075#1086' '
              #1074#1080#1076#1072':<br><br>1. '#1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077' '#1082' '#1084#1077#1081#1085#1092#1088#1077#1081#1084#1091'<br>2. '#1056#1072#1073#1086#1090#1072' '#1089' '
              #1090#1077#1082#1089#1090#1086#1084'.<br>'#1042#1074#1077#1076#1080#1090#1077' '#1074#1099#1073#1088#1072#1085#1085#1099#1081' '#1074#1072#1084#1080' '#1085#1086#1084#1077#1088'.<br><br>'#1055#1086#1089#1083#1077' '
              #1086#1073#1077#1076#1072' '#1086#1085#1072' '#1087#1086#1079#1074#1086#1085#1080#1083#1072' '#1080' '#1089#1086#1086#1073#1097#1080#1083#1072', '#1095#1090#1086' '#1085#1080#1095#1077#1075#1086' '#1085#1077' '#1088#1072#1073#1086#1090#1072#1077#1090'. '#1071' '
              #1087#1086#1076#1086#1096#1077#1083' '#1082' '#1077#1077' '#1089#1090#1086#1083#1091' '#1080' '#1091#1074#1080#1076#1077#1083', '#1095#1090#1086' '#1074' '#1084#1077#1085#1102' '#1086#1085#1072' '#1074#1074#1086#1076#1080#1090' '#1094#1080#1092#1088#1091' 4. '
              #1056#1072#1079#1091#1084#1077#1077#1090#1089#1103', '#1087#1086#1103#1074#1083#1103#1077#1090#1089#1103' '#1089#1086#1086#1073#1097#1077#1085#1080#1077' '#1086#1073' '#1086#1096#1080#1073#1082#1077'. '#1050#1086#1075#1076#1072' '#1103' '#1089#1087#1088#1086#1089#1080#1083' '
              #1077#1077', '#1087#1086#1095#1077#1084#1091' '#1086#1085#1072' '#1074#1074#1086#1076#1080#1090'<br>'#1080#1084#1077#1085#1085#1086' 4, '#1086#1085#1072' '#1074#1086#1079#1084#1091#1097#1077#1085#1085#1086' '#1086#1090#1074#1077#1090#1080#1083#1072': '
              '&quot;'#1053#1086' '#1090#1091#1090' '#1078#1077' '#1085#1072#1087#1080#1089#1072#1085#1086' - '#1074#1074#1077#1076#1080#1090#1077' '#1074#1099#1073#1088#1072#1085#1085#1099#1081' '#1074#1072#1084#1080' '#1085#1086#1084#1077#1088'! '#1071' '#1080' '
              #1074#1099#1073#1088#1072#1083#1072' 4!&quot;<br></p>'
              '<p class="storytags"><a href="/bytag/windows">windows</a>, <a '
              'href="/bytag/longago">'#1076#1072#1074#1085#1099#1084'-'#1076#1072#1074#1085#1086'</a>, <a '
              'href="/bytag/women">'#1087#1088#1077#1082#1088#1072#1089#1085#1099#1081' '#1087#1086#1083'</a>, <a '
              'href="/bytag/sysadminish">'#1089#1080#1089#1072#1076#1084#1080#1085#1089#1082#1086#1077'</a></p><p class="date"> '
              
                '<a href="/vote/577" onclick="vote(577); return false;">'#1069#1090#1072' '#1080#1089#1090#1086#1088 +
                #1080#1103' '
              #1084#1085#1077' '#1087#1086' '#1085#1088#1072#1074#1091'!</a> <span id="res577" style="font-style: '
              'italic;"></span></p></div>'
              ''
              '<div class="lb">&nbsp;</div>'
              '<div class="text">'
              '    <h3><a href="/story/576">#576: '#1050#1072#1082' '#1079#1072#1082#1072#1095#1072#1090#1100' '#1092#1072#1081#1083' '
              #1086#1073#1088#1072#1090#1085#1086'?</a></h3>'
              '<p class="date">6 '#1092#1077#1074#1088#1072#1083#1103' 2009, 09:00<p class="date">'#1088#1077#1081#1090#1080#1085#1075': '
              '836'
              '<p class="text">'#1041#1099#1083#1072' '#1091' '#1084#1077#1085#1103' '#1087#1086#1076#1088#1091#1075#1072'-'#1086#1076#1085#1086#1075#1088#1091#1087#1087#1085#1080#1094#1072', '#1078#1091#1090#1082#1072#1103' '
              #1073#1086#1090#1072#1085#1080#1095#1082#1072', '#1089#1086#1074#1089#1077#1084' '#1085#1077#1076#1072#1083#1077#1082#1072#1103' '#1074' '#1086#1073#1083#1072#1089#1090#1080' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1086#1074'. '
              #1059#1075#1086#1074#1086#1088#1080#1083#1072' '#1103' '#1077#1077' '#1089#1086#1079#1076#1072#1090#1100' '#1089#1077#1073#1077' '#1087#1086#1095#1090#1086#1074#1099#1081' '#1103#1097#1080#1082' - '#1091#1076#1086#1073#1085#1086' '#1074#1089#1077'-'#1090#1072#1082#1080'. '
              #1052#1099' '#1076#1088#1091#1075' '#1076#1088#1091#1075#1091' '#1074' '#1075#1088#1091#1087#1087#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1099' '#1088#1072#1089#1089#1099#1083#1072#1077#1084', '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102' '
              #1074#1089#1103#1082#1091#1102', '#1072' '#1087#1077#1088#1077#1076' '#1101#1082#1079#1072#1084#1077#1085#1072#1084#1080' '#1076#1077#1083#1080#1084' '#1074#1086#1087#1088#1086#1089#1099' '#1080' '#1089#1086#1074#1084#1077#1089#1090#1085#1086' '#1087#1080#1096#1077#1084' '
              #1096#1087#1086#1088#1099'. '#1050#1086#1075#1076#1072' '#1086#1076#1085#1086#1075#1088#1091#1087#1087#1085#1080#1082#1080' '#1087#1088#1080#1089#1099#1083#1072#1102#1090' '#1084#1085#1077' '#1075#1086#1090#1086#1074#1099#1077' '#1086#1090#1074#1077#1090#1099', '#1103' '
              #1089#1082#1083#1077#1080#1074#1072#1102' '#1074#1089#1077' '#1074' '#1086#1076#1080#1085' '#1092#1072#1081#1083#1080#1082' '#1080' '#1088#1072#1089#1089#1099#1083#1072#1102'.<br><br>'#1055#1077#1088#1077#1076' '
              #1086#1095#1077#1088#1077#1076#1085#1099#1084' '#1101#1082#1079#1072#1084#1077#1085#1086#1084' '#1103' '#1090#1086#1078#1077' '#1074#1089#1077#1084' '#1088#1072#1079#1086#1089#1083#1072#1083#1072', '#1092#1072#1081#1083#1080#1082' '#1073#1086#1083#1100#1096#1086#1081' '
              #1087#1086#1083#1091#1095#1080#1083#1089#1103', '#1074#1089#1077'-'#1090#1072#1082#1080' 150 '#1074#1086#1087#1088#1086#1089#1086#1074'. '#1054#1090#1087#1088#1072#1074#1080#1083#1072' '#1080' '#1090#1086#1081' '#1089#1072#1084#1086#1081' '
              #1087#1086#1076#1088#1091#1075#1077'. '#1057#1085#1072#1095#1072#1083#1072' '#1087#1088#1080#1096#1083#1086#1089#1100' '#1076#1086#1083#1075#1086' '#1086#1073#1098#1103#1089#1085#1103#1090#1100' '#1087#1086' '#1090#1077#1083#1077#1092#1086#1085#1091', '
              #1087#1086#1095#1077#1084#1091' '#1087#1080#1089#1100#1084#1086' '#1087#1091#1089#1090#1086#1077', '#1082#1072#1082' '#1074#1086#1086#1073#1097#1077' '#1095#1077#1088#1077#1079' '#1087#1080#1089#1100#1084#1086' '#1084#1086#1078#1085#1086' '
              #1087#1088#1080#1089#1083#1072#1090#1100' '#1074#1083#1086#1078#1077#1085#1085#1099#1081' '#1092#1072#1081#1083', '#1075#1076#1077' '#1077#1075#1086' '#1089#1084#1086#1090#1088#1077#1090#1100', '#1082#1072#1082' '#1089#1086#1093#1088#1072#1085#1103#1090#1100' '#1080' '
              #1082#1072#1082' '#1087#1086#1090#1086#1084' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1091' '#1089#1077#1073#1103' '#1085#1072' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1077'. '#1047#1072#1086#1076#1085#1086' '
              #1088#1072#1089#1089#1082#1072#1079#1072#1083#1072' '#1077#1081', '#1082#1072#1082' '#1087#1088#1080#1089#1086#1077#1076#1080#1085#1103#1090#1100' '#1092#1072#1081#1083#1099' '#1082' '#1087#1080#1089#1100#1084#1091'.<br>'#1063#1077#1088#1077#1079' 10 '
              #1084#1080#1085#1091#1090' '#1089#1084#1086#1090#1088#1102' - '#1086#1090' '#1087#1086#1076#1088#1091#1075#1080' '#1087#1080#1089#1100#1084#1086'. '#1042#1085#1091#1090#1088#1080' '#1074#1083#1086#1078#1077#1085#1085#1099#1081' '#1092#1072#1081#1083' '#1089#1086' '
              #1096#1087#1086#1088#1072#1084#1080' '#1080' '#1090#1077#1082#1089#1090': &quot;'#1059' '#1084#1077#1085#1103' '#1082#1086#1085#1089#1087#1077#1082#1090' '#1077#1089#1090#1100', '#1084#1085#1077' '#1085#1077' '#1085#1091#1078#1085#1086'! '
              #1047#1072#1073#1077#1088#1080' '#1089#1077#1073#1077' '#1085#1072#1079#1072#1076'!&quot;.</p>'
              '<p class="storytags"><a '
              'href="/bytag/nonenlightened">'#1085#1077#1089#1087#1077#1094#1080#1072#1083#1080#1089#1090#1099'</a>, <a '
              'href="/bytag/email">'#1087#1086#1095#1090#1072'</a>, <a '
              'href="/bytag/women">'#1087#1088#1077#1082#1088#1072#1089#1085#1099#1081' '#1087#1086#1083'</a></p><p class="date"> <a '
              
                'href="/vote/576" onclick="vote(576); return false;">'#1069#1090#1072' '#1080#1089#1090#1086#1088#1080#1103' ' +
                #1084#1085#1077' '
              #1087#1086' '#1085#1088#1072#1074#1091'!</a> <span id="res576" style="font-style: '
              'italic;"></span></p></div>'
              ''
              '<div class="lb">&nbsp;</div>'
              '<div class="text">'
              '    <h3><a href="/story/575">#575: '#1048' '#1085#1080#1082#1072#1082#1086#1081' '#1087#1086#1076#1075#1086#1085#1082#1080'!</a></h3>'
              '<p class="date">5 '#1092#1077#1074#1088#1072#1083#1103' 2009, 11:00<p class="date">'#1088#1077#1081#1090#1080#1085#1075': '
              '1373'
              '<p class="text">'#1055#1077#1088#1077#1087#1080#1089#1082#1072' '#1089#1086' '#1089#1083#1091#1078#1073#1086#1081' '#1087#1086#1076#1076#1077#1088#1078#1082#1080' '#1082#1086#1084#1087#1072#1085#1080#1080'  '
              '%companyname%:<br><br>'#1047#1076#1088#1072#1074#1089#1090#1074#1091#1081#1090#1077'. '#1071' '#1076#1086#1074#1086#1083#1100#1085#1086'-'#1090#1072#1082#1080' '#1076#1072#1074#1085#1086' '
              #1087#1088#1080#1086#1073#1088#1077#1083' '#1074#1077#1073'-'#1082#1072#1084#1077#1088#1091' %modelnumber%.<br>'#1057#1077#1081#1095#1072#1089' '#1103' '#1089#1084#1077#1085#1080#1083' '
              #1082#1086#1084#1087#1100#1102#1090#1077#1088' '#1085#1072' MAC Mini '#1080' '#1085#1077' '#1084#1086#1075#1091' '#1085#1080#1075#1076#1077' '#1085#1072#1081#1090#1080' '#1076#1088#1072#1081#1074#1077#1088#1086#1074' '#1085#1072' '
              #1082#1072#1084#1077#1088#1091'. '#1053#1080' '#1085#1072' MAC OS X Leopard '#1085#1080' '#1085#1072' Windows XP. '#1057#1089#1099#1083#1082#1080' '#1085#1072' '
              #1076#1088#1072#1081#1074#1077#1088#1072' '#1089' '#1074#1072#1096#1077#1075#1086' '#1089#1072#1081#1090#1072' '#1085#1077' '#1086#1090#1082#1088#1099#1074#1072#1102#1090#1089#1103'. '#1055#1086#1076#1089#1082#1072#1078#1080#1090#1077', '#1082#1072#1082' '#1080#1093' '
              #1085#1072#1081#1090#1080'?<br><br><blockquote>'#1044#1086#1073#1088#1099#1081' '#1076#1077#1085#1100'!<br>'#1087#1086#1087#1088#1086#1073#1091#1081#1090#1077' '#1077#1097#1077' '
              #1088#1072#1079' '#1079#1072#1075#1088#1091#1079#1080#1090#1100' '#1089' '#1085#1072#1096#1077#1075#1086' '#1089#1072#1081#1090#1072' '#1087#1086#1089#1083#1077' 12:15 (04.02.2009).<br><br>C '
              #1091#1074#1072#1078#1077#1085#1080#1077#1084',<br>%companyname%<br></blockquote><br><br>'#1057#1087#1072#1089#1080#1073
              #1086' '#1079#1072' '#1073#1099#1089#1090#1088#1099#1081' '#1086#1090#1074#1077#1090' :)<br>'#1053#1072' Windows '#1076#1088#1072#1081#1074#1077#1088#1072' '#1085#1072' '#1074#1072#1096#1077#1084' '#1089#1072#1081#1090#1077' '
              #1077#1089#1090#1100', '#1072' '#1085#1072' Apple MAC OS X 10.5 '#1103' '#1085#1077' '#1085#1072#1096#1077#1083'.<br>'#1053#1077' '#1087#1086#1076#1089#1082#1072#1078#1077#1090#1077', '
              #1082#1072#1082' '#1073#1099#1090#1100'?<br><br><blockquote>'#1053#1072#1096' '#1089#1087#1077#1094#1080#1072#1083#1080#1089#1090' '#1091#1090#1074#1077#1088#1078#1076#1072#1077#1090', '#1095#1090#1086' '
              #1090#1086#1090' '#1078#1077' '#1089#1072#1084#1099#1081' '#1076#1088#1072#1081#1074#1077#1088' '#1087#1086#1076#1093#1086#1076#1080#1090' '#1080' '#1076#1083#1103' Apple MAC OS X '
              '10.5.<br><br>'#1057' '
              #1091#1074#1072#1078#1077#1085#1080#1077#1084',<br>%companyname%<br></blockquote></p>'
              ''
              '<p class="storytags"><a href="/bytag/hardware">'#1078#1077#1083#1077#1079#1086'</a>, <a '
              'href="/bytag/idiots">'#1080#1076#1080#1086#1090#1099'</a>, <a '
              'href="/bytag/support">'#1089#1072#1087#1087#1086#1088#1090'</a></p><p class="date"> <a '
              
                'href="/vote/575" onclick="vote(575); return false;">'#1069#1090#1072' '#1080#1089#1090#1086#1088#1080#1103' ' +
                #1084#1085#1077' '
              #1087#1086' '#1085#1088#1072#1074#1091'!</a> <span id="res575" style="font-style: '
              'italic;"></span></p></div>'
              '<div class="lb">&nbsp;</div>'
              '<div class="text">'
              '    <h3><a href="/story/574">#574: '#1053#1077' '#1073#1099#1083#1086' '#1088#1072#1079#1088#1099#1074#1072'!</a></h3>'
              '<p class="date">5 '#1092#1077#1074#1088#1072#1083#1103' 2009, 09:00<p class="date">'#1088#1077#1081#1090#1080#1085#1075': '
              '1069'
              '<p class="text">'#1059' '#1086#1076#1085#1086#1075#1086' '#1079#1085#1072#1082#1086#1084#1086#1075#1086' '#1073#1099#1083' '#1083#1080#1084#1080#1090#1085#1099#1081' '#1090#1072#1088#1080#1092' '#1085#1072' '
              
                #1080#1085#1090#1077#1088#1085#1077#1090' (ADSL). '#1069#1090#1086#1075#1086' '#1077#1084#1091' '#1093#1074#1072#1090#1072#1083#1086', '#1090'.'#1082'. '#1074' '#1086#1089#1085#1086#1074#1085#1086#1084' '#1086#1085' '#1085#1080#1095#1077#1075#1086' '#1085#1077 +
                ' '
              #1089#1082#1072#1095#1080#1074#1072#1083'. '#1055#1072#1088#1077#1085#1100' '#1083#1102#1073#1080#1083' '#1089#1084#1086#1090#1088#1077#1090#1100' '#1058#1042': '#1087#1077#1088#1077#1076#1072#1095#1080' '#1088#1072#1079#1085#1099#1077', '
              #1089#1077#1088#1080#1072#1083#1099'... '#1045#1089#1090#1077#1089#1090#1074#1077#1085#1085#1086', '#1087#1086#1083#1091#1095#1072#1083#1086#1089#1100' '#1087#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1085#1077' '#1074#1089#1105', '#1095#1090#1086' '
              #1093#1086#1090#1077#1083#1086#1089#1100'. '#1048' '#1090#1086#1075#1076#1072' '#1103' '#1077#1084#1091' &quot;'#1086#1090#1082#1088#1099#1083'&quot; '#1092#1072#1081#1083#1086#1086#1073#1084#1077#1085#1085#1099#1077' '
              #1089#1077#1090#1080', '#1075#1076#1077' '#1084#1086#1078#1085#1086' '#1085#1072#1081#1090#1080' '#1085#1077' '#1090#1086#1083#1100#1082#1086' '#1090#1086', '#1095#1090#1086' '#1085#1077' '#1091#1089#1087#1077#1083' '#1087#1086#1089#1084#1086#1090#1088#1077#1090#1100', '#1085#1086' '
              #1080' '#1090#1086', '#1095#1090#1086' '#1087#1086' '#1058#1042' '#1085#1077' '#1087#1086#1082#1072#1079#1099#1074#1072#1102#1090'. '#1053#1091', '#1080' '#1087#1086#1084#1080#1084#1086' '#1101#1090#1086#1075#1086', '#1087#1086#1089#1086#1074#1077#1090#1086#1074#1072#1083' '
              #1087#1086#1076#1082#1083#1102#1095#1080#1090#1100' '#1073#1077#1079#1083#1080#1084#1080#1090', '#1095#1090#1086#1073#1099' '#1085#1077' '#1086#1075#1088#1072#1085#1080#1095#1080#1074#1072#1090#1100' '#1089#1077#1073#1103' '#1085#1080' '#1074' '
              #1095#1077#1084'.<br><br>'#1048#1076#1077#1103' '#1077#1084#1091' '#1086#1095#1077#1085#1100' '#1087#1086#1085#1088#1072#1074#1080#1083#1072#1089#1100', '#1080' '#1075#1076#1077'-'#1090#1086' '#1074' '#1089#1077#1088#1077#1076#1080#1085#1077' '
              #1084#1077#1089#1103#1094#1072' '#1086#1085' '#1087#1086#1076#1082#1083#1102#1095#1080#1083' '#1085#1086#1074#1099#1081' '#1090#1072#1088#1080#1092', '#1082#1086#1090#1086#1088#1086#1081' '#1076#1086#1083#1078#1077#1085' '#1074#1089#1090#1091#1087#1080#1090#1100' '#1074' '
              #1089#1080#1083#1091' '#1090#1086#1083#1100#1082#1086' '#1074' '#1085#1072#1095#1072#1083#1077' '#1089#1083#1077#1076#1091#1102#1097#1077#1075#1086' '#1084#1077#1089#1103#1094#1072'. '#1047#1085#1072#1082#1086#1084#1099#1081' '#1074' '
              #1087#1088#1077#1076#1074#1082#1091#1096#1077#1085#1080#1080', '#1101#1082#1086#1085#1086#1084#1085#1086' '#1088#1072#1089#1093#1086#1076#1091#1103' '#1084#1080#1079#1077#1088#1085#1099#1077' '#1086#1089#1090#1072#1090#1082#1080' '#1083#1080#1084#1080#1090#1085#1086#1075#1086' '
              #1090#1088#1072#1092#1080#1082#1072', '#1086#1078#1080#1076#1072#1077#1090' '#1085#1072#1095#1072#1083#1086' '#1084#1077#1089#1103#1094#1072'. '#1048' '#1074#1086#1090' '#1087#1077#1088#1074#1086#1077' '#1095#1080#1089#1083#1086'! '#1047#1072#1087#1091#1097#1077#1085#1072' '
              #1082#1091#1095#1072' '#1090#1086#1088#1088#1077#1085#1090#1086#1074'... '#1042#1086#1090' '#1086#1085#1086' '#1089#1095#1072#1089#1090#1100#1077'!<br><br>'#1053#1077#1083#1072#1076#1085#1086#1077' '
              #1086#1073#1085#1072#1088#1091#1078#1080#1083#1086#1089#1100' '#1090#1086#1075#1076#1072', '#1082#1086#1075#1076#1072' '#1089#1086' '#1089#1095#1077#1090#1072' '#1089#1087#1080#1089#1072#1083#1072#1089#1100' '#1089#1091#1084#1084#1072', '#1088#1072#1074#1085#1072#1103' '
              #1072#1073#1086#1085#1077#1085#1090#1082#1077' '#1087#1088#1080#1084#1077#1088#1085#1086' '#1079#1072' '#1087#1086#1083#1075#1086#1076#1072'. '#1050#1072#1082' '#1086#1082#1072#1079#1072#1083#1086#1089#1100', '#1089#1077#1089#1089#1080#1103' '#1074#1080#1089#1077#1083#1072' '
              #1077#1097#1077' '#1089' 31-'#1075#1086' '#1095#1080#1089#1083#1072', '#1090#1072#1088#1080#1092', '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086', '#1085#1077' '#1086#1073#1085#1086#1074#1080#1083#1089#1103'.<br>'#1042#1086#1090' '
              #1074#1072#1084' '#1085#1072#1076#1105#1078#1085#1072#1103' '#1089#1074#1103#1079#1100', '#1072' '#1076#1086' '#1101#1090#1086#1075#1086' '
              #1089#1086#1077#1076#1080#1085#1077#1085#1080#1077' '#1088#1074#1072#1083#1086#1089#1100' '#1073#1091#1082#1074#1072#1083#1100#1085#1086' '#1082#1072#1078#1076#1099#1077' '#1085#1077#1089#1082#1086#1083#1100#1082#1086' '#1084#1080#1085#1091#1090'...</p>'
              ''
              '<p class="storytags"><a href="/bytag/internet">'#1080#1085#1090#1077#1088#1085#1077#1090'</a>, <a '
              'href="/bytag/providers">'#1087#1088#1086#1074#1072#1081#1076#1077#1088#1099'</a></p><p class="date"> <a '
              
                'href="/vote/574" onclick="vote(574); return false;">'#1069#1090#1072' '#1080#1089#1090#1086#1088#1080#1103' ' +
                #1084#1085#1077' '
              #1087#1086' '#1085#1088#1072#1074#1091'!</a> <span id="res574" style="font-style: '
              'italic;"></span></p></div>'
              '<div class="lb">&nbsp;</div>'
              '<div class="text">'
              '    <h3><a href="/story/573">#573: '#1053#1077#1090', '#1087#1086#1081#1076#1077#1096#1100' '#1090#1099'!</a></h3>'
              '<p class="date">5 '#1092#1077#1074#1088#1072#1083#1103' 2009, 09:00<p class="date">'#1088#1077#1081#1090#1080#1085#1075': '
              '2004'
              '<p class="text">'#1051#1077#1090' '#1089' '#1076#1077#1089#1103#1090#1086#1082' '#1085#1072#1079#1072#1076' '#1080#1083#1080' '#1076#1072#1078#1077' '#1073#1086#1083#1100#1096#1077', '#1074' '#1086#1073#1097#1072#1075#1077', '
              #1082#1091#1076#1072' '#1103' '#1095#1072#1089#1090#1077#1085#1100#1082#1086' '#1093#1072#1078#1080#1074#1072#1083' '#1074' '#1075#1086#1089#1090#1080', '#1089#1090#1091#1076#1077#1085#1090#1099' '#1082#1072#1082'-'#1090#1086' '#1079#1072#1089#1087#1086#1088#1080#1083#1080', '
              #1082#1086#1084#1091' '#1089#1077#1075#1086#1076#1085#1103' '#1074#1099#1085#1086#1089#1080#1090#1100' '#1084#1091#1089#1086#1088'. '#1054#1076#1080#1085' '#1091#1090#1074#1077#1088#1078#1076#1072#1083', '#1084#1086#1083', '#1085#1091' '#1080' '#1095#1090#1086', '
              #1095#1090#1086' '#1084#1086#1103' '#1086#1095#1077#1088#1077#1076#1100', '#1103' '#1074' '#1087#1088#1086#1096#1083#1099#1081' '#1088#1072#1079' '#1074#1099#1085#1086#1089#1080#1083' '#1074#1086#1090' '#1079#1072' '#1101#1090#1086#1075#1086' '#1088#1077#1076#1080#1089#1082#1091', '
              #1090#1072#1082' '#1095#1090#1086' '#1087#1091#1089#1090#1100' '#1089#1077#1075#1086#1076#1085#1103' '#1086#1085' '#1079#1072' '#1084#1077#1085#1103' '#1074#1099#1085#1086#1089#1080#1090'. '#1053#1072' '#1095#1090#1086' '#1090#1086#1090' '#1076#1088#1091#1075#1086#1081' '
              #1086#1090#1074#1077#1095#1072#1083', '#1095#1090#1086' '#1089#1077#1075#1086#1076#1085#1103' '#1077#1084#1091' '#1089#1086#1074#1089#1077#1084' '#1083#1077#1085#1080#1074#1086', '#1086#1085' '#1083#1091#1095#1096#1077' '#1087#1086#1090#1086#1084', '#1080' '
              #1074#1086#1086#1073#1097#1077', '#1086#1090#1085#1086#1089#1080#1090#1077#1083#1100#1085#1086' '#1089#1088#1086#1082#1086#1074' '#1074#1086#1079#1074#1088#1072#1097#1077#1085#1080#1103' '#1076#1086#1083#1075#1072' '#1085#1077' '
              #1076#1086#1075#1086#1074#1072#1088#1080#1074#1072#1083#1080#1089#1100'. '#1042' '#1086#1073#1097#1077#1084' ('#1086#1073#1072' - '#1073#1091#1076#1091#1097#1080#1077' '#1087#1088#1086#1075#1088#1072#1084#1084#1080#1089#1090#1099') '#1088#1077#1096#1080#1083#1080' '
              #1085#1072#1087#1080#1089#1072#1090#1100' '#1087#1088#1086#1075#1088#1072#1084#1084#1082#1091'-'#1075#1077#1085#1077#1088#1072#1090#1086#1088'.<br><br>'#1055#1077#1088#1074#1099#1081' '#1087#1080#1089#1072#1083' '#1077#1105' '#1085#1072' '
              #1055#1072#1089#1082#1072#1083#1077', '#1074#1090#1086#1088#1086#1081' '#1087#1088#1086#1074#1077#1088#1103#1083'. '#1047#1072#1087#1091#1089#1090#1080#1083#1080'. '#1055#1088#1086#1075#1088#1072#1084#1084#1082#1072' ('#1087#1086#1076' DOS '
              #1077#1097#1105' '#1074' '#1090#1077' '#1074#1088#1077#1084#1077#1085#1072') '#1087#1080#1089#1072#1083#1072' '#1073#1099#1089#1090#1088#1086'-'#1073#1099#1089#1090#1088#1086' '#1092#1072#1084#1080#1083#1080#1080' '#1086#1073#1086#1080#1093' '
              #1087#1086#1087#1077#1088#1077#1084#1077#1085#1085#1086', '#1087#1086#1082#1072' '#1085#1077' '#1073#1091#1076#1077#1090' '#1085#1072#1078#1072#1090#1072' any key. '#1052#1091#1089#1086#1088' '#1080#1076#1105#1090' '
              #1074#1099#1085#1086#1089#1080#1090#1100' '#1090#1086#1090', '#1095#1100#1103' '#1092#1072#1084#1080#1083#1080#1103' '#1086#1082#1072#1078#1077#1090#1089#1103' '#1087#1086#1089#1083#1077#1076#1085#1077#1081'. Any key '#1078#1072#1083' '#1103', '
              #1082#1072#1082' '#1085#1077#1079#1072#1080#1085#1090#1077#1088#1077#1089#1086#1074#1072#1085#1085#1086#1077' '#1083#1080#1094#1086'.<br>'#1071#1089#1085#1086#1077' '#1076#1077#1083#1086', '#1095#1090#1086' '#1084#1091#1089#1086#1088' '#1087#1086#1096#1105#1083' '
              
                #1074#1099#1085#1086#1089#1080#1090#1100' '#1090#1086#1090', '#1095#1090#1086' '#1087#1088#1086#1074#1077#1088#1103#1083', '#1072' '#1085#1077' '#1090#1086#1090', '#1082#1090#1086' '#1087#1080#1089#1072#1083'.<br><br>'#1050#1086#1075#1076#1072' '#1086#1085 +
                ' '
              #1074#1077#1088#1085#1091#1083#1089#1103', '#1074#1090#1086#1088#1086#1081' '#1077#1084#1091' '#1087#1088#1086#1076#1077#1084#1086#1085#1089#1090#1088#1080#1088#1086#1074#1072#1083' '#1079#1072' '#1087#1088#1072#1074#1086#1081' '#1075#1088#1072#1085#1080#1094#1077#1081' '
              #1101#1082#1088#1072#1085#1072' '#1089' '#1087#1086#1079#1080#1094#1080#1080' '#1101#1076#1072#1082' 100-'#1081' '#1085#1077#1082#1080#1081' '#1095#1080#1090#1077#1088#1089#1082#1080#1081' '#1082#1086#1076', '
              #1087#1088#1086#1087#1091#1089#1082#1072#1102#1097#1080#1081' '#1087#1088#1086#1074#1077#1088#1082#1091' any key '#1076#1083#1103' '#1087#1086
              #1085#1103#1090#1085#1086' '#1082#1072#1082#1086#1075#1086' '#1089#1083#1091#1095#1072#1103'. '#1042#1090#1086#1088#1086#1081' '#1087#1086#1089#1091#1088#1086#1074#1077#1083', '#1085#1086' '#1074#1077#1076#1100' '#1089#1072#1084' '#1078#1077' '
              #1087#1088#1086#1074#1077#1088#1103#1083', '#1090#1072#1082' '#1095#1090#1086' '#1074#1080#1085#1080#1090#1100' '#1085#1077#1082#1086#1075#1086'. '#1055#1086#1101#1090#1086#1084#1091' '#1089#1082#1072#1079#1072#1083', '#1095#1090#1086' '#1074' '
              #1089#1083#1077#1076#1091#1102#1097#1080#1081' '#1088#1072#1079' '#1086#1085' '#1089#1072#1084' '#1073#1091#1076#1077#1090' '#1087#1088#1086#1075#1088#1072#1084#1084#1082#1091' '#1087#1080#1089#1072#1090#1100'.<br><br>'#1053#1072' '
              '&quot;'#1089#1083#1077#1076#1091#1102#1097#1080#1081' '#1088#1072#1079'&quot; '#1086#1085' '#1077#1105' '#1087#1080#1089#1072#1083' '#1085#1072' '#1057'. '#1042#1090#1086#1088#1086#1081' '#1077#1105' '#1082#1072#1082' '
              #1090#1086#1083#1100#1082#1086' '#1085#1077' '#1087#1088#1086#1074#1077#1088#1103#1083', '#1090#1086#1083#1100#1082#1086' '#1095#1090#1086' '#1085#1077' '#1076#1080#1079#1072#1089#1089#1077#1084#1073#1083#1080#1088#1086#1074#1072#1083'. '#1048' '#1087#1086#1096#1105#1083' '
              #1074#1099#1085#1086#1089#1080#1090#1100' '#1084#1091#1089#1086#1088'. '#1050#1086#1075#1076#1072' '#1074#1077#1088#1085#1091#1083#1089#1103', '#1087#1086#1085#1103#1083', '#1095#1090#1086' '#1085#1077' '#1076#1080#1089#1089#1072#1084#1073#1083#1080#1088#1086#1074#1072#1083' '
              #1085#1072#1087#1088#1072#1089#1085#1086': '#1101#1090#1086#1090' '#1077#1084#1091' '#1086#1090#1086#1084#1089#1090#1080#1083' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077#1084' &lt;conio.h&gt;, '
              #1087#1077#1088#1077#1089#1073#1086#1088#1082#1086#1081' '#1073#1080#1073#1083#1080#1086#1090#1077#1082' '#1080' '#1074#1086#1089#1089#1090#1072#1085#1086#1074#1083#1077#1085#1080#1077#1084' &lt;conio.h&gt;</p>'
              ''
              '<p class="storytags"><a '
              'href="/bytag/programmism">'#1087#1088#1086#1075#1088#1072#1084#1084#1080#1079#1084#1099'</a>, <a '
              'href="/bytag/pranks">'#1088#1086#1079#1099#1075#1088#1099#1096#1080'</a></p><p class="date"> <a '
              
                'href="/vote/573" onclick="vote(573); return false;">'#1069#1090#1072' '#1080#1089#1090#1086#1088#1080#1103' ' +
                #1084#1085#1077' '
              #1087#1086' '#1085#1088#1072#1074#1091'!</a> <span id="res573" style="font-style: '
              'italic;"></span></p></div>'
              '<div class="lb">&nbsp;</div>'
              '<div class="text">'
              '    <h3><a href="/story/572">#572: '#1059#1076#1072#1083#1080#1083#1086'? '#1057#1077#1081#1095#1072#1089' '
              #1074#1086#1089#1089#1090#1072#1085#1086#1074#1080#1084'!</a></h3>'
              '<p class="date">5 '#1092#1077#1074#1088#1072#1083#1103' 2009, 09:00<p class="date">'#1088#1077#1081#1090#1080#1085#1075': '
              '2390'
              '<p class="text">'#1056#1072#1073#1086#1090#1072#1083' '#1103' '#1082#1072#1082'-'#1090#1086' '#1072#1076#1084#1080#1085#1086#1084' '#1087#1086' '#1074#1099#1079#1086#1074#1091'. '#1058#1086' '#1077#1089#1090#1100', '
              #1076#1083#1103' '#1085#1086#1088#1084#1072#1083#1100#1085#1086#1081' '#1088#1072#1073#1086#1090#1099' '#1089#1077#1090#1082#1080' '#1086' '#1076#1077#1089#1103#1090#1080' '#1082#1086#1084#1087#1072#1093' '#1085#1077#1091#1089#1099#1087#1085#1086#1077' '
              #1073#1076#1077#1085#1080#1077' '#1072#1076#1084#1080#1085#1072' '#1085#1080' '#1088#1072#1079#1091' '#1085#1077' '#1085#1091#1078#1085#1086', '#1085#1086' '#1077#1089#1083#1080' '#1095#1090#1086'-'#1090#1086' '#1087#1086#1084#1088#1077#1090' - '#1073#1091#1076#1100' '
              #1083#1102#1073#1077#1079#1077#1085' '#1103#1074#1080#1090#1100#1089#1103', '#1085#1072#1088#1080#1089#1086#1074#1072#1090#1100' '#1074#1086#1089#1082#1088#1077#1096#1072#1102#1097#1091#1102' '#1087#1077#1085#1090#1072#1075#1088#1072#1084#1084#1091' '#1080' '
              #1087#1088#1086#1095#1080#1090#1072#1090#1100' '#1085#1091#1078#1085#1099#1077' '#1079#1072#1082#1083#1080#1085#1072#1085#1080#1103'.<br><br>'#1050#1088#1080#1074#1080#1079#1085#1072' '#1084#1086#1080#1093' '#1088#1091#1082' '#1074#1088#1086#1076#1077' '
              #1073#1099' '#1095#1072#1089#1090#1080#1095#1085#1086' '#1082#1086#1084#1087#1077#1085#1089#1080#1088#1091#1077#1090#1089#1103' '#1084#1077#1089#1090#1086#1084' '#1087#1088#1086#1080#1079#1088#1072#1089#1090#1072#1085#1080#1103', '#1087#1086#1101#1090#1086#1084#1091' '#1074' '
              #1089#1077#1081' '#1092#1080#1088#1084#1077' '#1103' '#1073#1099#1074#1072#1083' '#1085#1077' '#1090#1072#1082' '#1091#1078' '#1095#1072#1089#1090#1086'. '#1042#1086#1087#1088#1086#1089#1099' '#1074' '#1076#1091#1093#1077' &quot;'#1059' '#1084#1077#1085#1103' '
              #1085#1072' '#1084#1099#1096#1082#1077' '#1082#1091#1095#1072' '#1082#1085#1086#1087#1086#1082' '#1080' '#1086#1085#1072' '#1085#1077' '#1082#1072#1090#1072#1077#1090#1089#1103', '#1072' '#1085#1072' '#1082#1083#1072#1074#1077' '#1074#1089#1077#1075#1086' '#1076#1074#1077' '#1080' '
              #1086#1085#1072' '#1077#1079#1076#1080#1090' '#1087#1086' '#1074#1089#1077#1084#1091' '#1089#1090#1086#1083#1091', '#1095#1090#1086' '#1084#1085#1077' '#1076#1077#1083#1072#1090#1100'?&quot; '#1091#1089#1087#1077#1096#1085#1086' '
              #1088#1077#1096#1072#1083#1080#1089#1100' '#1087#1086' '#1090#1077#1083#1077#1092#1086#1085#1091' '#1080' '#1084#1085#1086#1075#1086' '#1074#1088#1077#1084#1077#1085#1080' '#1085#1077' '
              #1079#1072#1085#1080#1084#1072#1083#1080'.<br><br>'#1055#1077#1088#1089#1086#1085#1072#1083' '#1090#1072#1084' '#1087#1086#1076#1086#1073#1088#1072#1083#1089#1103' '#1093#1086#1088#1086#1096#1080#1081' '#1080' '#1088#1072#1079#1085#1099#1081', '
              #1074' '#1086#1089#1085#1086#1074#1085#1086#1084' '#1087#1088#1072#1074#1076#1072' '#1088#1072#1079#1085#1099#1081' '#1080' '#1089' '#1082#1086#1084#1087#1072#1084#1080' '#1079#1085#1072#1082#1086#1084#1099#1081' '#1089#1083#1072#1073#1086'. '
              #1047#1072#1087#1086#1084#1085#1080#1083#1089#1103' '#1089#1083#1091#1095#1072#1081', '#1082#1086#1075#1076#1072' '#1074#1099#1090#1072#1097#1080#1083#1072' '#1084#1077#1085#1103' '#1089#1077#1082#1088#1077#1090#1072#1088#1100' '#1076#1080#1088#1077#1082#1090#1086#1088#1072' '
              #1080' '#1085#1072#1095#1072#1083#1072' '#1086#1088#1072#1090#1100'. '#1054#1082#1072#1079#1072#1083#1086#1089#1100', '#1084#1086#1081' '#1072#1085#1090#1080#1074#1080#1088#1091#1089' '#1074#1084#1077#1089#1090#1086' '#1074#1080#1088#1091#1089#1086#1074' '
              #1091#1076#1072#1083#1080#1083' 800 '#1084#1077#1075#1072#1073#1072#1081#1090' '#1089#1082#1072#1085#1086#1074' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074', '#1082#1086#1090#1086#1088#1099#1081' '#1089#1082#1072#1085#1080#1083#1080#1089#1100' '#1076#1074#1072' '
              #1076#1085#1103', '#1080' '#1090#1077#1087#1077#1088#1100' '#1085#1077' '#1089#1076#1072#1076#1091#1090#1089#1103' '#1074#1086#1074#1088#1077#1084#1103' '#1076#1080#1088#1077#1082#1090#1086#1088#1091', '#1080' '#1077#1081' '#1074#1083#1077#1090#1080#1090' '#1080' '
              #1090#1088#1072#1090#1072#1090#1072' '#1080' '#1073#1083#1072#1073#1083#1072#1073#1083#1072'! '#1044#1080#1088#1077#1082#1090#1086#1088', '#1087#1086#1079#1085#1072#1085#1080#1103' '#1074' '#1074#1099#1095#1080#1089#1083#1080#1090#1077#1083#1100#1085#1086#1081' '
              #1090#1077#1093#1085#1080#1082#1077' '#1082#1086#1090#1086#1088#1086#1075#1086' '#1079#1072#1082#1086#1085#1095#1080#1083#1080#1089#1100' '#1085#1072' '#1080#1075#1088#1091#1096#1082#1077' '#1087#1088#1086' '#1074#1086#1083#1082
              #1072' '#1080' '#1103#1081#1094#1072', '#1089#1090#1086#1103#1083' '#1080' '#1084#1085#1086#1075#1086#1079#1085#1072#1095#1080#1090#1077#1083#1100#1085#1086' '#1093#1084#1091#1088#1080#1083#1089#1103'.<br><br>'#1041#1086#1083#1100#1096#1077' '
              #1074#1089#1077#1075#1086' '#1084#1077#1085#1103' '#1074#1086#1079#1084#1091#1090#1080#1083#1086' '#1085#1077' '#1090#1086', '#1095#1090#1086' '#1101#1090#1080#1084' '#1073#1088#1077#1076#1086#1084' '#1087#1099#1090#1072#1102#1090#1089#1103' '
              #1079#1072#1075#1083#1072#1076#1080#1090#1100' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1086#1077' '#1073#1077#1079#1076#1077#1083#1080#1077', '#1072' '#1090#1086', '#1082#1072#1082' '#1101#1090#1086' '#1076#1077#1083#1072#1083#1086#1089#1100' - '#1089' '
              #1087#1080#1089#1082#1086#1084', '#1074#1080#1079#1075#1086#1084', '#1084#1072#1090#1086#1084' '#1080' '#1085#1077#1083#1077#1087#1099#1084#1080' '#1086#1073#1074#1080#1085#1077#1085#1080#1103#1084#1080'. '#1044#1074#1072#1076#1094#1072#1090#1080' '
              #1084#1080#1085#1091#1090' '#1082#1086#1074#1099#1088#1103#1085#1080#1103' '#1074' '#1083#1086#1075#1072#1093' '#1080' '#1088#1072#1073#1086#1090#1099' '#1087#1088#1086#1075#1088#1072#1084#1084#1086#1081' '#1074#1086#1089#1089#1090#1072#1085#1086#1074#1083#1077#1085#1080#1103' '
              '('#1087#1088#1080' '#1091#1087#1086#1084#1080#1085#1072#1085#1080#1080' '#1086' '#1082#1086#1090#1086#1088#1086#1081' '#1091' '#1089#1077#1082#1088#1077#1090#1072#1088#1096#1080' '#1089#1083#1091#1095#1080#1083#1089#1103' '#1086#1095#1077#1088#1077#1076#1085#1086#1081' '
              #1087#1088#1080#1089#1090#1091#1087') '#1093#1074#1072#1090#1080#1083#1086', '#1095#1090#1086#1073#1099' '#1091#1073#1077#1076#1080#1090#1100#1089#1103' - '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1085#1077' '
              #1073#1099#1083#1086'.<br><br>'#1055#1083#1072#1085' '#1084#1077#1089#1090#1080' '#1089#1086#1079#1088#1077#1083' '#1095#1072#1089#1072' '#1095#1077#1088#1077#1079' '#1087#1086#1083#1090#1086#1088#1072', '#1082#1086#1075#1076#1072' '
              #1079#1072#1082#1086#1085#1095#1080#1083#1086#1089#1100' '#1091#1075#1083#1091#1073#1083#1077#1085#1085#1086#1077' '#1089#1082#1072#1085#1080#1088#1086#1074#1072#1085#1080#1077' '#1080' '#1087#1086#1076#1086#1096#1077#1083' '#1076#1080#1088#1077#1082#1090#1086#1088' '#1089' '
              #1074#1086#1087#1088#1086#1089#1086#1084' &quot;'#1053#1091' '#1082#1072#1082'&quot;?<br><br>'#1045#1075#1086' '#1074#1079#1086#1088#1091' '#1089#1086' '#1089#1083#1086#1074#1072#1084#1080' '
              '&quot;'#1087#1086#1089#1084#1086#1090#1088#1080#1084', '#1095#1090#1086' '#1085#1072#1096#1083#1086'&quot; '#1073#1099#1083#1072' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1077#1085#1072' '
              #1074#1086#1089#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1072#1103' '#1082#1091#1095#1072' '#1088#1080#1089#1091#1085#1082#1086#1074' '#1080#1079' '#1074#1089#1077#1093' '#1089#1086#1094#1080#1072#1083#1100#1085#1099#1093' '#1089#1077#1090#1077#1081', '
              #1092#1083#1072#1082#1086#1085#1086#1074' '#1089' '#1082#1086#1089#1084#1077#1090#1080#1082#1086#1081', '#1077#1097#1105' '#1082#1072#1082#1072#1103'-'#1090#1086' '#1095#1091#1096#1100' '#1080' '#1074#1087#1077#1095#1072#1090#1083#1103#1102#1097#1077#1077' '
              #1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1082#1072#1088#1090#1080#1085#1086#1082' '#1089' '#1087#1086#1088#1085#1086#1073#1072#1085#1085#1077#1088#1086#1074'. '#1055#1088#1086#1075#1088#1072#1084#1084#1072' '#1088#1072#1079#1088#1099#1083#1072' '#1082#1101#1096' '
              #1073#1088#1072#1091#1079#1077#1088#1072'. '#1053#1072' '#1074#1086#1087#1088#1086#1089' &quot;'#1072' '#1082#1091#1076#1072' '#1084#1086#1075#1083#1080' '#1076#1077#1090#1100#1089#1103' '#1092#1072#1081#1083#1099'?&quot; '
              #1087#1086#1089#1083#1077#1076#1086#1074#1072#1083' '#1083#1086#1075#1080#1095#1085#1099#1081' '#1086#1090#1074#1077#1090' '#1087#1088#1086' '#1080#1093' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1077' '#1091#1076#1072#1083#1077#1085#1080#1077' '
              #1085#1077#1080#1079#1074#1077#1089#1090#1085#1099#1084#1080' '#1093#1072#1082#1077#1088#1072#1084#1080', '#1074#1079#1083#1086#1084#1072#1074#1096#1080#1084#1080' '#1082#1086#1084#1087#1100#1102#1090#1077#1088' '#1095#1077#1088#1077#1079' '
              #1087#1086#1088#1085#1086#1089#1072#1081#1090#1099'. '#1042#1077#1089#1100#1084#1072' '#1087#1088#1072#1074#1076#1086#1087#1086#1076#1086#1073#1085#1086#1077' '#1086#1073#1098#1103#1089#1085#1077#1085#1080#1077' '#1076#1083#1103' '
              #1089#1077#1082#1088#1077#1090#1072#1088#1103'.<br><br>'#1048' '#1074#1086#1090', '
              #1074' '#1076#1077#1085#1100' '#1079#1072#1088#1087#1083#1072#1090#1099' '#1084#1072#1076#1072#1084#1072' '#1085#1077#1076#1086#1087#1086#1083#1091#1095#1080#1083#1072' 50% '#1087#1088#1077#1084#1080#1080', '#1072' '#1103' '#1080#1089#1087#1099#1090#1072#1083' '
              #1088#1077#1076#1082#1086#1077' '#1095#1091#1074#1089#1090#1074#1086' '#1074#1086#1089#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1086#1081' '#1089#1087#1088#1072#1074#1076#1077#1083#1080#1074#1086#1089#1090#1080'. '#1043#1086#1089#1087#1086#1076#1072', '#1085#1077' '
              #1086#1073#1080#1078#1072#1081#1090#1077' '#1072#1076#1084#1080#1085#1086#1074'.</p>'
              ''
              '<p class="storytags"><a href="/bytag/idiots">'#1080#1076#1080#1086#1090#1099'</a>, <a '
              'href="/bytag/boss">'#1085#1072#1095#1072#1083#1100#1089#1090#1074#1086'</a>, <a '
              'href="/bytag/women">'#1087#1088#1077#1082#1088#1072#1089#1085#1099#1081' '#1087#1086#1083'</a>, <a '
              'href="/bytag/sysadminish">'#1089#1080#1089#1072#1076#1084#1080#1085#1089#1082#1086#1077'</a></p><p class="date"> '
              
                '<a href="/vote/572" onclick="vote(572); return false;">'#1069#1090#1072' '#1080#1089#1090#1086#1088 +
                #1080#1103' '
              #1084#1085#1077' '#1087#1086' '#1085#1088#1072#1074#1091'!</a> <span id="res572" style="font-style: '
              'italic;"></span></p></div>'
              '<div class="lb">&nbsp;</div>'
              '<div class="text">'
              '    <h3><a href="/story/571">#571: '#1060#1080#1083#1100#1082#1080#1085#1072' '#1075#1088#1072#1084#1086#1090#1072'</a></h3>'
              '<p class="date">5 '#1092#1077#1074#1088#1072#1083#1103' 2009, 09:00<p class="date">'#1088#1077#1081#1090#1080#1085#1075': '
              '1056'
              ''
              '<p class="text">'#1063#1090#1086'-'#1090#1086' '#1085#1077' '#1090#1072#1082' '#1089' '#1092#1080#1088#1084#1086#1081', '#1074' '#1082#1086#1090#1086#1088#1086#1081' '#1103' '#1090#1088#1091#1078#1091#1089#1100'. '#1048' '
              #1085#1077#1076#1072#1074#1085#1086' '#1073#1099#1083' '#1089#1083#1091#1095#1072#1081', '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1072#1102#1097#1080#1081' '#1101#1090#1086'.<br>'#1042' '#1086#1073#1097#1077#1084', '
              #1079#1072#1089#1090#1072#1074#1080#1083#1080' '#1085#1072#1089' '#1076#1077#1083#1072#1090#1100' '#1086#1090#1095#1077#1090' '#1086' '#1087#1088#1086#1076#1077#1083#1072#1085#1085#1086#1081' '#1088#1072#1073#1086#1090#1077'. '#1053#1072#1095#1072#1083#1100#1089#1090#1074#1086' '
              #1074#1099#1076#1074#1080#1085#1091#1083#1086' '#1082#1086#1077'-'#1082#1072#1082#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103' '#1076#1083#1103' '#1085#1077#1075#1086' ('#1090#1080#1087#1072' : '#1088#1072#1073#1086#1095#1072#1103' '
              #1087#1088#1086#1075#1088#1072#1084#1084#1072' - '#1074#1086#1088#1076', '#1095#1080#1089#1083#1086' '#1089#1090#1088#1072#1085#1080#1094' - '#1085#1077' '#1084#1077#1085#1077#1077'/'#1085#1077' '#1073#1086#1083#1077#1077', '#1080' '
              
                #1090'.'#1076'.).<br><br>'#1042#1089#1077' '#1089#1080#1076#1103#1090' '#1087#1077#1095#1072#1090#1072#1102#1090'. '#1055#1088#1086#1073#1083#1077#1084' '#1085#1080' '#1091' '#1082#1086#1075#1086' '#1085#1077#1090', '#1084#1077#1085#1103' '#1085#1077 +
                ' '
              #1079#1086#1074#1091#1090' - '#1086#1090#1076#1099#1093#1072#1102' . '#1055#1086#1090#1086#1084' '#1088#1077#1096#1080#1083' '#1087#1088#1086#1074#1077#1076#1072#1090#1100' '#1086#1090#1076#1077#1083', '#1079#1072#1093#1086#1078#1091', '#1089#1084#1086#1090#1088#1102' '
              #1079#1072' '#1089#1087#1080#1085#1091', '#1095#1080#1090#1072#1102', '#1091#1093#1086#1078#1091'. '#1055#1088#1086#1076#1077#1083#1099#1074#1072#1102' '#1101#1090#1091' '#1086#1087#1077#1088#1072#1094#1080#1102' '#1088#1103#1076#1086#1084' '#1089' '
              #1082#1086#1084#1087#1100#1102#1090#1077#1088#1086#1084' '#1086#1076#1085#1086#1081' '#1085#1086#1074#1077#1085#1100#1082#1086#1081' '#1088#1072#1073#1086#1090#1085#1080#1094#1099'. '#1052#1072#1096#1080#1085#1072#1083#1100#1085#1086' '#1087#1088#1086#1093#1086#1078#1091' '
              #1076#1072#1083#1100#1096#1077', '#1085#1086' '#1090#1091#1090' '#1087#1086#1085#1080#1084#1072#1102', '#1095#1090#1086' '#1095#1090#1086'-'#1090#1086' '#1085#1077' '#1090#1072#1082'. '#1042#1077#1088#1085#1091#1083#1089#1103', '
              #1095#1080#1090#1072#1102':<br><br>&quot;'#1054#1090#1077#1090' '#1086' '#1088#1086#1076#1077#1083#1085#1085#1086' '#1088#1073#1086#1090#1077' '#1079'...&quot;. '#1048' '#1090#1072#1082' '
              #1076#1072#1083#1077#1077'. '#1042#1086#1086#1073#1097#1077' '#1101#1090#1086' '#1076#1086#1083#1078#1085#1086' '#1074#1099#1075#1083#1103#1076#1077#1090#1100' '#1082#1072#1082' &quot;'#1054#1090#1095#1077#1090' '#1086' '
              #1087#1088#1086#1076#1077#1083#1072#1085#1085#1086#1081' '#1088#1072#1073#1086#1090#1077' '#1079#1072' '#1090#1072#1082#1080#1077'-'#1090#1086' '#1095#1080#1089#1083#1072'&quot;, '#1085#1086' '#1090#1072#1084' '#1080' '#1085#1077' '#1087#1072#1093#1083#1086' '
              #1101#1090#1080#1084'. '#1059#1079#1085#1072#1102', '#1095#1090#1086' '#1089#1083#1091#1095#1080#1083#1086#1089#1100'. '#1054#1082#1072#1079#1099#1074#1072#1077#1090#1089#1103', '#1076#1077#1074#1091#1096#1082#1072' '#1084#1085#1086#1075#1086' '#1075#1076#1077' '
              #1095#1080#1090#1072#1083#1072', '#1095#1090#1086', '#1088#1072#1073#1086#1090#1072#1103' '#1079#1072' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1086#1084', '#1085#1091#1078#1085#1086' '#1087#1080#1090#1100' '#1082#1086#1092#1077'. '#1048' '#1091' '
              #1084#1085#1086#1075#1080#1093' '#1074' '#1086#1090#1076#1077#1083#1077' '#1095#1072#1096#1082#1080' '#1088#1103#1076#1086#1084' '#1089#1090#1086#1103#1090'. '#1053#1072#1083#1080#1083#1072' '#1086#1085#1072' '#1089#1077#1073#1077' '#1095#1072#1096#1077#1095#1082#1091', '
              #1089#1090#1072#1083#1072' '#1087#1080#1090#1100'. '#1040' '#1087#1086#1090#1086#1084', &quot;'#1085#1077#1095#1072#1103#1085#1085#1086'&quot;, '#1082#1086#1092#1077' '#1091#1087#1072#1083#1086' '#1085#1072' '
              #1082#1083#1072#1074#1080#1072#1090#1091#1088#1091', '#1079#1072#1083#1080#1083#1086' '#1083#1077#1074#1091#1102' '#1095#1072#1089#1090#1100' '#1080' '#1091#1073
              
                #1080#1083#1086' '#1077#1077'. '#1053#1086' '#1088#1072#1073#1086#1090#1072#1090#1100'-'#1090#1086' '#1085#1091#1078#1085#1086'. '#1040', '#1090#1072#1082' '#1082#1072#1082' '#1074' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103#1093' '#1085#1080#1095#1077#1075#1086' '#1085#1077 +
                ' '
              #1089#1082#1072#1079#1072#1085#1086' '#1087#1088#1086' '#1075#1088#1072#1084#1086#1090#1085#1086#1089#1090#1100' (!), '#1076#1077#1074#1091#1096#1082#1072' '#1088#1077#1096#1080#1083#1072', '#1095#1090#1086' '#1080' '#1090#1072#1082' '
              #1089#1086#1081#1076#1077#1090'.<br><br>'#1071' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1103#1102', '#1082#1072#1082' '#1085#1072#1096#1077' '#1085#1072#1095#1072#1083#1100#1089#1090#1074#1086' '#1087#1077#1088#1077#1074#1086#1076#1080#1083#1086' '
              #1073#1099' '#1101#1090#1080' '#1080#1077#1088#1086#1075#1083#1080#1092#1099'. '#1047#1072#1090#1086' '#1076#1077#1074#1091#1096#1082#1072' '#1073#1086#1083#1100#1096#1077' '#1085#1077' '#1087#1100#1077#1090' '#1082#1086#1092#1077' '#1085#1072' '
              #1088#1072#1073#1086#1090#1077'...</p>'
              '<p class="storytags"><a href="/bytag/keyboard">'#1082#1083#1072#1074#1080#1072#1090#1091#1088#1099'</a>, '
              '<a href="/bytag/boss">'#1085#1072#1095#1072#1083#1100#1089#1090#1074#1086'</a>, <a '
              'href="/bytag/nonenlightened">'#1085#1077#1089#1087#1077#1094#1080#1072#1083#1080#1089#1090#1099'</a>, <a '
              'href="/bytag/women">'#1087#1088#1077#1082#1088#1072#1089#1085#1099#1081' '#1087#1086#1083'</a>, <a '
              'href="/bytag/sysadminish">'#1089#1080#1089#1072#1076#1084#1080#1085#1089#1082#1086#1077'</a></p><p class="date"> '
              
                '<a href="/vote/571" onclick="vote(571); return false;">'#1069#1090#1072' '#1080#1089#1090#1086#1088 +
                #1080#1103' '
              #1084#1085#1077' '#1087#1086' '#1085#1088#1072#1074#1091'!</a> <span id="res571" style="font-style: '
              'italic;"></span></p></div>'
              ''
              '<div class="lb">&nbsp;</div>'
              '<div class="text">'
              '    <h3><a href="/story/570">#570: '#1050#1086#1090#1091' '#1087#1086#1076' '#1093#1074#1086#1089#1090'</a></h3>'
              '<p class="date">4 '#1092#1077#1074#1088#1072#1083#1103' 2009, 20:30<p class="date">'#1088#1077#1081#1090#1080#1085#1075': '
              '825'
              '<p class="text">'#1056#1072#1073#1086#1090#1072#1083' '#1072#1076#1084#1080#1085#1086#1084' '#1074' '#1086#1076#1085#1086#1081' '#1082#1086#1085#1090#1086#1088#1077'. '#1042#1086#1079#1085#1080#1082#1083#1072' '
              #1085#1077#1086#1073#1093#1086#1076#1080#1084#1086#1089#1090#1100' '#1087#1088#1086#1090#1103#1085#1091#1090#1100' '#1089#1077#1090#1100' '#1082' '#1074#1085#1086#1074#1100' '#1087#1086#1089#1090#1072#1074#1083#1077#1085#1085#1086#1081' '#1084#1072#1096#1080#1085#1077'. '#1040' '
              #1089#1090#1077#1085#1099' '#1079#1072#1096#1080#1090#1099' '#1087#1086#1083#1099#1084' '#1074#1085#1091#1090#1088#1080', '#1088#1080#1092#1083#1077#1085#1099#1084' '#1076#1077#1082#1086#1088#1072#1090#1080#1074#1085#1099#1084' '
              #1087#1083#1072#1089#1090#1080#1082#1086#1084'. '#1055#1086#1076' '#1085#1080#1084' '#1082#1072#1073#1077#1083#1100' '#1085#1080#1082#1072#1082' '#1085#1077' '#1087#1088#1086#1090#1103#1085#1091#1090#1100' ('#1082#1088#1077#1087#1083#1077#1085#1080#1103' '
              #1087#1072#1085#1077#1083#1100#1085#1086#1075#1086' '#1087#1083#1072#1089#1090#1080#1082#1072' '#1084#1077#1096#1072#1102#1090'), '#1082#1072#1073#1077#1083#1100'-'#1082#1072#1085#1072#1083' '#1085#1077' '#1082#1080#1085#1091#1090#1100' - '#1085#1077' '
              #1082#1088#1072#1089#1080#1074#1086'... '#1042' '#1086#1073#1097#1077#1084', '#1087#1091#1089#1090#1080#1083' '#1082#1072#1073#1077#1083#1100' '#1087#1088#1103#1084#1086' '#1074#1085#1091#1090#1088#1080' '#1101#1090#1086#1075#1086' '#1087#1083#1072#1089#1090#1080#1082#1072' '
              '('#1090#1103#1085#1091#1083' '#1089' '#1087#1086#1090#1086#1083#1082#1072'), '#1087#1086#1089#1090#1072#1074#1080#1083' '#1088#1086#1079#1077#1090#1082#1091'. '#1042#1089#1077' '#1085#1086#1088#1084#1072#1083#1100#1085#1086' '
              #1088#1072#1073#1086#1090#1072#1077#1090'.<br><br>'#1063#1077#1088#1077#1079' '#1085#1077#1089#1082#1086#1083#1100#1082#1086' '#1076#1085#1077#1081' '#1084#1072#1096#1080#1085#1072' '#1087#1088#1086#1087#1072#1076#1072#1077#1090' '#1080#1079' '
              #1089#1077#1090#1080'. '#1042#1089#1077' '#1085#1072#1089#1090#1088#1086#1081#1082#1080' '#1087#1077#1088#1077#1082#1086#1087#1072#1083' - '#1085#1086#1083#1100' '#1101#1084#1086#1094#1080#1081', '#1087#1080#1085#1075#1080' '#1085#1077' '#1093#1086#1076#1103#1090'. '#1048' '
              #1090#1086#1083#1100#1082#1086' '#1084#1080#1085#1091#1090' '#1095#1077#1088#1077#1079' 15 '#1103' '#1079#1072#1084#1077#1090#1080#1083', '#1095#1090#1086' '#1087#1088#1103#1084#1086' '#1085#1072#1076' '#1089#1077#1090#1077#1074#1086#1081' '
              #1088#1086#1079#1077#1090#1082#1086#1081' '#1089#1090#1086#1080#1090' '#1085#1086#1074#1077#1085#1100#1082#1072#1103' '#1086#1073#1099#1095#1085#1072#1103' '#1088#1086#1079#1077#1090#1082#1072' '#1085#1072' 220... '
              #1045#1089#1090#1077#1089#1090#1074#1077#1085#1085#1086', '#1082#1086#1075#1076#1072' '#1074' '#1087#1083#1072#1089#1090#1080#1082#1077' '#1076#1077#1083#1072#1083#1080' '#1086#1090#1074#1077#1088#1089#1090#1080#1077' '#1087#1086#1076' '#1088#1086#1079#1077#1090#1082#1091', '
              #1087#1077#1088#1077#1088#1077#1079#1072#1083#1080' '#1074#1080#1090#1091#1102' '#1087#1072#1088#1091', '#1080' '#1085#1072' '#1101#1090#1086#1084' '#1074#1089#1077'...</p>'
              '<p class="storytags"><a '
              'href="/bytag/jamshooting">'#1076#1078#1072#1084#1096#1091#1090#1080#1085#1075'</a>, <a '
              'href="/bytag/cables">'#1082#1072#1073#1077#1083#1080'</a></p><p class="date"> <a '
              
                'href="/vote/570" onclick="vote(570); return false;">'#1069#1090#1072' '#1080#1089#1090#1086#1088#1080#1103' ' +
                #1084#1085#1077' '
              #1087#1086' '#1085#1088#1072#1074#1091'!</a> <span id="res570" style="font-style: '
              'italic;"></span></p></div>'
              ''
              '<div class="lb">&nbsp;</div>'
              '<div class="text">'
              '    <h3><a href="/story/569">#569: '#1052#1099#1096#1080#1085#1072#1103' '#1092#1077#1103'</a></h3>'
              '<p class="date">4 '#1092#1077#1074#1088#1072#1083#1103' 2009, 20:30<p class="date">'#1088#1077#1081#1090#1080#1085#1075': '
              '1466'
              '<p class="text">'#1059#1089#1090#1088#1086#1080#1083#1089#1103' '#1103' '#1082#1072#1082'-'#1090#1086' '#1074' '#1086#1076#1085#1091' '#1082#1086#1085#1090#1086#1088#1091'. '#1040#1076#1084#1080#1085' '#1090#1072#1084' '
              #1073#1099#1083' '#1087#1088#1080#1093#1086#1076#1103#1097#1080#1081' '#1087#1086' '#1074#1099#1079#1086#1074#1091' ('#1080#1085#1086#1075#1076#1072' '#1074' '#1090#1077#1095#1077#1085#1080#1080' 2-3 '#1076#1085#1077#1081'), '#1072' '
              #1087#1086#1089#1082#1086#1083#1100#1082#1091' '#1103' '#1085#1077#1089#1082#1086#1083#1100#1082#1086' '#1088#1072#1079' '#1079#1072#1089#1074#1077#1090#1080#1083#1089#1103' &quot;'#1082#1086#1084#1087#1100#1102#1090#1077#1088#1085#1086#1081' '
              #1075#1088#1072#1084#1086#1090#1085#1086#1089#1090#1100#1102'&quot; - '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1080', '#1095#1091#1090#1100' '#1095#1090#1086', '#1079#1074#1072#1083#1080' '#1084#1077#1085#1103', '#1087#1088#1080#1095#1077#1084' '
              #1089#1082#1086#1088#1086' '#1091#1078#1077' '#1089#1095#1080#1090#1072#1083#1080' '#1101#1090#1086' '#1089#1072#1084#1080#1084' '#1089#1086#1073#1086#1081' '#1088#1072#1079#1091#1084#1077#1102#1097#1080#1084#1089#1103' ('#1093#1086#1090#1100' '
              #1088#1072#1073#1086#1090#1072#1083' '#1103' '#1101#1083#1077#1082#1090#1088#1086#1084#1077#1093#1072#1085#1080#1082#1086#1084').<br><br>'#1044#1077#1083#1086' '#1101#1090#1086' '#1073#1099#1083#1086' '#1074' '#1101#1087#1086#1093#1091', '
              #1082#1086#1075#1076#1072' '#1086#1087#1090#1080#1095#1077#1089#1082#1080#1093' '#1084#1099#1096#1077#1081' '#1085#1077' '#1073#1099#1083#1086' '#1080' '#1074' '#1087#1086#1084#1080#1085#1077'. '#1057#1090#1072#1085#1076#1072#1088#1090#1085#1072#1103' '
              #1089#1080#1090#1091#1072#1094#1080#1103': '#1079#1086#1074#1091#1090' '#1087#1086' '#1087#1086#1074#1086#1076#1091' '#1087#1083#1086#1093#1086' '#1087#1086#1083#1079#1091#1102#1097#1077#1081' '#1084#1099#1096#1080', '#1089#1088#1072#1079#1091' '
              #1076#1077#1083#1072#1077#1090#1089#1103' '#1074#1089#1082#1088#1099#1090#1080#1077', '#1088#1086#1083#1080#1082#1080' '#1080' '#1096#1072#1088#1080#1082' '#1095#1080#1089#1090#1103#1090#1089#1103'. '#1040' '#1074' '#1082#1086#1085#1094#1077' '
              #1087#1086#1082#1072#1079#1099#1074#1072#1077#1090#1089#1103', <i>'#1082#1072#1082'</i> '#1074#1087#1088#1077#1076#1100' '#1085#1072#1076#1086' '#1095#1080#1089#1090#1080#1090#1100' '#1084#1099#1096#1100' '#1080' '
              #1087#1088#1080#1085#1080#1084#1072#1102#1090#1089#1103' '#1087#1086#1090#1086#1082#1080' '#1073#1083#1072#1075#1086#1076#1072#1088#1085#1086#1089#1090#1080', '#1074#1086#1089#1090#1086#1088#1078#1077#1085#1085#1099#1077' '#1074#1079#1075#1083#1103#1076#1099', '
              '&quot;'#1091#1093' '#1090#1099', '#1082#1072#1082#1086#1081' '#1086#1085' '#1091#1084#1085#1099#1081'&quot; '#1080' '#1074#1089#1077' '#1090#1072#1082#1086#1077'. '#1052#1077#1083#1086#1095#1100', '#1085#1086' '
              #1087#1088#1080#1103#1090#1085#1086'. '#1042#1089#1082#1086#1088#1077' '#1091#1078#1077' '#1074' '#1082#1086#1085#1090#1086#1088#1077' '#1074#1089#1077' '#1089#1072#1084#1080' '#1095#1080#1089#1090#1080#1083#1080', '#1088#1072#1076#1086#1089#1090#1085#1086' '
              #1076#1086#1082#1083#1072#1076#1099#1074#1072#1103' '#1086' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072#1093'.<br><br>'#1048' '#1090#1091#1090'... '#1087#1088#1080#1093#1086#1078#1091' '#1082' '#1086#1076#1085#1086#1081' '
              #1084#1072#1076#1072#1084#1077', '#1090#1080#1087#1072' '#1075#1083#1072#1074#1073#1091#1093', '#1086#1085#1072' '#1090#1086#1078#1077' '#1078#1072#1083#1091#1077#1090#1089#1103' '#1085#1072' '#1084#1099#1096#1091'. '#1048#1076#1077#1084' '#1087#1086' '
              #1089#1090#1072#1085#1076#1072#1088#1090#1085#1086#1081' '#1089#1093#1077#1084#1077'. '#1059#1078#1077' '#1091#1093#1086#1076#1103', '#1089#1087#1088#1072#1096#1080#1074#1072#1102':<br>- '#1055#1086#1085#1103#1090#1085#1086'?<br>'#1042' '
              #1086#1090#1074#1077#1090', '#1084#1072#1076#1072#1084#1072' '#1074#1089#1090#1072#1077#1090' '#1074#1086' '#1074#1077#1089#1100' '#1088#1086#1089#1090', '#1074#1099#1087#1091#1095#1080#1074#1072#1077#1090' '#1075#1083#1072#1079#1072' '#1080' '
              #1086#1088#1077#1090':<br>- '#1063#1090#1086'?! '#1069#1090#1086', '#1071' '#1095#1090#1086' '#1083#1080', '#1087#1086'-'#1074#1072#1096#1077#1084#1091', '#1076#1086#1083#1078#1085#1072' '#1084#1099#1096#1100' '#1095#1080#1089#1090#1080#1090#1100
              '?? '#1071' '#1076#1086#1083#1078#1085#1072' '#1069#1058#1048#1052' '#1079#1072#1085#1080#1084#1072#1090#1100#1089#1103'??<br><br>'#1071' '#1086#1092#1080#1075#1077#1083', '#1085#1086' '#1085#1080#1095#1077#1075#1086' '#1085#1077' '
              #1089#1082#1072#1079#1072#1083'. '#1069#1090#1086' '#1103', '#1074#1080#1076#1080#1084#1086', '#1090#1072#1082#1086#1081' '#1076#1086#1073#1088#1099#1081' '#1074#1086#1083#1096#1077#1073#1085#1080#1082', '#1082#1086#1090#1086#1088#1099#1081' '
              #1079#1072#1085#1080#1084#1072#1077#1090#1089#1103' '#1080#1089#1082#1083#1102#1095#1080#1090#1077#1083#1100#1085#1086' '#1095#1080#1089#1090#1082#1086#1081' '#1084#1099#1096#1077#1081'...<br></p>'
              ''
              '<p class="storytags"><a href="/bytag/longago">'#1076#1072#1074#1085#1099#1084'-'#1076#1072#1074#1085#1086'</a>, '
              '<a href="/bytag/idiots">'#1080#1076#1080#1086#1090#1099'</a>, <a '
              'href="/bytag/women">'#1087#1088#1077#1082#1088#1072#1089#1085#1099#1081' '#1087#1086#1083'</a></p><p class="date"> <a '
              
                'href="/vote/569" onclick="vote(569); return false;">'#1069#1090#1072' '#1080#1089#1090#1086#1088#1080#1103' ' +
                #1084#1085#1077' '
              #1087#1086' '#1085#1088#1072#1074#1091'!</a> <span id="res569" style="font-style: '
              'italic;"></span></p></div>'
              '<div class="lb">&nbsp;</div>'
              '<div class="text">'
              '    <h3><a href="/story/568">#568: '#1061#1086#1083#1086#1076#1085#1072#1103' '#1075#1086#1083#1086#1074#1072', '#1075#1086#1088#1103#1095#1077#1077' '
              #1089#1077#1088#1076#1094#1077' '#1080' '#1083#1086#1074#1082#1080#1077' '#1088#1091#1082#1080'</a></h3>'
              '<p class="date">4 '#1092#1077#1074#1088#1072#1083#1103' 2009, 20:30<p class="date">'#1088#1077#1081#1090#1080#1085#1075': '
              '1500'
              '<p class="text">'#1055#1086#1076#1072#1088#1080#1083' '#1076#1074#1086#1102#1088#1086#1076#1085#1086#1081' '#1089#1077#1089#1090#1088#1077' (13 '#1083#1077#1090') '#1085#1072' '#1044#1056' '#1076#1083#1103' '
              #1091#1095#1077#1073#1099' '#1087#1088#1080#1085#1090#1077#1088' Epson Stylus C45 '#1089' '#1087#1086#1076#1088#1086#1073#1085#1086#1081' '#1079#1072#1074#1086#1076#1089#1082#1086#1081' '
              #1080#1085#1089#1090#1088#1091#1082#1094#1080#1077#1081' '#1074' '#1082#1072#1088#1090#1080#1085#1082#1072#1093' '#1087#1086' '#1079#1072#1084#1077#1085#1077' '#1082#1072#1088#1090#1088#1080#1076#1078#1077#1081'. '#1045#1089#1090#1077#1089#1090#1074#1077#1085#1085#1086', '
              #1075#1086#1090#1086#1074#1099#1081' '#1082' '#1088#1072#1073#1086#1090#1077' ('#1090#1086#1083#1100#1082#1086' '#1095#1077#1088#1085#1080#1083#1072' '#1091#1089#1087#1077#1083' '#1087#1086#1090#1088#1072#1090#1080#1090#1100' '#1076#1086' '#1087#1086#1083#1086#1074#1080#1085#1099' - '
              #1087#1088#1086#1084#1099#1074#1082#1072', '#1087#1088#1086#1073#1085#1072#1103' '#1087#1077#1095#1072#1090#1100'). '#1044#1088#1086#1074#1072' '#1087#1086#1089#1090#1072#1074#1080#1083'. '#1043#1086#1074#1086#1088#1102':<br>- '#1042#1089#1077' '
              #1088#1072#1073#1086#1090#1072#1077#1090'. '#1055#1086#1076#1082#1083#1102#1095#1072#1077#1090#1077' '#1101#1090#1086#1090' '#1096#1085#1091#1088' '#1089#1102#1076#1072' (USB) '#1080' '#1087#1077#1095#1072#1090#1072#1077#1090#1077'. '
              #1055#1086#1085#1103#1083#1080'?<br>- '#1044#1072'.<br><br>'#1055#1088#1086#1093#1086#1076#1080#1090' '#1085#1077#1076#1077#1083#1103', '#1079#1074#1086#1085#1086#1082':<br>- '#1056#1077#1096#1080#1083#1080' '
              #1087#1086#1076#1082#1083#1102#1095#1080#1090#1100' '#1087#1088#1080#1085#1090#1077#1088' - '#1082#1072#1082' '#1082#1072#1088#1090#1088#1080#1076#1078' '#1084#1077#1085#1103#1090#1100'?<br>- '#1044#1072' '#1090#1072#1084' '
              #1087#1086#1083#1086#1074#1080#1085#1072' '#1077#1097#1077' '#1095#1077#1088#1085#1080#1083' '#1077#1089#1090#1100'. '#1050#1086#1085#1095#1072#1090#1089#1103' - '#1086#1085' '#1089#1072#1084' '#1089#1082#1072#1078#1077#1090', '#1082#1086#1075#1076#1072' '#1080' '
              #1082#1072#1082' '#1084#1077#1085#1103#1090#1100', '#1080' '#1087#1086#1096#1072#1075#1086#1074#1091#1102' '#1080#1085#1089#1090#1088#1091#1082#1094#1080#1102' '#1074#1099#1076#1072#1089#1090'.<br>- '
              #1055#1086#1085#1103#1083#1080'.<br><br>'#1055#1088#1086#1093#1086#1076#1080#1090' '#1077#1097#1077' '#1085#1077#1089#1082#1086#1083#1100#1082#1086' '#1076#1085#1077#1081'.<br>- '#1053#1077' '
              #1088#1072#1073#1086#1090#1072#1077#1090'!<br>- '#1050#1072#1082' '#1090#1072#1082'? '#1063#1090#1086' '#1076#1077#1083#1072#1083#1080'?<br>- '#1050#1072#1088#1090#1088#1080#1076#1078' '#1084#1077#1085#1103#1083#1080'.<br>- '
              #1047#1072#1095#1077#1084'? '#1042#1089#1077' '#1085#1086#1088#1084#1072#1083#1100#1085#1086' '#1076#1086#1083#1078#1085#1086' '#1073#1099#1090#1100'.<br>- '#1053#1091', '#1090#1072#1084' '#1074' '#1082#1086#1084#1087#1083#1077#1082#1090#1077' '
              #1077#1097#1077' '#1076#1074#1072' '#1079#1072#1087#1072#1082#1086#1074#1072#1085#1085#1099#1093' '#1083#1077#1078#1072#1083#1086' - '#1084#1099' '#1088#1077#1096#1080#1083#1080' '#1087#1086#1084#1077#1085#1103#1090#1100' '#1089#1088#1072#1079#1091'.<br>- '
              #1040' '#1095#1090#1086' '#1085#1077' '#1088#1072#1073#1086#1090#1072#1077#1090'?<br>- '#1053#1091', '#1084#1099' '#1086#1076#1080#1085' '#1082#1072#1088#1090#1088#1080#1076#1078' '#1087#1086#1084#1077#1085#1103#1083#1080', '#1072' '
              #1074#1090#1086#1088#1086#1081' '#1085#1077' '#1084#1086#1078#1077#1084', '#1080' '#1087#1088#1080#1085#1090#1077#1088' '#1085#1077' '#1088#1072#1073#1086#1090#1072#1077#1090' '
              #1090#1077#1087#1077#1088#1100'...<br><br>'#1053#1072#1095#1080#1085#1072#1102' '#1088#1072#1079#1073#1080#1088#1072#1090#1100#1089#1103', '#1082#1072#1082' '#1084#1077#1085#1103#1083#1080', '#1082#1072#1082#1080#1077' '#1086#1082#1085#1072' '
              #1086#1090#1082#1088#1099#1074#1072#1083#1080#1089#1100' '#1076#1088#1072#1081#1074#1077#1088#1086#1084' '#1087#1088#1080#1085#1090#1077#1088#1072', '#1074#1089#1077' '#1083#1080' '#1087#1086' '#1087#1086#1088#1103#1076#1082#1091' '#1076#1077#1083#1072#1083#1080'. '
              #1042#1099#1103#1089#1085#1103#1077#1090#1089#1103', '#1095#1090#1086' '#1087#1086#1084#1077#1085#1103#1090#1100' '#1088#1077#1096#1080#1083#1080' '#1089#1072#1084#1080', '#1088#1091#1082#1072#1084#1080'. '#1040' '#1075#1086#1083#1086#1074#1082#1072'-'#1090#1086' '
              #1079#1072#1077#1079#1078#1072#1077#1090' '#1085#1072' '#1087#1072#1088#1082#1086#1074#1082#1091' '#1087#1086#1089#1083#1077' '#1074#1082#1083#1102#1095#1077#1085#1080#1103' '#1080' '#1087#1077#1095#1072#1090#1080'... '#1053#1086' '#1074#1099#1093#1086#1076' '#1073#1099#1083' '
              #1073#1099#1089#1090#1088#1086' '#1085#1072#1081#1076#1077#1085':<br><br>- '#1071' '#1085#1072' '#1087#1077#1095#1072#1090#1100' '#1085#1072#1078#1072#1083#1072', - '
              #1088#1072#1079#1086#1090#1082#1088#1086#1074#1077#1085#1085#1080#1095#1072#1083#1072#1089#1100' '#1089#1077#1089#1090#1088#1072', - '#1084#1085#1077' '#1087#1072#1087#1072' '#1075#1086#1083#1086#1074#1082#1091' '#1087#1088#1080#1085#1090#1077#1088#1072' '
              #1088#1091#1082#1072#1084#1080' '#1087#1086#1081#1084#1072#1083' '#1080' '#1076#1077#1088#1078#1072#1083', '#1072' '#1103' '#1084#1077#1085#1103#1083#1072' '#1082#1072#1088#1090#1088#1080#1076#1078'. '#1053#1086' '#1076#1086' '#1074#1090#1086#1088#1086#1075#1086' '#1085#1077' '
              #1076#1086#1073#1088#1072#1083#1072#1089#1100' - '#1086#1085' '#1091#1089#1087#1077#1083' '#1079#1072#1077#1093#1072#1090#1100' '#1087#1086#1076' '#1082#1088#1099#1096#1082#1091', '#1072' '#1090#1077#1087#1077#1088#1100' '#1087#1086#1095#1077#1084#1091'-'#1090#1086' '#1085#1080' '
              #1090#1091#1076#1072' '#1080' '#1085#1080' '#1089#1102#1076#1072'! '#1058#1099' '#1085#1072#1084' '#1087#1083#1086#1093#1086#1081' '#1087#1088#1080#1085#1090#1077#1088' '#1087#1086#1076#1072#1088#1080#1083'!<br><br>'#1058#1077#1087#1077#1088#1100' '
              #1090#1086#1083#1100#1082#1086' '#1096#1086#1082#1086#1083#1072#1076' '#1080' '#1082#1086#1085#1092#1077#1090#1099' '#1076#1072#1088#1102' - '#1080#1084#1080'-'#1090#1086' '#1086#1085#1072' '#1090#1086#1095#1085#1086' '#1079#1085#1072#1077#1090' '#1082#1072#1082' '
              #1087#1086#1083#1100#1079#1086#1074#1072#1090#1100#1089#1103'.</p>'
              ''
              '<p class="storytags"><a href="/bytag/kids">'#1076#1077#1090#1080'</a>, <a '
              'href="/bytag/nonenlightened">'#1085#1077#1089#1087#1077#1094#1080#1072#1083#1080#1089#1090#1099'</a>, <a '
              'href="/bytag/officetech">'#1086#1088#1075#1090#1077#1093#1085#1080#1082#1072'</a>, <a '
              'href="/bytag/women">'#1087#1088#1077#1082#1088#1072#1089#1085#1099#1081' '#1087#1086#1083'</a></p><p class="date"> <a '
              
                'href="/vote/568" onclick="vote(568); return false;">'#1069#1090#1072' '#1080#1089#1090#1086#1088#1080#1103' ' +
                #1084#1085#1077' '
              #1087#1086' '#1085#1088#1072#1074#1091'!</a> <span id="res568" style="font-style: '
              'italic;"></span></p></div>'
              '<div class="lb">&nbsp;</div>'
              '<div class="selector"><span '
              'class="cur"><b>58</b></span><span><a '
              'href="/page/57">57</a></span><span><a '
              'href="/page/56">56</a></span><span><a '
              'href="/page/55">55</a></span><span><a '
              'href="/page/54">54</a></span><span><a '
              'href="/page/53">53</a></span><span><a '
              'href="/page/52">52</a></span><span><a '
              'href="/page/51">51</a></span><span><a '
              'href="/page/50">50</a></span>&bull;<span><a '
              'href="/page/3">3</a></span><span><a '
              'href="/page/2">2</a></span><span><a '
              'href="/page/1">1</a></span></div><div class="lb">&nbsp;</div>'#9#9
              #9'</td>'
              ''
              #9#9#9'<td class="side" width="240" '
              'align="center">'
              #9#9#9#9#9#9#9#9
              '<div class="rightname">'
              #9#9#9#9#9#1085#1086#1074#1086#1089#1090#1080
              #9#9#9#9'</div>'
              #9#9#9#9'<div class="rightbox">'
              #9#9#9#9#9'<b>9 '#1076#1077#1082#1072#1073#1088#1103' '
              '2008</b><br>'
              #9#9#9#9#9#1058#1077#1087#1077#1088#1100' '#1082' '#1074#1072#1096#1080#1084' '
              #1091#1089#1083#1091#1075#1072#1084' - '#1090#1101#1075#1080'. '#1041#1086#1083#1100#1096#1072#1103' '#1087#1088#1086#1089#1100#1073#1072' '#1089#1085#1072#1095#1072#1083#1072' '#1086#1073#1085#1086#1074#1080#1090#1100' CSS '
              #1087#1088#1080#1085#1091#1076#1080#1090#1077#1083#1100#1085#1099#1084' '#1088#1077#1092#1088#1077#1096#1077#1084' '#1089#1090#1088#1072#1085#1080#1094#1099', '#1077#1089#1083#1080' '#1074#1099' '#1076#1091#1084#1072#1077#1090#1077', '#1095#1090#1086' '
              #1095#1090#1086'-'#1090#1086' '#1074#1099#1075#1083#1103#1076#1080#1090' '#1085#1077' '#1090#1072#1082'. '#1045#1089#1083#1080' '#1091' '#1074#1072#1089' '#1077#1089#1090#1100' '#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1103' '#1080#1083#1080' '
              #1079#1072#1084#1077#1095#1072#1085#1080#1103' - '#1087#1080#1096#1080#1090#1077' '#1074' '#1089#1072#1087#1087#1086#1088#1090'.<br><br>'#1058#1072#1082#1078#1077' '#1093#1086#1090#1077#1083#1086#1089#1100' '#1073#1099' '
              #1085#1072#1087#1086#1084#1085#1080#1090#1100' '#1088#1103#1076#1091' '#1095#1080#1090#1072#1090#1077#1083#1077#1081', '#1095#1090#1086' '#1101#1090#1086' - '#1085#1077' '#1094#1080#1090#1072#1090#1085#1080#1082'. '#1057#1102#1076#1072' '#1094#1080#1090#1072#1090#1099' '
              #1089#1083#1072#1090#1100' '#1085#1077' '#1085#1072#1076#1086'. '#1057#1102#1076#1072' '#1085#1072#1076#1086' '#1089#1083#1072#1090#1100' '#1080#1089#1090#1086#1088#1080#1080' '#1080' '#1090#1086#1083#1100#1082#1086' '#1080#1089#1090#1086#1088#1080#1080'. '
              #1062#1080#1090#1072#1090#1099' '#1085#1072#1076#1086' '#1089#1083#1072#1090#1100' '#1085#1072' '#1073#1072#1096#1086#1088#1075'. '#1057#1087#1072#1089#1080#1073#1086' '#1079#1072' '#1087#1086#1085#1080#1084#1072#1085#1080#1077'.'
              #9#9#9#9'</div>'
              #9#9#9#9#9#9#9#9
              '<div class="rightname">'
              ''
              #9#9#9#9#9#1090#1077#1082#1089#1090' '#1080#1083#1080' '#1085#1086#1084#1077#1088' '
              #1080#1089#1090#1086#1088#1080#1080
              #9#9#9#9'</div>'
              #9#9#9#9'<div class="rightbox">'
              #9#9#9#9#9'<form '
              'class="search" action="/" method="post">'
              #9#9#9#9#9#9'<input '
              'class="search" type="text" name="search" maxlength="256" '
              'value="">'
              #9#9#9#9#9#9'<input '
              'class="searchbutton" type="submit" value="'#1053#1072#1081#1090#1080'">'
              #9#9#9#9#9'</form>'
              #9#9#9#9'</div>'
              #9#9#9#9'<div class="rightempty">'
              ''
              #9#9#9#9'</div>'
              #9#9#9#9'<div class="rightmenu">'
              #9#9#9#9#9'<a '
              'href="/story/add/">'#1087#1088#1080#1089#1083#1072#1090#1100' '#1080#1089#1090#1086#1088#1080#1102'</a>'#9#9#9#9
              '</div>'
              #9#9#9#9'<div class="rightmenu">'
              #9#9#9#9#9'<a '
              'href="/top/">'#1083#1091#1095#1096#1080#1077' '#1080#1089#1090#1086#1088#1080#1080'</a>'#9#9#9#9
              '</div>'
              #9#9#9#9'<div class="rightmenu">'
              #9#9#9#9#9'<a '
              'href="/about/">'#1086' '#1087#1088#1086#1077#1082#1090#1077'</a>'#9#9#9#9
              '</div>'
              ''
              #9#9#9#9'<div class="rightmenu">'
              #9#9#9#9#9'<a '
              'href="/rss/">rss</a>'
              #9#9#9#9'</div>'
              #9#9#9#9'<div class="rightempty">'
              #9#9#9#9'</div>'
              #9#9#9#9'</div>'
              #9#9#9#9#9#9#9#9
              #9#9#9#9'<div class="rightname">'
              #9#9#9#9#9#1088#1077#1082#1083#1072#1084#1072
              #9#9#9#9'</div>'
              ''
              #9#9#9#9'<div class="ad">'
              #9#9#9#9#9'<iframe '
              'src="http://lol.bash.org.ru/_ad.php?zone=zone:6" '
              
                'allowtransparency="true" style="background-color:#eee;" width="2' +
                '40" '
              'height="180" marginwidth="0" marginheight="0" scrolling="no" '
              'frameborder="0"><a '
              'href='#39'http://lol.bash.org.ru/b/adclick.php?n=aad1eaf7'#39' '
              'target='#39'_blank'#39'><img '
              
                'src='#39'http://lol.bash.org.ru/b/adview.php?what=zone:6&amp;n=aad1e' +
                'a'
              'f7'#39' border='#39'0'#39' alt='#39#39'></a></iframe>'#9#9#9#9
              '</div>'
              #9#9#9#9#9#9#9#9
              '<div class="rightname">'
              #9#9#9#9#9#1086#1073#1088#1072#1090#1085#1072#1103' '#1089#1074#1103#1079#1100
              #9#9#9#9'</div>'
              #9#9#9#9'<div class="rightbox">'
              #9#9#9#9#9#1042#1086#1087#1088#1086#1089#1099', '
              #1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1103', '#1095#1090#1086'-'#1090#1086' '#1085#1077' '#1090#1072#1082' '#1085#1072' '#1089#1072#1081#1090#1077'? <b><a '
              'href="&#109;&#097;&#105;&#108;&#116;&#111;&#058;&#115;%75&#'
              '112;%70%6f&#114;&#116;&#064;&#105;&#116;%68&#097;%70&#112;'
              '%65%6e%73&#046;%72&#117;">'#1055#1080#1096#1080#1090#1077' '#1074' '#1089#1072#1087#1087#1086#1088#1090'!</a></b>'
              ''
              #9#9#9#9'</div>'
              #9#9#9#9#9#9#9#9
              '<div class="rightname">'
              #9#9#9#9#9#1085#1072' '#1089#1072#1081#1090#1077
              #9#9#9#9'</div>'
              #9#9#9#9'<div class="rightbox">'
              #9#9#9#9#9#1059#1090#1074#1077#1088#1078#1076#1077#1085#1086': '
              '577<br>'#1057#1077#1075#1086#1076#1085#1103': 2<br>'#1042' '#1088#1072#1089#1089#1084#1086#1090#1088#1077#1085#1080#1080': 122'
              #9#9#9#9'</div>'
              #9#9#9#9'<div class="rightname">'
              #9#9#9#9#9#1090#1101#1075#1080
              #9#9#9#9'</div>'
              ''
              #9#9#9#9'<div class="rightbox">'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg9"><nobr><a '
              'href="/bytag/1c">1'#1089'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/linux">linux</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg10"><nobr><a '
              'href="/bytag/windows">windows</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/antivirus">'#1072#1085#1090#1080#1074#1080#1088#1091#1089'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a href="/bytag/db">'#1073#1072#1079#1099' '
              #1076#1072#1085#1085#1099#1093'</a></nobr></span>'
              ''
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/security">'#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1100'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/buh">'#1073#1091#1093#1075#1072#1083#1090#1077#1088#1080#1103'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg13"><nobr><a '
              'href="/bytag/happens">'#1073#1099#1074#1072#1077#1090' '#1078#1077'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/webdev">'#1074#1077#1073'-'#1088#1072#1079#1088#1072#1073#1086#1090#1082#1072'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg10"><nobr><a '
              'href="/bytag/greatpeople">'#1074#1077#1083#1080#1082#1080#1077' '#1083#1102#1076#1080'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg10"><nobr><a '
              'href="/bytag/misunderstanding">'#1074#1079#1072#1080#1084#1086#1085#1077#1087#1086#1085#1080#1084#1072#1085#1080#1077'</a></nobr></'
              'span>'
              ''
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/virii">'#1074#1080#1088#1091#1089#1099'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/government">'#1075#1086#1089#1082#1086#1085#1090#1086#1088#1099'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg11"><nobr><a '
              'href="/bytag/longago">'#1076#1072#1074#1085#1099#1084'-'#1076#1072#1074#1085#1086'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/kids">'#1076#1077#1090#1080'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/jamshooting">'#1076#1078#1072#1084#1096#1091#1090#1080#1085#1075'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/manuals">'#1076#1086#1082#1091#1084#1077#1085#1090#1072#1094#1080#1103'</a></nobr></span>'
              ''
              #9#9#9#9#9#9#9#9
              #9'<span class="tg12"><nobr><a '
              'href="/bytag/hardware">'#1078#1077#1083#1077#1079#1086'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/animals">'#1078#1080#1074#1086#1090#1085#1099#1077'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/ups">'#1048#1041#1055'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/games">'#1080#1075#1088#1099'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg12"><nobr><a '
              'href="/bytag/idiots">'#1080#1076#1080#1086#1090#1099'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/indiancode">'#1080#1085#1076#1080#1081#1089#1082#1080#1081' '#1082#1086#1076'</a></nobr></span>'
              ''
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/foreigners">'#1080#1085#1086#1089#1090#1088#1072#1085#1094#1099'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg10"><nobr><a '
              'href="/bytag/internet">'#1080#1085#1090#1077#1088#1085#1077#1090'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg9"><nobr><a '
              'href="/bytag/cables">'#1082#1072#1073#1077#1083#1080'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/keyboard">'#1082#1083#1072#1074#1080#1072#1090#1091#1088#1099'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/displays">'#1084#1086#1085#1080#1090#1086#1088#1099'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg9"><nobr><a '
              'href="/bytag/riggers">'#1084#1086#1085#1090#1072#1078#1085#1080#1082#1080'</a></nobr></span>'
              ''
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/thoughts">'#1084#1099#1089#1083#1080' '#1086' '#1074#1077#1095#1085#1086#1084'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/compmice">'#1084#1099#1096#1082#1080' '
              #1082#1086#1084#1087#1100#1102#1090#1077#1088#1085#1099#1077'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg10"><nobr><a '
              'href="/bytag/boss">'#1085#1072#1095#1072#1083#1100#1089#1090#1074#1086'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg11"><nobr><a '
              'href="/bytag/nonenlightened">'#1085#1077#1089#1087#1077#1094#1080#1072#1083#1080#1089#1090#1099'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/datastorage">'#1085#1086#1089#1080#1090#1077#1083#1080' '#1076#1072#1085#1085#1099#1093'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg9"><nobr><a '
              'href="/bytag/officetech">'#1086#1088#1075#1090#1077#1093#1085#1080#1082#1072'</a></nobr></span>'
              ''
              #9#9#9#9#9#9#9#9
              #9'<span class="tg9"><nobr><a '
              'href="/bytag/email">'#1087#1086#1095#1090#1072'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg13"><nobr><a '
              'href="/bytag/women">'#1087#1088#1077#1082#1088#1072#1089#1085#1099#1081' '#1087#1086#1083'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg10"><nobr><a '
              'href="/bytag/providers">'#1087#1088#1086#1074#1072#1081#1076#1077#1088#1099'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg11"><nobr><a '
              'href="/bytag/programmism">'#1087#1088#1086#1075#1088#1072#1084#1084#1080#1079#1084#1099'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg9"><nobr><a '
              'href="/bytag/software">'#1087#1088#1086#1075#1088#1072#1084#1084#1099'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg9"><nobr><a '
              'href="/bytag/pranks">'#1088#1086#1079#1099#1075#1088#1099#1096#1080'</a></nobr></span>'
              ''
              #9#9#9#9#9#9#9#9
              #9'<span class="tg10"><nobr><a '
              'href="/bytag/support">'#1089#1072#1087#1087#1086#1088#1090'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/telecom">'#1089#1074#1103#1079#1100'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg10"><nobr><a '
              'href="/bytag/servers">'#1089#1077#1088#1074#1077#1088#1099'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg10"><nobr><a '
              'href="/bytag/network">'#1089#1077#1090#1100'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg14"><nobr><a '
              'href="/bytag/sysadminish">'#1089#1080#1089#1072#1076#1084#1080#1085#1089#1082#1086#1077'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg9"><nobr><a '
              'href="/bytag/service">'#1090#1077#1093#1089#1077#1088#1074#1080#1089'</a></nobr></span>'
              ''
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/only-in-russia">'#1090#1086#1083#1100#1082#1086' '#1074' '#1056#1086#1089#1089#1080#1080'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/remoteadmin">'#1091#1076#1072#1083#1077#1085#1085#1086#1077' '
              #1072#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/smarttech">'#1091#1084#1085#1072#1103' '#1090#1077#1093#1085#1080#1082#1072'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg12"><nobr><a '
              'href="/bytag/fuckups">'#1092#1072#1082#1072#1087#1099'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg9"><nobr><a '
              'href="/bytag/strangetech">'#1095#1091#1076#1077#1089#1072' '#1090#1077#1093#1085#1080#1082#1080'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/electricians">'#1101#1083#1077#1082#1090#1088#1080#1082#1080'</a></nobr></span>'
              ''
              #9#9#9#9#9#9#9#9
              #9'<span class="tg10"><nobr><a '
              'href="/bytag/lulsers">'#1102#1079#1074#1077#1088#1080'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/unix">unix</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/atm">'#1073#1072#1085#1082#1086#1084#1072#1090#1099'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              #9'<span class="tg8"><nobr><a '
              'href="/bytag/immortal">'#1082#1083#1072#1089#1089#1080#1082#1072'</a></nobr></span>'
              #9#9#9#9#9#9#9#9
              '</div>'
              #9#9#9#9'<div class="rightname">'
              #9#9#9#9#9#1083#1091#1095#1096#1080#1077' '#1087#1086#1089#1083#1077#1076#1085#1080#1093' '
              #1089#1077#1084#1080' '#1076#1085#1077#1081
              #9#9#9#9'</div>'
              ''
              #9#9#9#9#9#9#9#9
              '<div class="rightbox">'
              #9#9#9#9#9'1: #564 (4838) - <a '
              'href="/story/564">'#1042#1085#1077#1096#1085#1086#1089#1090#1100' '#1086#1073#1084#1072#1085#1095#1080#1074#1072'</a>'
              #9#9#9#9'</div>'
              #9#9#9#9#9#9#9#9
              '<div class="rightbox">'
              #9#9#9#9#9'2: #561 (4630) - <a '
              'href="/story/561">'#1041#1091#1076#1100' '#1087#1088#1086#1097#1077', '#1080' '#1090#1077#1073#1103' '#1086#1089#1090#1072#1074#1103#1090' '#1074' '#1087#1086#1082#1086#1077'</a>'
              #9#9#9#9'</div>'
              #9#9#9#9#9#9#9#9
              '<div class="rightbox">'
              ''
              #9#9#9#9#9'3: #556 (4615) - <a '
              'href="/story/556">'#1052#1085#1077' '#1073#1091#1076#1080#1083#1100#1085#1080#1082' '#1085#1080' '#1082' '#1095#1077#1084#1091', '#1087#1086#1090#1086#1084#1091' '#1095#1090#1086' '#1076#1086#1074#1077#1088#1103#1102' '#1103' '
              #1076#1086#1079#1074#1086#1085#1091' '#1090#1074#1086#1077#1084#1091'...</a>'
              #9#9#9#9'</div>'
              #9#9#9#9#9#9#9#9
              '<div class="rightbox">'
              #9#9#9#9#9'4: #548 (3501) - <a '
              'href="/story/548">'#1040' '#1075#1076#1077' '#1078#1077' '#1074#1080#1085#1086#1074#1085#1080#1094#1072' '#1090#1086#1088#1078#1077#1089#1090#1074#1072'?</a>'
              #9#9#9#9'</div>'
              #9#9#9#9#9#9#9#9
              '<div class="rightbox">'
              #9#9#9#9#9'5: #550 (2962) - <a '
              'href="/story/550">'#1052#1086#1103' '#1093#1072#1090#1072' '#1089' '#1082#1088#1072#1102', '#1085#1080#1095#1077#1075#1086' '#1085#1077' '#1079#1085#1072#1102'</a>'
              ''
              #9#9#9#9'</div>'
              #9#9#9#9#9#9#9#9
              '<div class="rightbox">'
              #9#9#9#9#9'6: #547 (2684) - <a '
              'href="/story/547">'#1048' '#1084#1089#1090#1103' '#1084#1086#1103' '#1089#1090#1088#1072#1096#1085#1072'...</a>'
              #9#9#9#9'</div>'
              #9#9#9#9#9#9#9#9
              '<div class="rightbox">'
              #9#9#9#9#9'7: #549 (2598) - <a '
              'href="/story/549">'#1041#1088#1072#1090' '#1087#1086' '#1088#1072#1079#1091#1084#1091'</a>'
              #9#9#9#9'</div>'
              ''
              #9#9#9#9#9#9#9#9
              '<div class="rightbox">'
              #9#9#9#9#9'8: #572 (2390) - <a '
              'href="/story/572">'#1059#1076#1072#1083#1080#1083#1086'? '#1057#1077#1081#1095#1072#1089' '#1074#1086#1089#1089#1090#1072#1085#1086#1074#1080#1084'!</a>'
              #9#9#9#9'</div>'
              #9#9#9#9#9#9#9#9
              '<div class="rightbox">'
              #9#9#9#9#9'9: #551 (2170) - <a '
              'href="/story/551">'#1040#1087#1087#1072#1088#1072#1090' '#1080#1079' '#1088#1091#1082' '#1084#1072#1089#1090#1077#1088#1072'</a>'
              #9#9#9#9'</div>'
              #9#9#9#9#9#9#9#9
              '<div class="rightbox">'
              ''
              #9#9#9#9#9'10: #552 (2060) - '
              '<a href="/story/552">'#1058#1077#1088#1087#1077#1085#1080#1077' '#1080' '#1090#1088#1091#1076' '#1074#1089#1077' '#1087#1077#1088#1077#1090#1088#1091#1090'</a>'
              #9#9#9#9'</div>'
              #9#9#9#9#9#9#9#9
              #9#9#9#9#9#9#9#9
              '<div class="rightname">'
              #9#9#9#9#9#1089#1090#1072#1090#1080#1089#1090#1080#1082#1072
              #9#9#9#9'</div>'
              #9#9#9#9'<div class="statbox">'
              #9#9#9#9#9
              '<span><!--Rating@Mail.ru LOGO--><a target=_top'
              'href="http://top.mail.ru/jump?from=1523334"><img'
              'SRC="http://de.c3.b7.a1.top.mail.ru/counter?id=1523334;t=52;l=1"'
              'border=0 height=31 width=88'
              'alt="'#1056' '
              #1056#181#1056#8470#1057#8218#1056#1105#1056#1029#1056#1110'@Mail.ru"/></a><!--/LOGO--></span><span><!--LiveI'
              'nternet logo--><a href="http://www.liveinternet.ru/click"'
              'target=_blank><img src="http://counter.yadro.ru/logo?21.1"'
              
                'title="LiveInternet: number of pageviews for 24 hours, of visito' +
                'rs for 24 '
              'hours and for today is shown"'
              
                'alt="" border=0 width=88 height=31></a><!--/LiveInternet--></spa' +
                'n>'#9#9
              #9#9'</div>'
              #9#9#9#9#9#9#9#9
              '<div class="rightempty">'
              ''
              #9#9#9#9'</div>'#9
              #9#9#9'</td>'
              #9#9'</tr>'
              #9#9'</table></td></tr>'
              #9#9'<tr>'
              #9#9#9'<td colspan="2" class="footer">'
              #9#9#9#9'&copy; 2008'#8212'2009, lolwut. '
              'Powered by finely trained slowpokes! <!--'#1047#1086#1084#1103#1074#1072#1085#1086' '#1079#1072' '
              '0.00209212303162 '#1089#1077#1082#1091#1085#1076'. -->'
              #9#9#9'</td>'
              ''
              #9#9'</tr>'
              #9'</table>'
              '<script type="text/javascript">'
              'var gaJsHost = (("https:" == document.location.protocol) ? '
              '"https://ssl." : "http://www.");'
              'document.write(unescape("%3Cscript src='#39'" + gaJsHost + '
              '"google-analytics.com/ga.js'#39' '
              'type='#39'text/javascript'#39'%3E%3C/script%3E"));'
              '</script>'
              '<script type="text/javascript">'
              'var pageTracker = _gat._getTracker("UA-3271837-4");'
              'pageTracker._trackPageview();'
              '</script></body>'
              '</html>')
            TabOrder = 0
          end
        end
        object ts3: TTabSheet
          Caption = 'TestWoWBash'
          ImageIndex = 6
          object TestWoWBashMemo: TMemo
            Left = 0
            Top = 0
            Width = 342
            Height = 408
            Align = alClient
            Lines.Strings = (
              '<html>'
              '<head>'
              '<title>'
              'WoW.Bash</title>'
              '<meta http-equiv="content-type" content="text/html; '
              'charset=windows-1251">'
              '<META NAME="keywords" CONTENT="wow, warcraft, level, lvl, '
              
                'bash, gold, free, server, mangos, '#1074#1086#1074', '#1087#1088#1086#1082#1072#1095#1082#1072', '#1101#1087#1080#1082', '#1073#1077#1089#1087#1083#1072#1090#1085#1099 +
                #1081', '
              #1073#1077#1079#1087#1083#1072#1090#1085#1099#1081', '#1073#1077#1079#1087#1083#1072#1090#1085#1080#1081'">'
              
                '<link href="../../../inc/style.css" type="text/css" rel="stylesh' +
                'eet">'
              '</head>'
              '<body>'
              '<center>'
              '<img src=http://i027.radikal.ru/0805/ce/77ec40f53c5a.gif '
              'alt=wowbash ><h1> <FONT color="#dc1400">-</FONT><FONT '
              'color="#dc2800">|</FONT> <FONT '
              'color="#dc5000">'#1055'</FONT><FONT '
              'color="#dc6400">'#1077'</FONT><FONT '
              'color="#dc7800">'#1088'</FONT><FONT '
              'color="#dc8c00">'#1074'</FONT><FONT '
              'color="#dca000">'#1099'</FONT><FONT color="#dcb400">'#1081'</FONT> '
              '<FONT color="#dcdc00">'#1074'</FONT> <FONT '
              'color="#b4dc00">'#1057'</FONT><FONT '
              'color="#a0dc00">'#1053'</FONT><FONT color="#8cdc00">'#1043'</FONT> '
              '<FONT color="#64dc00">W</FONT><FONT '
              'color="#50dc00">o</FONT><FONT color="#3cdc00">W</FONT> '
              '<FONT color="#14dc00">'#1062'</FONT><FONT '
              'color="#00dc00">'#1080'</FONT><FONT '
              'color="#00dc14">'#1090'</FONT><FONT '
              'color="#00dc28">'#1072'</FONT><FONT '
              'color="#00dc3c">'#1090'</FONT><FONT '
              'color="#00dc50">'#1085'</FONT><FONT '
              'color="#00dc64">'#1080'</FONT><FONT color="#00dc78">'#1082'</FONT> '
              '<FONT color="#00dca0">|</FONT><FONT '
              'color="#00dcb4">-</FONT><BR> </h1>'
              ''
              '<br><br>'
              '-| <a href="/">'#1062#1080#1090#1072#1090#1099'</a> |- &nbsp; -| <a '
              'href="/add.php">'#1044#1086#1073#1072#1074#1080#1090#1100'</a> |- &nbsp; -| <a href="/up.php">20 '
              #1083#1091#1095#1096#1080#1093'</a> |- &nbsp; -| <a href="/about.php">'#1054' '#1089#1072#1081#1090#1077'</a> |-'
              ''
              '<br><br>'
              '<font color="#B8EE16">'#1055#1088#1086#1074#1077#1088#1077#1085#1085#1099#1093' '#1094#1080#1090#1072#1090': 768 | '#1053#1072' '#1087#1088#1086#1074#1077#1088#1082#1077': 1 | '
              #1052#1086#1076#1077#1088#1072#1090#1086#1088#1086#1074': 4</font><br>'
              ''
              ''
              
                ' <table width=500><tr><td><a href="http://www.wow-loot.narod.ru/' +
                '" '
              'target="_blank"><img '
              
                'src="http://s45.radikal.ru/i107/0901/5d/9a2231442827.gif"></a></' +
                'td'
              '><td width=500>'
              #9#9#9'<blockquote> <font size=3></font>'
              ''
              '</blockquote>'
              #9#9#9'</td><td><embed '
              
                'src="http://igrotrade.ru/UserFiles/Image/inzerat/igrotrade001.sw' +
                'f" '#9#9
              'width="468" '#9#9'height="60" '#9#9
              'play="true" '#9#9'loop="true" '#9#9
              'wmode="Opaque" '#9#9'quality="high" '#9#9
              'bgcolor="" '#9#9'align="" '#9#9
              'pluginspage="http://www.macromedia.com/shockwave/download/ind'
              'ex.cgi?P1_Prod_Version=ShockwaveFlash">'#9
              '</embed></td></tr></table>'
              '<br> '
              ''
              '<hr>'
              ''
              '<table width=750>'
              '<tr>'
              '<td>'
              ''
              '<table width=500><tr><td width=500>'
              #9#9#9'<br><b><a '
              'href=index.php?id=1073>#1073</a> | '#1059#1090#1074#1077#1088#1076#1080#1083': Beaver | 02.02.09 '
              '22:40 | '#1056#1077#1081#1090#1080#1085#1075': <a href=index.php?id=1073&rating=plus>+</a>'
              ' '
              ''
              ''
              ''
              ''
              '<a href=index.php?id=1073&rating=minus>-</a><br><br>'
              #9#9#9'<blockquote><font size=2>'#1044#1072' '#1091#1078', '#1042#1086#1074' '
              #1101#1090#1086' '#1076#1080#1072#1075#1085#1086#1079'...<br>'#1042#1086#1073#1097#1077#1084' '#1074#1099#1093#1086#1078#1091' '#1103' '#1080#1079' '#1087#1086#1076#1100#1077#1079#1076#1072', '#1080' '#1089#1083#1099#1096#1091' '#1076#1080#1072#1083#1086#1075' '
              '2'#1093' '#1088#1077#1073#1103#1090' , '#1089#1083#1077#1076#1091#1102#1097#1077#1075#1086' '#1089#1086#1076#1077#1088#1078#1072#1085#1080#1103':<br>-'#1053#1091' '#1090#1072#1082' '#1095#1090#1086' '#1083#1091#1095#1096#1077'?<br>-'#1071' '
              #1089#1095#1080#1090#1072#1102' '#1083#1091#1095#1096#1077' '#1040'1, '#1095#1077#1084' '#1040'4. '#1057' '#1040'4 '#1084#1086#1088#1086#1082#1080' '#1084#1085#1086#1075#1086'.<br>-'#1040' '#1084#1085#1077' '#1090#1072#1082' '#1080' '#1040'4 '
              #1085#1080#1095#1077#1075#1086', '#1040'1 '#1089#1077#1081#1095#1072#1089'  '#1087#1086#1095#1090#1080' '#1085#1080#1075#1076#1077' '#1085#1077' '#1085#1072#1081#1076#1077#1096#1100'.<br>-'#1058#1072' '#1085#1091', '#1040'1 '#1083#1091#1095#1096#1077' '
              #1074#1089#1077#1090#1072#1082#1080', '#1073#1086#1083#1077#1077' '#1074#1077#1089#1086#1084#1086' , '#1093#1086#1090#1100' '#1080' '#1090#1103#1078#1077#1083#1086'.<br>'#1058#1072' '#1085#1091' '#1086#1085#1086' '
              #1075#1088#1086#1084#1086#1079#1076#1082#1086#1077', '#1083#1091#1095#1096#1077' '#1040'4.<br>'#1058#1091#1090' '#1103' '#1074#1099#1093#1086#1078#1091' '#1080#1079' '#1087#1086#1076#1100#1077#1079#1076#1072' '#1080' '
              #1089#1087#1088#1072#1096#1080#1074#1072#1102' '#1091' '#1085#1080#1093':\&quot;'#1056#1077#1073#1103#1090', '#1072' '#1074#1099' '#1090#1086#1078#1077' '#1074' '#1042#1086#1074' '#1080#1075#1088#1072#1077#1090#1077'?\&quot;, '
              #1085#1072' '#1095#1090#1086' '#1084#1085#1077' '#1086#1090#1074#1077#1090#1080#1083#1080':\&quot;'#1050#1072#1082#1086#1081' '#1042#1086#1074'?\&quot;<br>'#1071'-\&quot;'#1053#1091' '#1082#1072#1082' '
              #1078#1077', '#1072' '#1040'1 '#1090#1072#1084', '#1040'4?..\&quot;<br>'#1048#1093' '#1086#1090#1074#1077#1090'::\&quot;'#1040' '#1091' '#1085#1072#1089' '#1087#1086' '
              #1095#1077#1088#1095#1077#1085#1080#1102' '#1079#1072#1095#1077#1090', '#1074#1086#1090' '#1084#1099' '#1080' '#1089#1087#1086#1088#1080#1084' '#1082#1072#1082' '#1083#1091#1095#1096#1077' '#1088#1072#1073#1086#1090#1091' '#1086#1092#1086#1088#1084#1080#1090#1100'-'#1087#1086' '
              #1095#1072#1089#1090#1103#1084' '#1085#1072' '#1040'4 '#1087#1088#1080#1085#1077#1089#1090#1080', '#1080#1083#1080' '#1089#1088#1072#1079#1091' '#1040'1 '#1087#1077#1088#1077#1090#1100'..\&quot;<br>'#1052#1085#1077' '
              #1073#1099#1083#1086' '#1085#1072#1076' '#1095#1077#1084' '#1079#1072#1076#1091#1084#1072#1090#1100#1089#1103'))</font></blockquote>'
              ''
              #9#9#9'</td></tr><tr><td width=500>'
              #9#9#9'<br><b><a '
              'href=index.php?id=1070>#1070</a> | '#1059#1090#1074#1077#1088#1076#1080#1083': Beaver | 02.02.09 '
              '11:02 | '#1056#1077#1081#1090#1080#1085#1075': <a href=index.php?id=1070&rating=plus>+</a>'
              ' '
              ''
              ''
              ''
              ''
              '<a href=index.php?id=1070&rating=minus>-</a><br><br>'
              #9#9#9'<blockquote><font size=2>'#1082#1086#1090#1103#1088#1072': '#1091' '
              #1085#1080#1093' '#1078#1077' '#1074#1086#1086#1073#1097#1077' '#1085#1077#1085#1086#1088#1084#1072#1083#1100#1085#1072#1103' '#1089#1077#1084#1077#1081#1082#1072'<br>'#1086#1090#1077#1094' '#1086#1090#1089#1099#1087#1072#1077#1090' '#1089#1099#1085#1091' '
              #1042#1054#1042' '#1075#1086#1083#1076' '#1087#1086' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1085#1086#1084#1091' '#1090#1072#1088#1080#1092#1091', '#1079#1072' '#1090#1086', '#1095#1090#1086' '#1089#1099#1085' '#1095#1080#1090#1072#1077#1090' '
              #1073#1091#1084#1072#1078#1085#1099#1077' '#1082#1085#1080#1082#1078#1082#1080' '#1080' '#1087#1077#1088#1077#1089#1082#1072#1079#1099#1074#1072#1077#1090' '#1074#1089#1077' '#1095#1090#1086' '#1087#1088#1086#1095#1080#1090#1072#1083', '#1072' '#1087#1072#1087#1080#1082#1091' '
              #1085#1072#1089#1090#1086#1083#1100#1082#1086' '#1087#1086#1085#1088#1072#1074#1080#1083#1086#1089#1100' '#1079#1072#1088#1072#1073#1072#1090#1099#1074#1072#1090#1100' \&quot;'#1076#1083#1103' '#1089#1099#1085#1072'\&quot; '
              #1085#1086#1095#1072#1084#1080', '#1095#1090#1086' '#1086#1085#1080' '#1086#1090' '#1084#1072#1084#1099' '#1089#1090#1072#1083#1080' \&quot;'#1089#1077#1088#1099#1077'\&quot; '#1089#1093#1077#1084#1099' '
              #1084#1091#1090#1080#1090#1100', '#1082#1086#1075#1076#1072' '#1087#1072#1087#1072' '#1076#1072#1077#1090' '#1077#1084#1091' '#1089#1086#1082#1088#1072#1097#1077#1085#1085#1086#1077' '#1080#1079#1083#1086#1078#1077#1085#1080#1077' '#1080' '#1089#1099#1085#1080#1096#1082#1072' '
              #1087#1077#1088#1077#1089#1082#1072#1079#1099#1074#1072#1077#1090' '#1084#1072#1084#1077' '#1086#1095#1077#1088#1077#1076#1085#1091#1102' '#1087#1086#1095#1080#1090#1072#1085#1085#1091#1102' '#1082#1085#1080#1078#1082#1091'.<br>'#1048' '#1074#1089#1077#1084' '
              #1093#1086#1088#1086#1096#1086'.'#1070#1085#1099#1081' '#1075#1077#1085#1080#1081' '#1088#1072#1089#1090#1077#1090'))</font></blockquote>'
              ''
              #9#9#9'</td></tr><tr><td width=500>'
              #9#9#9'<br><b><a '
              'href=index.php?id=1069>#1069</a> | '#1059#1090#1074#1077#1088#1076#1080#1083': Beaver | 02.02.09 '
              '10:55 | '#1056#1077#1081#1090#1080#1085#1075': <a href=index.php?id=1069&rating=plus>+</a>'
              ' '
              ''
              ''
              ''
              ''
              '<a href=index.php?id=1069&rating=minus>-</a><br><br>'
              #9#9#9'<blockquote><font size=2>'#1093#1093#1093': '#1058#1067' '
              #1055#1056#1048#1050#1048#1053#1068'!'#1089#1077#1075#1086#1076#1085#1103' '#1074' '#1042#1054#1042' '#1086#1076#1085#1086#1081' '#1088#1091#1082#1086#1081' '#1080#1075#1088#1072#1083'!:)<br>'#1091#1091#1091': '#1073#1086#1102#1089#1100' '
              #1089#1087#1088#1086#1089#1080#1090#1100'...'#1072' '#1095#1090#1086' '#1090#1099' '#1074#1090#1086#1088#1086#1081' '#1076#1077#1083#1072#1083'?'#1054'_'#1086'</font></blockquote>'
              #9#9#9'</td></tr><tr><td width=500>'
              ''
              #9#9#9'<br><b><a '
              
                'href=index.php?id=1068>#1068</a> | '#1059#1090#1074#1077#1088#1076#1080#1083': Kelthuzed | 01.02.0' +
                '9 '
              '21:44 | '#1056#1077#1081#1090#1080#1085#1075': <a href=index.php?id=1068&rating=plus>+</a>'
              ' '
              ''
              ''
              ''
              ''
              '<a href=index.php?id=1068&rating=minus>-</a><br><br>'
              #9#9#9'<blockquote><font size=2>'#1087#1086#1089#1083#1077' '#1074#1072#1081#1087#1072' '
              #1085#1072' '#1040#1088#1082#1072#1074#1086#1085#1072' 25 '#1088#1077#1081#1076' '#1085#1072#1095#1072#1083' '#1088#1072#1079#1074#1072#1083#1080#1074#1072#1090#1100#1089#1103'.<br>['#1083#1080#1076#1077#1088' '#1088#1077#1081#1076#1072']: '#1103#1078' '
              #1080#1079' '#1079#1072' '#1101#1090#1086#1075#1086' '#1088#1077#1081#1076#1072' '#1080#1079' '#1075#1080#1083#1100#1076#1080#1080' '#1091#1096#1105#1083'!<br>['#1083#1080#1076#1077#1088' '#1088#1077#1081#1076#1072']: '#1072' '#1090#1077#1087#1077#1088#1100' '
              #1074#1099' '#1074#1072#1083#1080#1090#1077'!<br>['#1083#1080#1076#1077#1088' '#1088#1077#1081#1076#1072']: '#1076#1072' '#1089#1090#1086#1081#1090#1077'!!<br>'#1069#1090#1086' '#1087#1086#1076#1079#1077#1084#1077#1083#1100#1077' '
              #1073#1091#1076#1077#1090' '#1086#1073#1085#1086#1074#1083#1077#1085#1085#1086' '#1095#1077#1088#1077#1079' 2 '#1084#1080#1085#1091#1090#1099'.<br>['#1083#1080#1076#1077#1088' '#1088#1077#1081#1076#1072']: '
              #1055#1054#1063#1045#1052#1059'?</font></blockquote>'
              ''
              #9#9#9'</td></tr><tr><td width=500>'
              #9#9#9'<br><b><a '
              'href=index.php?id=1067>#1067</a> | '#1059#1090#1074#1077#1088#1076#1080#1083': admin | 01.02.09 '
              '19:56 | '#1056#1077#1081#1090#1080#1085#1075': <a href=index.php?id=1067&rating=plus>+</a>'
              ' '
              ''
              ''
              ''
              ''
              '<a href=index.php?id=1067&rating=minus>-</a><br><br>'
              #9#9#9'<blockquote><font '
              'size=2>&lt;xxx&gt;'#1061#1077#1093','#1074#1086#1090' '#1088#1072#1085#1100#1096#1077' '#1103' '#1087#1086#1084#1085#1102','#1090#1086#1083#1100#1082#1086' '#1074#1099#1096#1077#1083' '#1041#1050' '#1091' '
              #1086#1088#1076#1099' '#1073#1099#1083#1086' 2 '#1082#1083#1072#1089#1089#1072' - '#1073#1083#1072#1076' '#1077#1083#1100#1092' '#1087#1072#1083#1072#1076#1088#1099#1085' '#1080' '
              #1086#1089#1090#1072#1083#1100#1085#1099#1077')</font></blockquote>'
              #9#9#9'</td></tr><tr><td width=500>'
              ''
              #9#9#9'<br><b><a '
              'href=index.php?id=1066>#1066</a> | '#1059#1090#1074#1077#1088#1076#1080#1083': admin | 01.02.09 '
              '19:48 | '#1056#1077#1081#1090#1080#1085#1075': <a href=index.php?id=1066&rating=plus>+</a>'
              ' '
              ''
              ''
              ''
              ''
              '<a href=index.php?id=1066&rating=minus>-</a><br><br>'
              #9#9#9'<blockquote><font size=2>'#1041#1072#1088#1077#1085#1089' '
              #1095#1072#1090':<br><br>[xxx] '#1050#1080#1085#1091#1083' '#1087#1072#1094#1072#1085#1072'?<br>[xxx] '#1040#1053#1059' '#1041#1045#1051#1054#1056#1045' '
              #1044#1040#1051#1040#1053#1040'<br>[yyy] '#1055#1086' '#1077#1073#1072#1083#1091' '#1085#1072' <br>[zzz] O_o</font></blockquote>'
              #9#9#9'</td></tr><tr><td width=500>'
              ''
              #9#9#9'<br><b><a '
              'href=index.php?id=1064>#1064</a> | '#1059#1090#1074#1077#1088#1076#1080#1083': admin | 01.02.09 '
              '18:31 | '#1056#1077#1081#1090#1080#1085#1075': <a href=index.php?id=1064&rating=plus>+</a>'
              ' '
              ''
              ''
              ''
              ''
              '<a href=index.php?id=1064&rating=minus>-</a><br><br>'
              #9#9#9'<blockquote><font size=2>'#1044#1080#1072#1083#1086#1075' '#1074' '
              'WoW-'#1095#1072#1090#1077':<br>'#1056#1091#1092#1080#1082': '#1052#1077#1083#1080#1089' '#1090#1099' '#1082#1091#1076#1072' '#1097#1072#1089'?<br>'#1052#1077#1083#1080#1089#1072': '#1097#1072#1089' '#1089#1076#1072#1084' '
              #1082#1074#1077#1089#1090' '#1074' '#1047#1072#1087#1072#1076#1085#1086#1084' '#1050#1088#1072#1077', '#1072' '#1087#1086#1090#1086#1084' '#1087#1086#1081#1076#1091' '#1074' '#1058#1077#1084#1085#1086#1083#1077#1089#1100#1077'<br>'#1056#1091#1092#1080#1082': '
              #1101#1101#1101'...'#1072' '#1087#1086'-'#1088#1091#1089#1089#1082#1080' '#1084#1086#1078#1085#1086'?<br>'#1052#1077#1083#1080#1089#1072': '#1089#1076#1072#1084' '#1082#1074#1077#1089#1090' '#1074' '#1042#1077#1089#1090#1092#1072#1083#1077', '
              #1087#1086#1090#1086#1084' '#1074' '#1044#1072#1089#1082#1074#1091#1076'<br>'#1056#1091#1092#1080#1082': '#1086#1082'</font></blockquote>'
              ''
              #9#9#9'</td></tr><tr><td width=500>'
              #9#9#9'<br><b><a '
              
                'href=index.php?id=1063>#1063</a> | '#1059#1090#1074#1077#1088#1076#1080#1083': Kelthuzed | 01.02.0' +
                '9 '
              '18:22 | '#1056#1077#1081#1090#1080#1085#1075': <a href=index.php?id=1063&rating=plus>+</a>'
              ' '
              ''
              ''
              ''
              ''
              '<a href=index.php?id=1063&rating=minus>-</a><br><br>'
              #9#9#9'<blockquote><font size=2>-'#1053#1072#1088#1086#1076', '
              #1089#1084#1086#1090#1088#1077#1083#1080' '#1097#1072' '#1092#1080#1083#1100#1084' '#1087#1088#1086' '#1087#1083#1077#1089#1077#1085#1100'?<br>-'#1059#1075#1091', '#1074' '#1079#1072#1085#1075#1072#1088#1084#1072#1096' '#1073#1086#1083#1100#1096#1077' '
              #1085#1080' '#1085#1086#1075#1086#1081')</font></blockquote>'
              #9#9#9'</td></tr><tr><td width=500>'
              ''
              #9#9#9'<br><b><a '
              'href=index.php?id=1060>#1060</a> | '#1059#1090#1074#1077#1088#1076#1080#1083': Beaver | 31.01.09 '
              '10:34 | '#1056#1077#1081#1090#1080#1085#1075': <a href=index.php?id=1060&rating=plus>+</a>'
              ' '
              ''
              ''
              ''
              ''
              '<a href=index.php?id=1060&rating=minus>-</a><br><br>'
              #9#9#9'<blockquote><font '
              'size=2>&lt;Xauren&gt; '#1055#1077#1089#1085#1103' '#1087#1088#1086' '#1084#1080#1089#1090#1080#1095#1077#1089#1082#1091#1102' '#1089#1074#1103#1079#1100' '#1090#1072#1085#1082#1072' '#1080' '
              #1093#1080#1083#1077#1088#1072', '#1074#1089#1077' '#1079#1085#1072#1102#1090'?<br>&lt;Xauren&gt; '#1048#1079#1074#1077#1089#1090#1085#1072#1103' '
              #1087#1077#1089#1085#1103'.<br>&lt;Xauren&gt; '#1047#1077#1084#1092#1080#1088#1072' '#1087#1086#1105#1090': \&quot;'#1055#1086#1078#1072#1083#1091#1081#1089#1090#1072', '#1085#1077' '
              #1091#1084#1080#1088#1072#1081', '#1080#1083#1080' '#1084#1085#1077' '#1087#1088#1080#1076#1105#1090#1089#1103' '#1090#1086#1078#1077'...\&quot; :)))<br>&lt;Xauren&gt; '
              '\&quot;... '#1087#1086#1078#1072#1083#1091#1081#1089#1090#1072', '#1090#1086#1083#1100#1082#1086' '#1078#1080#1074#1080', '#1090#1099' '#1078#1077' '#1074#1080#1076#1080#1096#1100', '#1103' '#1078#1080#1074#1091' '
              #1090#1086#1073#1086#1102'... '#1084#1086#1077#1081' '#1086#1075#1088#1086#1084#1085#1086#1081' '#1083#1102#1073#1074#1080' '#1093#1074#1072#1090#1080#1090' '#1085#1072#1084' '#1076#1074#1086#1080#1084' '#1089' '
              #1075#1086#1083#1086#1074#1086#1102'...\&quot;</font></blockquote>'
              ''
              #9#9#9'</td></tr><tr><td width=500>'
              #9#9#9'<br><b><a '
              'href=index.php?id=1058>#1058</a> | '#1059#1090#1074#1077#1088#1076#1080#1083': andred | 30.01.09 '
              '06:24 | '#1056#1077#1081#1090#1080#1085#1075': <a href=index.php?id=1058&rating=plus>+</a>'
              ' '
              ''
              ''
              ''
              ''
              '<a href=index.php?id=1058&rating=minus>-</a><br><br>'
              #9#9#9'<blockquote><font size=2>'#1072'- '#1103' '
              #1082#1083#1072#1089#1089#1085#1099#1081' '#1056#1077#1090#1088#1086' '#1056#1086#1075#1072'!<br>'#1041' - '#1091#1072#1093#1072#1093#1072' '#1090#1086#1075#1076#1072' '#1103' '#1082#1072#1082#1089#1091#1087#1077#1088' '#1060#1088#1086#1089#1090' '
              #1044#1088#1091#1080#1076'!<br>'#1091' - '#1053#1080#1092#1080#1075#1072' , '#1060#1077#1088#1072#1083' '#1055#1072#1083#1099' '#1088#1091#1083#1103#1090'!<br>'#1072' - '#1082#1072#1082#1086#1075#1086' '#1093'%'#1103' ! '#1071' '
              #1056#1077#1090#1088#1086' '#1056#1086#1075#1072' '#1075#1086#1074#1086#1088#1102' '#1074#1072#1084'! <br>'#1091' - '#1085#1091' '#1072' '#1084#1099' '#1090#1077#1073#1077' '#1087#1088#1086' '#1095#1090#1086' '#1087#1086#1075#1086#1076#1080' -'#1074#1086#1085' '
              #1060#1091#1088#1088#1080' '#1055#1088#1080#1089#1090' '#1073#1077#1078#1080#1090', '#1086#1085' '#1074#1072#1097#1077' '#1079#1074#1077#1088#1102#1075#1072'..</font></blockquote>'
              ''
              #9#9#9'</td></tr><tr><td width=500>'
              #9#9#9'<br><b><a '
              'href=index.php?id=1057>#1057</a> | '#1059#1090#1074#1077#1088#1076#1080#1083': Beaver | 29.01.09 '
              '16:34 | '#1056#1077#1081#1090#1080#1085#1075': <a href=index.php?id=1057&rating=plus>+</a>'
              ' '
              ''
              ''
              ''
              ''
              '<a href=index.php?id=1057&rating=minus>-</a><br><br>'
              #9#9#9'<blockquote><font size=2>'#1041#1072#1088#1088#1077#1085#1089' '#1095#1072#1090' '
              '('#1057#1090#1077#1087#1080' '#1095#1072#1090')<br>[XXX] '#1053#1072#1088#1086#1076', '#1072' '#1095#1090#1086' '#1090#1072#1082#1086#1077' '#1088#1077#1081#1076#1099'?<br>['#1059#1059#1059'] '#1056#1077#1081#1076#1099' '
              #1101#1090#1086' '#1084#1086#1081' '#1082#1086#1088#1077#1096'<br>['#1061#1061#1061'] '#1040' '#1095#1090#1086' '#1090#1072#1082#1086#1077' '#1087#1072#1090#1080'?<br>['#1059#1059#1059'] '#1040' '#1087#1072#1090#1080' '#1101#1090#1086' '
              #1103'<br>[ZZZ] '#1093#1072#1093#1072#1093#1072', '#1085#1077' '#1074#1088#1080', '#1101#1090#1086' '#1103' '#1088#1077#1081#1076' :D<br>['#1040#1040#1040'] '#1044#1072' '#1083#1072#1076#1085#1086', '#1074#1089#1077' '
              #1079#1085#1072#1102#1090' '#1095#1090#1086' '#1103' '#1087#1072#1090#1080'</font></blockquote>'
              ''
              #9#9#9'</td></tr><tr><td width=500>'
              #9#9#9'<br><b><a '
              'href=index.php?id=1056>#1056</a> | '#1059#1090#1074#1077#1088#1076#1080#1083': Beaver | 29.01.09 '
              '14:43 | '#1056#1077#1081#1090#1080#1085#1075': <a href=index.php?id=1056&rating=plus>+</a>'
              ' '
              ''
              ''
              ''
              ''
              '<a href=index.php?id=1056&rating=minus>-</a><br><br>'
              #9#9#9'<blockquote><font size=2>'#1048#1075#1088#1072#1102' '#1103' '#1091' '
              #1072#1084#1077#1088#1080#1082#1086#1089#1086#1074' <br>'#1055#1086#1076#1073#1077#1075#1072#1077#1090' '#1088#1086#1075#1072' '#1080' '#1075#1088#1080#1090'- Give me a money, please. '
              
                '3 gold <br>'#1071'--- '#1048#1076#1080' '#1074' '#1078'\&quot;'#1087#1091'! <br>'#1056'o'#1075#1072'- What??? <br>'#1071'-- '#1048#1076#1080' ' +
                #1085#1072' '
              #1093'%'#1081'! <br>'#1056#1086#1075#1072'-- Russian?</font></blockquote>'
              ''
              #9#9#9'</td></tr><tr><td width=500>'
              #9#9#9'<br><b><a '
              'href=index.php?id=1055>#1055</a> | '#1059#1090#1074#1077#1088#1076#1080#1083': Beaver | 29.01.09 '
              '11:38 | '#1056#1077#1081#1090#1080#1085#1075': <a href=index.php?id=1055&rating=plus>+</a>'
              ' '
              ''
              ''
              ''
              ''
              '<a href=index.php?id=1055&rating=minus>-</a><br><br>'
              #9#9#9'<blockquote><font size=2>['#1041#1083#1105#1089#1082#1072']: '
              #1055#1088#1080#1075#1083#1072#1096#1072#1102#1090#1089#1103' '#1074' '#1075#1080#1083#1100#1076#1080#1102' '#1074#1077#1089#1105#1083#1099#1081','#1086#1073#1097#1080#1090#1077#1083#1100#1085#1099#1081' '#1085#1072#1088#1086#1076'!!! '#1089' 20+ '
              #1083#1074#1083'. '#1085#1072#1076#1086' '#1087#1086#1083#1091#1095#1072#1090#1100' '#1093#1086#1088#1086#1096#1077#1077' '#1085#1072#1089#1090#1088#1086#1077#1085#1080#1077' '#1086#1090' '#1080#1075#1088#1099' 8) ('#1043#1052' '
              #1076#1077#1074#1091#1096#1082#1072')))) )<br>['#1060#1086#1083#1083#1086#1091']: '#1076#1077#1092#1082#1080' '#1091' '#1074#1083#1072#1089#1090#1080'?<br>['#1060#1086#1083#1083#1086#1091']: '
              #1083#1077#1089#1086#1084'!<br>['#1041#1083#1105#1089#1082#1072']: '#1091#1075#1091'<br>['#1043#1088#1086#1084#1099#1075#1072#1081#1083#1086#1074']: '#1078#1077#1095' '
              #1074#1077#1076#1100#1084#1091'!<br>['#1042#1101#1083#1077#1085#1096#1090#1072#1081#1085'] '#1072#1093#1093#1072#1093#1072#1093#1072' 5</font></blockquote>'
              ''
              #9#9#9'</td></tr><tr><td width=500>'
              #9#9#9'<br><b><a '
              'href=index.php?id=1054>#1054</a> | '#1059#1090#1074#1077#1088#1076#1080#1083': andred | 29.01.09 '
              '08:54 | '#1056#1077#1081#1090#1080#1085#1075': <a href=index.php?id=1054&rating=plus>+</a>'
              ' '
              ''
              ''
              ''
              ''
              '<a href=index.php?id=1054&rating=minus>-</a><br><br>'
              #9#9#9'<blockquote><font size=2>'#1054#1076#1084#1080#1085#1099', '
              #1089#1076#1077#1083#1072#1081#1090#1077' '#1073#1077#1079#1076#1085#1091', '#1082#1072#1082' '#1085#1072' '#1086#1073#1099#1095#1085#1086#1084' '#1073#1072#1096#1077'. '#1053#1072#1076#1086#1077#1083#1080' 2 '#1094#1080#1090#1072#1090#1099' '#1074' '
              #1076#1077#1085#1100'.<br><br>-------<br><br>'#1044#1091#1084#1072#1077#1096' '#1080#1093' '#1073#1086#1083#1100#1096#1101' '
              #1087#1088#1080#1089#1099#1083#1072#1102#1090'?</font></blockquote>'
              #9#9#9'</td></tr><tr><td width=500>'
              ''
              #9#9#9'<br><b><a '
              'href=index.php?id=1052>#1052</a> | '#1059#1090#1074#1077#1088#1076#1080#1083': Beaver | 28.01.09 '
              '16:21 | '#1056#1077#1081#1090#1080#1085#1075': <a href=index.php?id=1052&rating=plus>+</a>'
              ' '
              ''
              ''
              ''
              ''
              '<a href=index.php?id=1052&rating=minus>-</a><br><br>'
              #9#9#9'<blockquote><font '
              'size=2>&lt;'#1058#1074#1072#1088#1080#1091#1089'&gt; '#1042#1099#1103#1074#1080#1083' 3 '#1089#1090#1072#1076#1080#1080' '#1080#1075#1088#1099' '#1074' '
              'WOW:<br>&lt;'#1058#1074#1072#1088#1080#1091#1089'&gt; 1-'#1103': WOW '#1084#1077#1096#1072#1077#1090' '
              #1088#1072#1073#1086#1090#1077'.<br>&lt;'#1058#1074#1072#1088#1080#1091#1089'&gt; 2-'#1103': '#1056#1072#1073#1086#1090#1072' '#1084#1077#1096#1072#1077#1090' '
              'WOW.<br>&lt;'#1058#1074#1072#1088#1080#1091#1089'&gt; 3-'#1103': '#1056#1072#1073#1086#1090#1072' '#1085#1077' '#1084#1077#1096#1072#1077#1090' '
              'WOW.<br>&lt;'#1056#1086#1087#1072#1090'&gt; ... '#1073#1083#1103'(((((</font></blockquote>'
              ''
              #9#9#9'</td></tr></table><br><br><div '
              'align=right><a href=index.php?page=1>'#1074' '#1085#1072#1095#1072#1083#1086'</a> <a '
              'href=index.php?page=4>'#1085#1072#1079#1072#1076'</a>  <a '
              'href=index.php?page=3>3</a> | <a href=index.php?page=4>4</a> | '
              '<b>5</b> | <a href=index.php?page=6>6</a> | <a '
              'href=index.php?page=7>7</a> <a '
              'href=index.php?page=6>'#1074#1087#1077#1088#1077#1076'</a> <a href=index.php?page=52>'#1074' '
              #1082#1086#1085#1077#1094'</a></div></td>'
              ''
              '</tr>'
              '</table>'
              '<hr>'
              '<table width=750>'
              '<tr><td align="left" width="50%"><font '
              'color="#B8EE16">2008</font></td><td align="right">'#169' <a '
              'href="http://wowbash.org.ru" target="_blank"><FONT '
              'color="#dc1400">W</FONT><FONT '
              'color="#dc2800">o</FONT><FONT '
              'color="#dc3c00">W</FONT><FONT '
              'color="#dc5000">B</FONT><FONT '
              'color="#dc6400">a</FONT><FONT '
              'color="#dc7800">s</FONT><FONT '
              'color="#dc8c00">h</FONT><FONT '
              'color="#dca000">.</FONT><FONT '
              'color="#dcb400">O</FONT><FONT '
              'color="#dcc800">r</FONT><FONT '
              'color="#dcdc00">g</FONT><FONT '
              'color="#c8dc00">.</FONT><FONT '
              'color="#b4dc00">R</FONT><FONT '
              'color="#a0dc00">u</FONT><BR></a></td></tr>'
              ''
              '</table>'
              '<!--Rating@Mail.ru COUNTEr--><script language="JavaScript" '
              'type="text/javascript"><!--'
              'd=document;var a='#39#39';a+='#39';r='#39'+escape(d.referrer)'
              'js=10//--></script><script language="JavaScript1.1" '
              'type="text/javascript"><!--'
              'a+='#39';j='#39'+navigator.javaEnabled()'
              'js=11//--></script><script language="JavaScript1.2" '
              'type="text/javascript"><!--'
              's=screen;a+='#39';s='#39'+s.width+'#39'*'#39'+s.height'
              'a+='#39';d='#39'+(s.colorDepth?s.colorDepth:s.pixelDepth)'
              'js=12//--></script><script language="JavaScript1.3" '
              'type="text/javascript"><!--'
              'js=13//--></script><script language="JavaScript" '
              'type="text/javascript"><!--'
              'd.write('#39'<a href="http://top.mail.ru/jump?from=1377026"'#39'+'
              #39' target=_top><img src="http://d3.c0.b5.a1.top.list.ru/counter'#39'+'
              #39'?id=1377026;t=135;js='#39'+js+a+'#39';rand='#39'+Math.random()+'
              #39'" alt="'#1056#1077#1081#1090#1080#1085#1075'@Mail.ru"'#39'+'#39' border=0 height=40 width=88/><\/a>'#39')'
              'if(11<js)d.write('#39'<'#39'+'#39'!-- '#39')//--></script><noscript><a'
              'target=_top href="http://top.mail.ru/jump?from=1377026"><img'
              
                'src="http://d3.c0.b5.a1.top.list.ru/counter?js=na;id=1377026;t=1' +
                '35"'
              'border=0 height=40 width=88'
              'alt="'#1056#1077#1081#1090#1080#1085#1075'@Mail.ru"/></a></noscript><script '
              'language="JavaScript" type="text/javascript"><!--'
              'if(11<js)d.write('#39'--'#39'+'#39'>'#39')//--></script><!--/COUNTER-->'
              '</center>'
              '</body>'
              '</html>')
            TabOrder = 0
          end
        end
      end
    end
  end
  object AntiFreeze: TIdAntiFreeze
    IdleTimeOut = 64
    OnlyWhenIdle = False
    Left = 708
    Top = 555
  end
  object StartUpTimer: TTimer
    Interval = 10
    OnTimer = StartUpTimerTimer
    Left = 776
    Top = 557
  end
  object FindFocusDelayTimer: TTimer
    Interval = 10
    OnTimer = FindFocusDelayTimerTimer
    Left = 869
    Top = 560
  end
  object HtmlViewerStyle: TRVStyle
    TextStyles = <
      item
        StyleName = 'Normal text'
        FontName = 'Arial'
      end
      item
        StyleName = 'Heading'
        FontName = 'Arial'
        Style = [fsBold]
        Color = clBlue
      end
      item
        StyleName = 'Subheading'
        FontName = 'Arial'
        Style = [fsBold]
        Color = clNavy
      end
      item
        StyleName = 'Keywords'
        FontName = 'Arial'
        Style = [fsItalic]
        Color = clMaroon
      end
      item
        StyleName = 'Jump 1'
        FontName = 'Arial'
        Style = [fsUnderline]
        Color = clGreen
        Jump = True
      end
      item
        StyleName = 'Jump 2'
        FontName = 'Arial'
        Style = [fsUnderline]
        Color = clGreen
        Jump = True
      end>
    ParaStyles = <
      item
        StyleName = 'Paragraph Style'
        Tabs = <>
      end
      item
        StyleName = 'Centered'
        SpaceBefore = 100
        Alignment = rvaCenter
        Tabs = <>
      end>
    ListStyles = <>
    InvalidPicture.Data = {
      07544269746D617036100000424D361000000000000036000000280000002000
      0000200000000100200000000000001000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFF
      FF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFF
      FF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080008080800080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000}
    StyleTemplates = <>
    Left = 248
    Top = 424
  end
  object HtmlImporter: TRvHtmlImporter
    ClearDocument = False
    RichView = BashOrgRuHtmlViewer
    DefaultFontName = 'Times New Roman'
    DefaultCFontName = 'Courier New'
    Left = 216
    Top = 424
  end
  object ScrollDelayTimer: TTimer
    Enabled = False
    Interval = 10
    OnTimer = ScrollDelayTimerTimer
    Left = 552
    Top = 573
  end
  object FontSelectDialog: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 184
    Top = 424
  end
  object rvstyl1: TRVStyle
    TextStyles = <
      item
        StyleName = 'Normal text'
        FontName = 'Arial'
        Size = 8
      end
      item
        StyleName = 'Heading'
        FontName = 'Arial'
        Style = [fsBold]
        Color = clBlue
      end
      item
        StyleName = 'Subheading'
        FontName = 'Arial'
        Style = [fsBold]
        Color = clNavy
      end
      item
        StyleName = 'Keywords'
        FontName = 'Arial'
        Style = [fsItalic]
        Color = clMaroon
      end
      item
        StyleName = 'Jump 1'
        FontName = 'Arial'
        Size = 8
        Style = [fsUnderline]
        Color = clGreen
        Jump = True
      end
      item
        StyleName = 'Jump 2'
        FontName = 'Arial'
        Size = 8
        Color = clBlack
        Jump = True
      end>
    ParaStyles = <
      item
        StyleName = 'Paragraph Style'
        BiDiMode = rvbdLeftToRight
        Tabs = <>
      end
      item
        StyleName = 'Centered'
        Alignment = rvaCenter
        Tabs = <>
      end>
    ListStyles = <>
    Color = clBtnFace
    InvalidPicture.Data = {
      07544269746D617036100000424D361000000000000036000000280000002000
      0000200000000100200000000000001000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFF
      FF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFF
      FF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080008080800080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000}
    StyleTemplates = <>
    Left = 280
    Top = 424
  end
  object TabChangeDelayTimer: TTimer
    Enabled = False
    Interval = 10
    OnTimer = TabChangeDelayTimerTimer
    Left = 312
    Top = 424
  end
end
