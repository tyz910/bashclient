object MainForm: TMainForm
  Left = 411
  Top = 210
  Width = 667
  Height = 542
  Caption = 'bClient'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object TestStatusBar: TStatusBar
    Left = 0
    Top = 489
    Width = 659
    Height = 19
    Panels = <>
  end
  object MainPageControl: TPageControl
    Left = 0
    Top = 0
    Width = 659
    Height = 489
    ActivePage = TestTabSheet
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 1
    object BashTabSheet: TTabSheet
      Caption = 'Bash'
      object BashNavBar: TdxNavBar
        Left = 0
        Top = 0
        Width = 651
        Height = 458
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
          Width = 651
          Height = 382
          TabOrder = 1
          GroupIndex = 0
          OriginalHeight = 41
        end
        object AbyssBestBashNavBarGroupControl: TdxNavBarGroupControl
          Left = 0
          Top = 401
          Width = 651
          Height = 19
          TabOrder = 3
          GroupIndex = 1
          OriginalHeight = 41
        end
        object AbyssTopBashNavBarGroupControl: TdxNavBarGroupControl
          Left = 0
          Top = 420
          Width = 651
          Height = 19
          TabOrder = 4
          GroupIndex = 2
          OriginalHeight = 41
        end
        object AbyssBashNavBarGroupControl: TdxNavBarGroupControl
          Left = 0
          Top = 439
          Width = 651
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
        Width = 651
        Height = 26
        Align = alTop
        AutoSize = False
        Caption = 
          #1044#1083#1103' '#1088#1072#1079#1084#1077#1097#1077#1085#1080#1103' '#1074#1089#1087#1086#1084#1086#1075#1072#1090#1077#1083#1100#1085#1099#1093' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1086#1074' '#1080' '#1090#1077#1089#1090#1086#1074'. '#1042' '#1088#1077#1083#1080#1079' '#1074#1077#1088 +
          #1089#1080#1080' '#1091#1073#1088#1072#1090#1100'.'
        WordWrap = True
      end
    end
  end
end
