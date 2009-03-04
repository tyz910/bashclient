unit Main;

interface

// ���������, ��� �� ������������.
uses
  Windows, Messages, Forms, SysUtils, Dialogs, rvhtmlimport, Graphics, RVStyle, ExtCtrls,
  IdBaseComponent, IdAntiFreezeBase, IdHTTP, IdAntiFreeze, StdCtrls, Controls,
  CheckLst, RVScroll, RichView, ComCtrls, Classes, Buttons;

type
  TMainForm = class(TForm)
    MainPageControl: TPageControl;
    BashTabSheet: TTabSheet;
    IThappensTabSheet: TTabSheet;
    OptionsTabSheet: TTabSheet;
    TestTabSheet: TTabSheet;
    lbl1: TLabel;
    AntiFreeze: TIdAntiFreeze;
    TestPageControl: TPageControl;
    LogTabSheet: TTabSheet;
    OtherTabSheet: TTabSheet;
    LogListBox: TListBox;
    ConsoleInputEdit: TEdit;
    MemoTabSheet: TTabSheet;
    ts1: TTabSheet;
    TestMemoMainTabSheet: TTabSheet;
    StartUpTimer: TTimer;
    FindFocusDelayTimer: TTimer;
    QuoteNumberLabel: TLabel;
    QuoteBashNumberLabel: TLabel;
    QuoteBashRatingLabel: TLabel;
    TestMainMemo: TMemo;
    TestAbyssBestMemo: TMemo;
    TestAbyssTopMemo: TMemo;
    TestAbyssMemo: TMemo;
    FontSelectButton: TButton;
    HtmlViewerStyle: TRVStyle;
    HtmlImporter: TRvHtmlImporter;
    ScrollDelayTimer: TTimer;
    FontSelectDialog: TFontDialog;
    PagesRichView: TRichView;
    rvstyl1: TRVStyle;
    chklst1: TCheckListBox;
    ts2: TTabSheet;
    TestITHappensMemo: TMemo;
    ITHQuoteNumberLabel: TLabel;
    TabChangeDelayTimer: TTimer;
    QuoteITHNumberLabel: TLabel;
    QuoteITHRatingLabel: TLabel;
    ITHPagesRichView: TRichView;
    BashPageSelectComboBox: TComboBox;
    BashOrgRuHtmlViewer: TRichView;
    ITHPageSelectComboBox: TComboBox;
    ITHHtmlViewer: TRichView;
    BashRefreshButton: TBitBtn;
    TestModeCheckBox: TCheckBox;
    ITHRefreshButton: TBitBtn;
    edt1: TEdit;
    edt2: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    ts3: TTabSheet;
    TestWoWBashMemo: TMemo;
    WoWBashTabSheet: TTabSheet;
    WoWBashHtmlViewer: TRichView;
    WoWBashPageSelectComboBox: TComboBox;
    WoWBashQuoteNumberLabel: TLabel;
    QuoteWoWBashNumberLabel: TLabel;
    QuoteWoWBashRatingLabel: TLabel;
    WoWBashRefreshButton: TBitBtn;
    WoWBashPagesRichView: TRichView;
    BashQuoteDateLabel: TLabel;
    ITHQuoteNameLabel: TLabel;
    procedure wmGetMinMaxInfo(var Msg : TMessage); message wm_GetMinMaxInfo; // ����������� �������� �����
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BashTabSheetEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure StartUpTimerTimer(Sender: TObject);
    procedure FindFocusDelayTimerTimer(Sender: TObject);
    procedure FontSelectButtonClick(Sender: TObject);
    procedure ScrollDelayTimerTimer(Sender: TObject);
    procedure PagesRichViewJump(Sender: TObject; id: Integer);
    procedure PagesRichViewClick(Sender: TObject);
    procedure chklst1ClickCheck(Sender: TObject);
    procedure MainPageControlChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure TabChangeDelayTimerTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BashPageSelectComboBoxChange(Sender: TObject);
    procedure BashOrgRuHtmlViewerMouseWheel(Sender: TObject;
      Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
      var Handled: Boolean);
    procedure ITHHtmlViewerMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure BashPageSelectComboBoxClick(Sender: TObject);
    procedure ITHPageSelectComboBoxClick(Sender: TObject);
    procedure IThappensTabSheetEnter(Sender: TObject);
    procedure BashRefreshButtonClick(Sender: TObject);
    procedure TestModeCheckBoxClick(Sender: TObject);
    procedure edt1Change(Sender: TObject);
    procedure edt2Change(Sender: TObject);
    procedure WoWBashHtmlViewerMouseWheel(Sender: TObject;
      Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
      var Handled: Boolean);
    procedure WoWBashRefreshButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

// �������� �������:
// ������ �� 51 ������.
// 0 : ���������
// [0,0] : ���������� ����� � �������
// [0,1] : �� ������������
// [0,2] : �� ������������
// [0,3] : �� ������������
// 1-50 : ������ (�� ����� 50)
// [*,0] : html ���� ������
// [*,1] : ����� ������
// [*,2] : �������
// [*,3] : �� ������������

type QuoteArray = array [0..50] of array [0..3] of string; // ������ �����

// �������� �������:
// ������ �� 13 �������.
// [*,1] : ��� �������� (linc, dots, currentpage, prevlinc, nextlinc)
// [*,2] : ����� ��������

type PageArray = array [1..13] of array [1..2] of string; // ������ ������
type ITHQuoteArray = array [0..10] of array [0..4] of string; // ������ �����
type WoWBashQuoteArray = array [0..50] of array [0..3] of string;

var
  MainForm: TMainForm;
  CurrentMainQuotesArray: QuoteArray;
  CurrentMainQuoteNumber: Integer;
  CurrentMainPagesArray: PageArray;
  CurrentAbyssQuotesArray: QuoteArray;
  CurrentAbyssQuoteNumber: Integer;
  CurrentAbyssBestQuotesArray: QuoteArray;
  CurrentAbyssBestQuoteNumber: Integer;
  CurrentAbyssBestPagesArray: PageArray;
  CurrentAbyssTopQuotesArray: QuoteArray;
  CurrentAbyssTopQuoteNumber: Integer;
  MainNeedLoad: Boolean;
  AbyssNeedLoad: Boolean;
  AbyssBestNeedLoad: Boolean;
  AbyssTopNeedLoad: Boolean;
  ITHMainNeedLoad: Boolean;
  LogFile: TextFile;
  CurrentITHQuotesArray: ITHQuoteArray;
  CurrentITHQuoteNumber: Integer;
  CurrentITHPagesArray: PageArray;
  Connection: Boolean;
  TestMode: Boolean;
  LastBashMainPageNum: string;
  LastBashAbyssBestPageNum: string;
  LastITHMainPageNum: string;
  HttpConnectTimeout: Integer;
  HttpReadTimeout: Integer;
  CurrentWoWBashMainQuotesArray: WoWBashQuoteArray;
  CurrentWoWBashOtherQuotesArray: WoWBashQuoteArray;
  CurrentWoWBashMainQuoteNumber: Integer;
  CurrentWoWBashOtherQuoteNumber: Integer;
  CurrentWoWBashPagesArray: PageArray;
  WoWBashMainNeedLoad: Boolean;
  WoWBashOtherNeedLoad: Boolean;
  LastWoWBashMainPageNum: string;
  LastWoWBashOtherPageNum: string;

implementation

uses IdTCPClient;

{$R *.dfm}

// ����������� �������� �����
procedure TMainForm.wmGetMinMaxInfo(var Msg : TMessage);
begin
  PMinMaxInfo(Msg.lParam)^.ptMinTrackSize.X := 366;
  PMinMaxInfo(Msg.lParam)^.ptMinTrackSize.Y := 450;
end;

// ������ ����
procedure WriteLog(Str: string);
begin
  Str := '[' + TimeToStr(Time) + ']  ' + Str;
  MainForm.LogListBox.AddItem(Str,MainForm);
  MainForm.LogListBox.ItemIndex := MainForm.LogListBox.Items.Capacity - 1;
  Append(LogFile);
  Writeln(LogFile,Str);
end;

// ���� ���� ��� ����������� ������, ����� "�� ������ ���������"
procedure FindFocus;
begin
  case MainForm.MainPageControl.ActivePageIndex of
  0: begin
     //CurrentHtmlViewer.SetFocus;
     MainForm.BashOrgRuHtmlViewer.SetFocus;
     WriteLog('�������� ������ �� Bash.org.ru');
     end;

  1: MainForm.ITHHtmlViewer.SetFocus;
  2: MainForm.WoWBashHtmlViewer.SetFocus;
  end;
end;

function ClearText(S:string):string;
begin
   while not(Pos(Chr(13),S)=0) do
   begin
     Delete(S, pos(Chr(13), S), 1);
     //WriteLog('del');
   end;
   while not(Pos(Chr(10),S)=0) do
   begin
     Delete(S, pos(Chr(10), S), 1);
     //WriteLog('del');
   end;
   while not(Pos(chr(VK_TAB),S)=0) do
   begin
     Delete(S, pos(chr(VK_TAB), S), 1);
     //WriteLog('del');
   end;
   ClearText:=S;
end;

// �������� ���������� ��������� ��������
procedure SetVariables;
begin
  Assign(LogFile,'Log.txt');
  Rewrite(LogFile);
  Close(LogFile);
  WriteLog('�������� ����������');
  CurrentMainQuoteNumber := 0;
  CurrentAbyssQuoteNumber := 0;
  MainNeedLoad := False;
  AbyssNeedLoad := False;
  AbyssBestNeedLoad := False;
  AbyssTopNeedLoad := False;
  ITHMainNeedLoad := False;
  MainForm.QuoteNumberLabel.Caption := '?/?';
  MainForm.ITHQuoteNumberLabel.Caption := '?/?';
  TestMode := MainForm.TestModeCheckBox.Checked;
  LastBashMainPageNum := 'none';
  LastBashAbyssBestPageNum := 'none';
  LastITHMainPageNum := 'none';
  HttpConnectTimeout := StrToInt(MainForm.edt1.Text);
  HttpReadTimeout := StrToInt(MainForm.edt2.Text);
  WoWBashMainNeedLoad := False;
  WoWBashOtherNeedLoad := False;
  LastWoWBashMainPageNum := 'none';
  LastWoWBashOtherPageNum := 'none';
end;

(*
������ ���������� ���������
%name%
Main
Other

+ type %name%QuoteArray = array [0..?] of array [0..?] of string;

+ var
  Current%name%MainQuotesArray: %name%QuoteArray;
  Current%name%OtherQuotesArray: %name%QuoteArray;
  Current%name%MainQuoteNumber: Integer;
  Current%name%OtherQuoteNumber: Integer;
  Current%name%PagesArray: PageArray;
  %name%MainNeedLoad: Boolean;
  %name%OtherNeedLoad: Boolean;
  Last%name%MainPageNum: string;
  Last%name%OtherPageNum: string;

* TMainForm.TabChangeDelayTimerTimer
  n: Open%name%Main;

* TMainForm.StartUpTimerTimer
  %name%MainNeedLoad := True;
  %name%OtherNeedLoad := True;

* TMainForm.PagesRichViewJump  
  n:Open%name%MainPageNum(Current%name%PagesArray[id+1,2]);

* FindFocus
  n: MainForm.%name%HtmlViewer.SetFocus;

* SetVariables
  %name%MainNeedLoad := False;
  %name%OtherNeedLoad := False;
  Last%name%MainPageNum := 'none';
  Last%name%OtherPageNum := 'none';

* CurrentHtmlViewer
  n: begin
       CurrentHtmlViewer := MainForm.%name%HtmlViewer;
       WriteLog('������� HtmlViewer: %name%HtmlViewer');
     end;

+ procedure Change%name%Pages;
+ function Extract%name%Pages(S:string):PageArray;
+ function Current%name%QuoteNumber: Integer;
+ procedure Change%name%QuoteInformation;

+
function Current%name%QuotesArray: %name%QuoteArray;
begin
  WriteLog('��������  ������� ������ ����� %name%');
  case MainForm.%name%PageSelectComboBox.ItemIndex of
    0: Current%name%QuotesArray := Current%name%MainQuotesArray;
    1: Current%name%QuotesArray := Current%name%OtherQuotesArray;
  end;
end;

+
function Extract%name%Pages(S:string):PageArray;
var  ptype: array[1..13] of string; // ��� ��������: linc, dots, currentpage, prevlinc, nextlinc
     pnum: array[1..13] of string; // ����� ��������
     num: integer; // ����� ������
     StartPoint: string;
begin
  WriteLog('��������� ������ ������� %name%');
  StartPoint := '';
  num:=1;
  while false do
  begin
    ptype[num] := '';
    pnum[num]:= '';
    WriteLog('� ' + IntToStr(num) + ', type = '+ ptype[num] + ', num = '+ pnum[num]);
    Extract%name%Pages[num, 1]:=ptype[num];
    Extract%name%Pages[num, 2]:=pnum[num];
    num := num +1;
  end;
end;

+
// � ������, �������� �����������:
// S := Copy(S, Pos('text',S), Length(S));
// S := Copy(S, Pos('text',S) + n, Length(S));
// buf[num,?] := Copy(S, 0,Pos('text',S)-n);
function %name%QuoteParser(S: string; qtype: integer):%name%QuoteArray;
var num: Integer;
    buf: %name%QuoteArray;
begin
  if not(S = 'error') then
  begin
    WriteLog('%name% Parser on');
    num:=0;
    // �������� ������ �� ����� ������� � ������������
    case qtype of
      0: Current%name%MainPagesArray := Extract%name%Pages('text');
    end;
    while ������� ���������  do
    begin
       num := num + 1;
       // ��� ����������� buf
       // �� �������� ������� ���, ����������� � ������ ������
    end;
    WriteLog('%name% Parser off');
    buf[0,0] := IntToStr(num);
  end
  else
  begin
    buf[0,0] := '1';
    buf[1,0] := '������';
  end;
%name%QuoteParser := buf;
end;

+
function %name%GetMainAsString: string;
begin
  WriteLog('�������� html ������� %name% � ������');
  %name%GetMainAsString := GetStringFromUrl('http://');
end;

+
function GetCurrent%name%MainQuotes: %name%QuoteArray;
begin
   if TestMode
   then GetCurrent%name%MainQuotes := %name%QuoteParser(MainForm.Test%name%Memo.Text, 0)
   else GetCurrent%name%MainQuotes := %name%QuoteParser(%name%GetMainAsString, 0);
end;

+
function Current%name%QuoteNumber: Integer;
begin
  WriteLog('�������� ����� ������� ������ %name%');
  case MainForm.%name%PageSelectComboBox.ItemIndex of
    0: Current%name%QuoteNumber := Current%name%MainQuoteNumber;
    1: Current%name%QuoteNumber := Current%name%OtherQuoteNumber;
  end;
end;

+
procedure Change%name%QuoteInformation;
var lCaption1: string;
    lCaption2: string;
    lCaption3: string;
begin
   lCaption1 := IntToStr(Current%name%QuoteNumber) + '/' + Current%name%QuotesArray[0,0];
   lCaption2 := Current%name%QuotesArray[Current%name%QuoteNumber,1];
   lCaption3 := Current%name%QuotesArray[Current%name%QuoteNumber,2];
   MainForm.%name%QuoteNumberLabel.Caption := lCaption1;
   MainForm.Quote%name%NumberLabel.Caption := '#' + lCaption2;
   MainForm.Quote%name%RatingLabel.Caption := '[' + lCaption3 + ']';
end;

+
procedure Change%name%Pages;
var  i: Integer;
begin
   WriteLog('������ �������� %name%');
   i:=1;
   MainForm.%name%PagesRichView.Visible:= True;
   MainForm.%name%PagesRichView.Clear;
   while not(Current%name%PagesArray[i,1] = '') do
   begin
       if (Current%name%PagesArray[i,1] = 'currentpage') or (Current%name%PagesArray[i,1] = 'dots') then MainForm.%name%PagesRichView.Add(Current%name%PagesArray[i,2],5)
       else
           begin
             if (Current%name%PagesArray[i,1] = 'prevlinc') then MainForm.%name%PagesRichView.AddNLTag('>>',4,-1,i);
             if (Current%name%PagesArray[i,1] = 'nextlinc') then MainForm.%name%PagesRichView.AddNLTag('<<',4,-1,i);
             if (Current%name%PagesArray[i,1] = 'linc') then MainForm.%name%PagesRichView.AddNLTag(Current%name%PagesArray[i,2],4,-1,i);
           end;

       MainForm.%name%PagesRichView.Add(' ',0);
       i:= i+1;
   end;
   MainForm.%name%PagesRichView.Reformat;
end;

+
procedure Open%name%Main;
begin
  if %name%MainNeedLoad = True then
  begin
    Current%name%MainQuotesArray := GetCurrent%name%MainQuotes;
    Current%name%MainQuoteNumber := 1;
    ChangeHtmlViewerText(MainForm.%name%HtmlViewer, Current%name%MainQuotesArray[Current%name%QuoteNumber,0]);
    %name%MainNeedLoad := False;
  end;
  Change%name%QuoteInformation;
  Change%name%Pages;
end;

+
procedure ChangeCurrent%name%QuoteNumber(delta:Integer);
begin
  WriteLog('������ ����� ������� ������ %name% ��' + IntToStr(delta));
  case MainForm.%name%PageSelectComboBox.ItemIndex of
    0: Current%name%MainQuoteNumber := Current%name%MainQuoteNumber + delta;
    1: Current%name%OtherQuoteNumber := Current%name%OtherQuoteNumber + delta;
  end;
end;

+
procedure Open%name%MainPageNum(Num: string);
begin
  Current%name%MainQuotesArray := %name%QuoteParser(GetStringFromUrl('http://' + Num),0);
  Current%name%MainQuoteNumber := 1;
  ChangeHtmlViewerText(MainForm.%name%HtmlViewer, Current%name%MainQuotesArray[Current%name%QuoteNumber,0]);
  Change%name%QuoteInformation;
  Change%name%Pages;
  Last%name%MainPageNum := Num;
end;

+
procedure %name%Next;
begin
    if NOT(Current%name%QuoteNumber = StrToInt(Current%name%QuotesArray[0,0])) then
          begin
             ChangeCurrent%name%QuoteNumber(+1);
             ChangeHtmlViewerText(MainForm.%name%HtmlViewer,Current%name%QuotesArray[Current%name%QuoteNumber,0]);
          end;
    WriteLog('������� �� ����. ������ %name% � CurrentNumber ' + IntToStr(Current%name%QuoteNumber));
    Change%name%QuoteInformation;
end;

+
procedure %name%Previous;
begin
    if NOT(Current%name%QuoteNumber = 1) then
          begin
             ChangeCurrent%name%QuoteNumber(-1);
             ChangeHtmlViewerText(MainForm.%name%HtmlViewer,Current%name%QuotesArray[Current%name%QuoteNumber,0]);
          end;
    WriteLog('������� �� ����. ������ %name% � CurrentNumber ' + IntToStr(Current%name%QuoteNumber));
    Change%name%QuoteInformation;
end;

+
procedure %name%ScrollControl(hv: TRichView; WheelDelta: integer);
begin
  if ((hv.VScrollPos = hv.VScrollMax) or (hv.VScrollMax < 0)) and (WheelDelta < 0)
  then %name%Next;
  if ((hv.VScrollPos = 0) and (WheelDelta > 0))
  then %name%Previous;
end;

+*
procedure TMainForm.%name%HtmlViewerMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  %name%ScrollControl(MainForm.%name%HtmlViewer,WheelDelta);
end;

+*
procedure TMainForm.%name%RefreshButtonClick(Sender: TObject);
begin
  FindFocus;
      case %name%PageSelectComboBox.ItemIndex of
      0:begin
           if Last%name%MainPageNum = 'none' then
           begin
             Current%name%MainQuotesArray := GetCurrent%name%MainQuotes;
             Current%name%MainQuoteNumber := 1;
             ChangeHtmlViewerText(MainForm.%name%HtmlViewer, Current%name%MainQuotesArray[Current%name%MainQuoteNumber,0]);
           end
           else
           begin
             Open%name%MainPageNum(Last%name%MainPageNum);
           end;
        end;
      1:begin
           if Last%name%OtherPageNum = 'none' then
           begin
             Current%name%OtherQuotesArray := GetCurrent%name%OtherQuotes;
             Current%name%OtherQuoteNumber := 1;
             ChangeHtmlViewerText(MainForm.%name%HtmlViewer, Current%name%OtherQuotesArray[Current%name%OtherQuoteNumber,0]);
           end
           else
           begin
             Open%name%OtherPageNum(Last%name%OtherPageNum);
           end;
        end;
      end;
  Change%name%QuoteInformation;
  Change%name%Pages;
end;

*)

// �������� ������� HtmlViewer
function CurrentHtmlViewer:TRichView;
begin
  case MainForm.MainPageControl.ActivePageIndex of
  0: begin
       CurrentHtmlViewer := MainForm.BashOrgRuHtmlViewer;
       WriteLog('������� HtmlViewer: BashOrgRuHtmlViewer');
     end;

  1: begin
       CurrentHtmlViewer := MainForm.ITHHtmlViewer;
       WriteLog('������� HtmlViewer: ITHHtmlViewer');
     end;
  2: begin
       CurrentHtmlViewer := MainForm.WoWBashHtmlViewer;
       WriteLog('������� HtmlViewer: WoWBashHtmlViewer');
     end;
  end;

end;

// �������� ������ � HtmlViewer
procedure ChangeHtmlViewerText(HV:TRichView; LoadText:String);
begin
  //LoadText := ClearText(LoadText);
  WriteLog('��������� ����� "'+ LoadText +'" � ' + HV.Name);

  hv.Clear;
  MainForm.HtmlImporter.RichView := HV;
  MainForm.HtmlImporter.LoadHtml(LoadText);
  HV.Format;
  MainForm.ScrollDelayTimer.Enabled := True;



  HV.Format;
  MainForm.ScrollDelayTimer.Enabled := True;
  // ������ �����
  MainForm.HtmlViewerStyle.TextStyles[0].Assign(MainForm.FontSelectDialog.Font);
  HV.Reformat;
end;

// �������� html ��� �������� �� ��������� ������
function GetStringFromUrl(GetUrl: string): string;
begin
      //Connection := False;

      
      ChangeHtmlViewerText(CurrentHtmlViewer, '��������...');
      WriteLog('�������� html ��� �� �������� ' + GetUrl);

      with TIdHTTP.Create(nil) do
      begin

        ConnectTimeout := HttpConnectTimeout;
        ReadTimeout := HttpReadTimeout;
     
        //ReadTimeout := 1000;
        //Head(GetUrl);
        try
          GetStringFromUrl := Get(GetUrl);
          DisconnectSocket;
          Free;
        except
          GetStringFromUrl := 'error';
          ChangeHtmlViewerText(CurrentHtmlViewer,'������');
        end;


      end;


end;

//////

function CurrentWoWBashQuotesArray: WoWBashQuoteArray;
begin
  WriteLog('��������  ������� ������ ����� WoWBash');
  case MainForm.WoWBashPageSelectComboBox.ItemIndex of
    0: CurrentWoWBashQuotesArray := CurrentWoWBashMainQuotesArray;
    1: CurrentWoWBashQuotesArray := CurrentWoWBashOtherQuotesArray;
  end;
end;

function ExtractWoWBashPages(S:string):PageArray;
var  ptype: array[1..13] of string; // ��� ��������: linc, dots, currentpage, prevlinc, nextlinc
     pnum: array[1..13] of string; // ����� ��������
     num: integer; // ����� ������
     StartPoint: string;
begin
  WriteLog('��������� ������ ������� WoWBash');
  StartPoint := '';
  num:=1;
  WriteLog(S);
  while not(S = '') do
  begin
    //WriteLog(S);
    //WriteLog(Copy(S, 2, 1));
    if (Copy(S, 2, 1) = 'b')
    then
      begin
        ptype[num] := 'currentpage';
        pnum[num]:= Copy(S, 4, Pos('</b>',S)-4);
        S := Copy(S, Pos('</b>',S)+4, Length(S));
        S := Copy(S, Pos('<',S), Length(S));
      end
    else
      begin
        S := Copy(S, Pos('page=',S)+5, Length(S));
        pnum[num]:= Copy(S, 0, Pos('>',S)-1);
        ptype[num] := 'linc';
        if not(Pos('������',Copy(S, 0, Pos('</a>',S)-1)) = 0) then ptype[num] := 'nextlinc';
        if not(Pos('�����',Copy(S, 0, Pos('</a>',S)-1)) = 0) then ptype[num] := 'endlinc';
        if not(Pos('�����',Copy(S, 0, Pos('</a>',S)-1)) = 0) then ptype[num] := 'prevlinc';
        if not(Pos('������',Copy(S, 0, Pos('</a>',S)-1)) = 0) then ptype[num] := 'homelinc';
        //if not(Pos('</a>',S) = 0) then ptype[num] := 'prevlinc';
        S := Copy(S, Pos('</a>',S)+4, Length(S));
        S := Copy(S, Pos('<',S), Length(S));
      end;
    //ptype[num] := '';
    //pnum[num]:= '';
    WriteLog('� ' + IntToStr(num) + ', type = '+ ptype[num] + ', num = '+ pnum[num]);
    ExtractWoWBashPages[num, 1]:=ptype[num];
    ExtractWoWBashPages[num, 2]:=pnum[num];
    num := num +1;
  end;
end;

// � ������, �������� �����������:
// S := Copy(S, Pos('text',S), Length(S));
// S := Copy(S, Pos('text',S) + n, Length(S));
// buf[num,?] := Copy(S, 0,Pos('text',S)-n);
function WoWBashQuoteParser(S: string; qtype: integer):WoWBashQuoteArray;
var num: Integer;
    buf: WoWBashQuoteArray;
begin
  if not(S = 'error') then
  begin
    WriteLog('WoWBash Parser on');
    num:=0;
    // �������� ������ �� ����� ������� � ������������
    //case qtype of
    //  0: CurrentWoWBashMainPagesArray := ExtractWoWBashPages('text');
    //end;
    S := Copy(S, Pos('<table width=500>',S) + 1, Length(S));
    S := Copy(S, Pos('<table width=500>',S), Length(S));
    WriteLog(S);

    while not(Pos('blockquote',S)=0)  do
    begin
       num := num + 1;
       S := Copy(S, Pos('index.php?id=',S) + 13, Length(S));
       buf[num,1] := Copy(S, 0,Pos('>',S) - 1);
       WriteLog(buf[num,1]);
       S := Copy(S, Pos('<blockquote>',S) + 25, Length(S));
       buf[num,0] := Copy(S, 0,Pos('</blockquote>',S) - 8);
       S := Copy(S, Pos('</blockquote>',S) + 13, Length(S));
       WriteLog(buf[num,0]);

       // ��� ����������� buf
       // �� �������� ������� ���, ����������� � ������ ������
    end;
    WriteLog('WoWBash Parser off');
    buf[0,0] := IntToStr(num);
    S:= Copy(S, Pos('right>',S) + 6, Pos('</div>',S) - Pos('right>',S) - 6);
    CurrentWoWBashPagesArray := ExtractWoWBashPages(S);

  end
  else
  begin
    buf[0,0] := '1';
    buf[1,0] := '������';
  end;
WoWBashQuoteParser := buf;
end;

function WoWBashGetMainAsString: string;
begin
  WriteLog('�������� html ������� WoWBash � ������');
  WoWBashGetMainAsString := GetStringFromUrl('http://wowbash.org.ru/');
end;

function GetCurrentWoWBashMainQuotes: WoWBashQuoteArray;
begin
   if TestMode
   then GetCurrentWoWBashMainQuotes := WoWBashQuoteParser(MainForm.TestWoWBashMemo.Text, 0)
   else GetCurrentWoWBashMainQuotes := WoWBashQuoteParser(WoWBashGetMainAsString, 0);
end;

function CurrentWoWBashQuoteNumber: Integer;
begin
  WriteLog('�������� ����� ������� ������ WoWBash');
  case MainForm.WoWBashPageSelectComboBox.ItemIndex of
    0: CurrentWoWBashQuoteNumber := CurrentWoWBashMainQuoteNumber;
    1: CurrentWoWBashQuoteNumber := CurrentWoWBashOtherQuoteNumber;
  end;
end;

procedure ChangeWoWBashQuoteInformation;
var lCaption1: string;
    lCaption2: string;
    lCaption3: string;
begin
   lCaption1 := IntToStr(CurrentWoWBashQuoteNumber) + '/' + CurrentWoWBashQuotesArray[0,0];
   lCaption2 := CurrentWoWBashQuotesArray[CurrentWoWBashQuoteNumber,1];
   lCaption3 := CurrentWoWBashQuotesArray[CurrentWoWBashQuoteNumber,2];
   MainForm.WoWBashQuoteNumberLabel.Caption := lCaption1;
   MainForm.QuoteWoWBashNumberLabel.Caption := '#' + lCaption2;
   MainForm.QuoteWoWBashRatingLabel.Caption := '[' + lCaption3 + ']';
end;

procedure ChangeWoWBashPages;
var  i: Integer;
begin
   WriteLog('������ �������� WoWBash');
   i:=1;
   MainForm.WoWBashPagesRichView.Visible:= True;
   MainForm.WoWBashPagesRichView.Clear;
   while not(CurrentWoWBashPagesArray[i,1] = '') do
   begin
       if (CurrentWoWBashPagesArray[i,1] = 'currentpage') or (CurrentWoWBashPagesArray[i,1] = 'dots') then MainForm.WoWBashPagesRichView.Add(CurrentWoWBashPagesArray[i,2],5)
       else
           begin
             if (CurrentWoWBashPagesArray[i,1] = 'prevlinc') then MainForm.WoWBashPagesRichView.AddNLTag('�����',4,-1,i);
             if (CurrentWoWBashPagesArray[i,1] = 'nextlinc') then MainForm.WoWBashPagesRichView.AddNLTag('������',4,-1,i);
             if (CurrentWoWBashPagesArray[i,1] = 'linc') then MainForm.WoWBashPagesRichView.AddNLTag(CurrentWoWBashPagesArray[i,2],4,-1,i);
             if (CurrentWoWBashPagesArray[i,1] = 'endlinc') then MainForm.WoWBashPagesRichView.AddNLTag('� �����',4,-1,i);
             if (CurrentWoWBashPagesArray[i,1] = 'homelinc') then MainForm.WoWBashPagesRichView.AddNLTag('� ������',4,-1,i);
           end;

       MainForm.WoWBashPagesRichView.Add(' ',0);
       i:= i+1;
   end;
   MainForm.WoWBashPagesRichView.Reformat;
end;

procedure OpenWoWBashMain;
begin
  if WoWBashMainNeedLoad = True then
  begin
    CurrentWoWBashMainQuotesArray := GetCurrentWoWBashMainQuotes;
    CurrentWoWBashMainQuoteNumber := 1;
    ChangeHtmlViewerText(MainForm.WoWBashHtmlViewer, CurrentWoWBashQuotesArray[CurrentWoWBashQuoteNumber,0]);
    WoWBashMainNeedLoad := False;
  end;
  ChangeWoWBashQuoteInformation;
  ChangeWoWBashPages;
end;

procedure ChangeCurrentWoWBashQuoteNumber(delta:Integer);
begin
  WriteLog('������ ����� ������� ������ WoWBash ��' + IntToStr(delta));
  case MainForm.WoWBashPageSelectComboBox.ItemIndex of
    0: CurrentWoWBashMainQuoteNumber := CurrentWoWBashMainQuoteNumber + delta;
    1: CurrentWoWBashOtherQuoteNumber := CurrentWoWBashOtherQuoteNumber + delta;
  end;
end;

procedure OpenWoWBashMainPageNum(Num: string);
begin
  CurrentWoWBashMainQuotesArray := WoWBashQuoteParser(GetStringFromUrl('http://wowbash.org.ru/index.php?page=' + Num),0);
  CurrentWoWBashMainQuoteNumber := 1;
  ChangeHtmlViewerText(MainForm.WoWBashHtmlViewer, CurrentWoWBashQuotesArray[CurrentWoWBashMainQuoteNumber,0]);
  ChangeWoWBashQuoteInformation;
  ChangeWoWBashPages;
  LastWoWBashMainPageNum := Num;
end;

procedure WoWBashNext;
begin
    if NOT(CurrentWoWBashQuoteNumber = StrToInt(CurrentWoWBashQuotesArray[0,0])) then
          begin
             ChangeCurrentWoWBashQuoteNumber(+1);
             ChangeHtmlViewerText(MainForm.WoWBashHtmlViewer,CurrentWoWBashQuotesArray[CurrentWoWBashQuoteNumber,0]);
          end;
    WriteLog('������� �� ����. ������ WoWBash � CurrentNumber ' + IntToStr(CurrentWoWBashQuoteNumber));
    ChangeWoWBashQuoteInformation;
end;

procedure WoWBashPrevious;
begin
    if NOT(CurrentWoWBashQuoteNumber = 1) then
          begin
             ChangeCurrentWoWBashQuoteNumber(-1);
             ChangeHtmlViewerText(MainForm.WoWBashHtmlViewer,CurrentWoWBashQuotesArray[CurrentWoWBashQuoteNumber,0]);
          end;
    WriteLog('������� �� ����. ������ WoWBash � CurrentNumber ' + IntToStr(CurrentWoWBashQuoteNumber));
    ChangeWoWBashQuoteInformation;
end;

procedure WoWBashScrollControl(hv: TRichView; WheelDelta: integer);
begin
  if ((hv.VScrollPos = hv.VScrollMax) or (hv.VScrollMax < 0)) and (WheelDelta < 0)
  then WoWBashNext;
  if ((hv.VScrollPos = 0) and (WheelDelta > 0))
  then WoWBashPrevious;
end;

procedure TMainForm.WoWBashHtmlViewerMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  WoWBashScrollControl(WoWBashHtmlViewer,WheelDelta);
end;

procedure TMainForm.WoWBashRefreshButtonClick(Sender: TObject);
begin
  FindFocus;
      case WoWBashPageSelectComboBox.ItemIndex of
      0:begin
           if LastWoWBashMainPageNum = 'none' then
           begin
             CurrentWoWBashMainQuotesArray := GetCurrentWoWBashMainQuotes;
             CurrentWoWBashMainQuoteNumber := 1;
             ChangeHtmlViewerText(MainForm.WoWBashHtmlViewer, CurrentWoWBashMainQuotesArray[CurrentWoWBashMainQuoteNumber,0]);
           end
           else
           begin
             OpenWoWBashMainPageNum(LastWoWBashMainPageNum);
           end;
        end;
      1:begin
           if LastWoWBashOtherPageNum = 'none' then
           begin
             //CurrentWoWBashOtherQuotesArray := GetCurrentWoWBashOtherQuotes;
             CurrentWoWBashOtherQuoteNumber := 1;
             ChangeHtmlViewerText(MainForm.WoWBashHtmlViewer, CurrentWoWBashOtherQuotesArray[CurrentWoWBashOtherQuoteNumber,0]);
           end
           else
           begin
             //OpenWoWBashOtherPageNum(LastWoWBashOtherPageNum);
           end;
        end;
      end;
  ChangeWoWBashQuoteInformation;
  ChangeWoWBashPages;
end;

///////

// ��������  ������� ������ ������� ����
function CurrentBashPagesArray:PageArray;
begin
  case MainForm.BashPageSelectComboBox.ItemIndex of
   0: CurrentBashPagesArray := CurrentMainPagesArray;
   1: CurrentBashPagesArray := CurrentAbyssBestPagesArray;
  end;
end;

// ����������� �������
procedure ChangePages;
var  i: Integer;
     pa: PageArray;
begin
   WriteLog('������ �������� ����');
   i:=1;
   pa := CurrentBashPagesArray;
   MainForm.PagesRichView.Visible:= True;
   MainForm.PagesRichView.Clear;
   while not(pa[i,1] = '') do
   begin
       if (pa[i,1] = 'currentpage') or (pa[i,1] = 'dots') then MainForm.PagesRichView.Add(pa[i,2],5)
       else
           begin
             if (pa[i,1] = 'prevlinc') then MainForm.PagesRichView.AddNLTag('>>',4,-1,i);
             if (pa[i,1] = 'nextlinc') then MainForm.PagesRichView.AddNLTag('<<',4,-1,i);
             if (pa[i,1] = 'linc') then MainForm.PagesRichView.AddNLTag(pa[i,2],4,-1,i);
           end;

       MainForm.PagesRichView.Add(' ',0);
       i:= i+1;
   end;
   MainForm.PagesRichView.Reformat;
end;

// ������ �������� IT happens
procedure ChangeITHPages;
var  i: Integer;
begin
   WriteLog('������ �������� ITH');
   i:=1;
   MainForm.ITHPagesRichView.Visible:= True;
   MainForm.ITHPagesRichView.Clear;
   while not(CurrentITHPagesArray[i,1] = '') do
   begin
       if (CurrentITHPagesArray[i,1] = 'currentpage') or (CurrentITHPagesArray[i,1] = 'dots') then MainForm.ITHPagesRichView.Add(CurrentITHPagesArray[i,2],5)
       else
           begin
             if (CurrentITHPagesArray[i,1] = 'prevlinc') then MainForm.ITHPagesRichView.AddNLTag('>>',4,-1,i);
             if (CurrentITHPagesArray[i,1] = 'nextlinc') then MainForm.ITHPagesRichView.AddNLTag('<<',4,-1,i);
             if (CurrentITHPagesArray[i,1] = 'linc') then MainForm.ITHPagesRichView.AddNLTag(CurrentITHPagesArray[i,2],4,-1,i);
           end;

       MainForm.ITHPagesRichView.Add(' ',0);
       i:= i+1;
   end;
   MainForm.ITHPagesRichView.Reformat;
end;

// ���������� ������� �� ����������� <div class="selector"> ... </div>
function ExtractITHPages(S:string):PageArray;
var  ptype: array[1..13] of string; // ��� ��������: linc, dots, currentpage, prevlinc, nextlinc
     pnum: array[1..13] of string; // ����� ��������
     num: integer; // ����� ������
     StartPoint: string;
begin
  WriteLog('��������� ������ ������� ITH');
  StartPoint := 'e/';
  S := Copy(S, Pos('<sp',S),Length(S));
  num:=1;
  // ��� ��� ����
  while not(Copy(S, 0, 6) = '</div>') do
  begin
    if Copy(S, 0, 1) = '<' then
    begin
      S := Copy(S, Pos('<sp',S)+6,Length(S));
      ptype[num] := 'linc';
      pnum[num]:= Copy(S, Pos(StartPoint,S)+2,Pos('">',S) - Pos(StartPoint,S) - 2);
      if Copy(S, 0, 2) = 'cl' then
      begin
      ptype[num] := 'currentpage';
      pnum[num]:= Copy(S, Pos('<b>',S)+3,Pos('</b>',S) - Pos('<b>',S) - 3);
      end;
    end
    else
    begin
       ptype[num] := 'dots';
       pnum[num]:= '�';
    end;
    S := Copy(S, Pos('</sp',S)+7,Length(S));
    //Delete(pnum[num], pos(Chr(13), pnum[num]), 1);
    //Delete(pnum[num], pos(Chr(10), pnum[num]), 1);
    ExtractITHPages[num, 1]:=ptype[num];
    ExtractITHPages[num, 2]:=pnum[num];
    num := num +1;
  end;
end;

// ���������� ������� �� ����������� <div class="pager"> ... </div>
function ExtractPages(S,From:string):PageArray;
var
  ptype: array[1..13] of string; // ��� ��������: linc, dots, currentpage, prevlinc, nextlinc
  pnum: array[1..13] of string; // ����� ��������
  num: integer; // ����� ������
  StartPoint: string;
begin
  WriteLog('��������� ������ ������� ����');
  if From = 'Main' then StartPoint := 'x/';
  if From = 'AbyssBest' then StartPoint := 't/';
  S := Copy(S, Pos('/sp',S)+6,Length(S));
  num:=1;
  // ����� ������ �����
  while not(Copy(S, 0, 6) = '</div>') do
  begin
    if Copy(S, 0, 2) = '<a' then
      begin
        pnum[num]:= Copy(S, Pos(StartPoint,S)+2,Pos('">',S) - Pos(StartPoint,S) - 2);
        S := Copy(S, Pos('">',S)+2,Length(S));
        if Copy(S, 0,1) = '&'
        then
          begin
            if Copy(S, 2,1) = 'l' then ptype[num] := 'nextlinc' else ptype[num] := 'prevlinc';
          end
        else
          begin
            ptype[num] := 'linc';
          end;
        S := Copy(S, Pos('/a',S)+3,Length(S));
      end
    else
      begin
        pnum[num] := Copy(S, 7 ,Pos('</',S)-7);
        if  pnum[num] = '�' then ptype[num] := 'dots' else ptype[num] := 'currentpage';
        S := Copy(S, Pos('/sp',S)+6,Length(S));
      end;
    // ����� � ��� ����������
    WriteLog('� ' + IntToStr(num) + ', type = '+ ptype[num] + ', num = '+ pnum[num]);
    ExtractPages[num, 1]:=ptype[num];
    ExtractPages[num, 2]:=pnum[num];
    num := num +1;
  end;
  WriteLog('��� �������� ���������');
end;

// �������� ������������ ����� � TRichView
function GetRVText(RV:TRichView):string;
begin
  RV.SelectAll;
  GetRVText := RV.GetSelText;
  RV.Deselect;
end;

// ����� ������� ������ ����
function CurrentBashQuoteNumber: Integer;
begin
  WriteLog('�������� ����� ������� ������');
  case MainForm.BashPageSelectComboBox.ItemIndex of
  0: CurrentBashQuoteNumber := CurrentMainQuoteNumber;
  1: CurrentBashQuoteNumber := CurrentAbyssBestQuoteNumber;
  2: CurrentBashQuoteNumber := CurrentAbyssTopQuoteNumber;
  3: CurrentBashQuoteNumber := CurrentAbyssQuoteNumber;
  end;
end;

// ������ ����� ������� ������ ���� �� delta
procedure ChangeCurrentBashQuoteNumber(delta:Integer);
begin
  WriteLog('������ ����� ������� ������ ��' + IntToStr(delta));
  case MainForm.BashPageSelectComboBox.ItemIndex of
  0: CurrentMainQuoteNumber := CurrentMainQuoteNumber + delta;
  1: CurrentAbyssBestQuoteNumber := CurrentAbyssBestQuoteNumber + delta;
  2: CurrentAbyssTopQuoteNumber := CurrentAbyssTopQuoteNumber + delta;
  3: CurrentAbyssQuoteNumber := CurrentAbyssQuoteNumber + delta;
  end;
end;

// ��������  ������� ������ ����� ����
function CurrentBashQuotesArray: QuoteArray;
begin
  WriteLog('��������  ������� ������ ����� ����');
  case MainForm.BashPageSelectComboBox.ItemIndex of
  0: CurrentBashQuotesArray := CurrentMainQuotesArray;
  1: CurrentBashQuotesArray := CurrentAbyssBestQuotesArray;
  2: CurrentBashQuotesArray := CurrentAbyssTopQuotesArray;
  3: CurrentBashQuotesArray := CurrentAbyssQuotesArray;
  end;
end;

// ��������-�������� �������
procedure OpenCloseTestTab;
begin
  if MainForm.TestTabSheet.TabVisible = False
  then begin
          WriteLog('TestTab ������ - ��������� � ��������� �� ���');
          MainForm.TestTabSheet.TabVisible := True;
          WriteLog('��������� �� TestTab.');
          MainForm.MainPageControl.ActivePageIndex := MainForm.MainPageControl.PageCount - 1;
          WriteLog('��������� �� LogTab.');
          MainForm.TestPageControl.TabIndex := 0;
       end
  else begin
          WriteLog('TestTab ������ - ��������� � ��������� �� ������� ����');
          MainForm.TestTabSheet.TabVisible := False;
          WriteLog('��������� �� BashTab.');
          MainForm.MainPageControl.ActivePageIndex := 0;
       end;
end;

// ��������� ������� ������
procedure HotKeyMaster(Key: Char);
begin
  WriteLog('HotKeyMaster: ������ ������� ' + Key);
  case Key of
    '`','�': OpenCloseTestTab;
  end;
end;

// ������ ������ ������
procedure ChangeITHQuoteInformation;
var lCaption1: string;
    lCaption2: string;
    lCaption3: string;
    lCaption4: string;
begin
   lCaption1 := IntToStr(CurrentITHQuoteNumber) + '/' + CurrentITHQuotesArray[0,0];
   lCaption2 := CurrentITHQuotesArray[CurrentITHQuoteNumber,1];
   lCaption3 := CurrentITHQuotesArray[CurrentITHQuoteNumber,2];
   lCaption4 := CurrentITHQuotesArray[CurrentITHQuoteNumber,4];

   MainForm.ITHQuoteNumberLabel.Caption := lCaption1;
   MainForm.QuoteITHNumberLabel.Caption := '#' + lCaption2;
   MainForm.QuoteITHRatingLabel.Caption := '[' + lCaption3 + ']';
   MainForm.ITHQuoteNameLabel.Caption := lCaption4;
   //MainForm.ITHappensNavBar.ActiveGroup.Caption := '������� ' +  '['+ CurrentITHQuotesArray[CurrentITHQuoteNumber,4] + ']';
   //MainForm.ITHPageSelectComboBox.Items[0] := '������� ' +  '['+ CurrentITHQuotesArray[CurrentITHQuoteNumber,4] + ']';

end;

// ������ ������ ������
procedure ChangeQuoteHint;
begin
  with MainForm.QuoteBashNumberLabel do
  begin
    Hint := '';
    Hint:='������ � ' + CurrentBashQuotesArray[CurrentBashQuoteNumber,1];
    Hint:= Hint + #10 + #13;
    Hint:= Hint + '�������: ' + CurrentBashQuotesArray[CurrentBashQuoteNumber,2];
  end;
end;

procedure ChangeQuoteInformation;
var lCaption1: string;
    lCaption2: string;
    lCaption3: string;
    lCaption4: string;
begin
  lCaption1 := IntToStr(CurrentBashQuoteNumber) + '/' + CurrentBashQuotesArray[0,0];
  lCaption2 := CurrentBashQuotesArray[CurrentBashQuoteNumber,1];
  lCaption3 := CurrentBashQuotesArray[CurrentBashQuoteNumber,2];
  lCaption4 := CurrentBashQuotesArray[CurrentBashQuoteNumber,3];
  if lCaption1 = '0/' then lCaption1 := '?/?';
  MainForm.QuoteNumberLabel.Caption := lCaption1;
  MainForm.QuoteBashNumberLabel.Caption := '#' + lCaption2;
  MainForm.QuoteBashRatingLabel.Caption := '[' + lCaption3 + ']';
  MainForm.BashQuoteDateLabel.Caption := lCaption4;
  ChangeQuoteHint;
  WriteLog('������ ������ ������: ' + lCaption1 + ', '+ lCaption2 + ', '+ lCaption3);
end;

// ������� �� ����� ������
procedure BashNext;
begin
    if not(GetRVText(MainForm.BashOrgRuHtmlViewer) = '��������...') then
    begin
    if NOT(CurrentBashQuoteNumber = StrToInt(CurrentBashQuotesArray[0,0]))
          then
          begin
             ChangeCurrentBashQuoteNumber(+1);
             ChangeHtmlViewerText(MainForm.BashOrgRuHtmlViewer,CurrentBashQuotesArray[CurrentBashQuoteNumber,0]);
          end
    else
          begin

            if (MainForm.BashPageSelectComboBox.ItemIndex = 3) then
            begin
              MainForm.BashRefreshButton.Click;
            end
          end;
          WriteLog('������� �� ����. ������ � CurrentNumber ' + IntToStr(CurrentBashQuoteNumber));
          ChangeQuoteInformation;
    end;
end;

// ������� �� ���������� ������
procedure BashPrevious;
begin
    if not(GetRVText(MainForm.BashOrgRuHtmlViewer) = '��������...') then
    begin
    if NOT(CurrentBashQuoteNumber = 1)
          then
          begin
             ChangeCurrentBashQuoteNumber(-1);
             ChangeHtmlViewerText(MainForm.BashOrgRuHtmlViewer,CurrentBashQuotesArray[CurrentBashQuoteNumber,0]);
            // if CurrentHtmlViewer = MainForm.AbyssHtmlViewer then MainForm.AbyssNextButton.Visible := False;
          end;
          WriteLog('������� �� ����. ������ � CurrentNumber ' + IntToStr(CurrentBashQuoteNumber));
          ChangeQuoteInformation;
    end;
end;

procedure ITHNext;
begin
   if NOT(CurrentITHQuoteNumber = StrToInt(CurrentITHQuotesArray[0,0]))
          then
          begin
             CurrentITHQuoteNumber:= CurrentITHQuoteNumber + 1;
             ChangeHtmlViewerText(MainForm.ITHHtmlViewer,CurrentITHQuotesArray[CurrentITHQuoteNumber,0]);
          end;
          ChangeITHQuoteInformation;
end;

procedure ITHPrevious;
begin
  if NOT(CurrentITHQuoteNumber = 1)
          then
          begin
             CurrentITHQuoteNumber:= CurrentITHQuoteNumber - 1;
             ChangeHtmlViewerText(MainForm.ITHHtmlViewer,CurrentITHQuotesArray[CurrentITHQuoteNumber,0]);
          end;
          ChangeITHQuoteInformation;
end;



// ��������� html ������� � ������
function BashGetMainAsString: string;
begin
  WriteLog('�������� html ������� ���� � ������');
  BashGetMainAsString := GetStringFromUrl('http://bash.org.ru/');
end;

// ��������� html ������ � ������
function BashGetAbyssAsString: string;
begin
  WriteLog('�������� html ������ � ������');
  BashGetAbyssAsString := GetStringFromUrl('http://bash.org.ru/abyss');
end;

// ��������� html ������� ������ � ������
function BashGetAbyssBestAsString: string;
begin
  WriteLog('�������� html ������� ������ � ������');
  BashGetAbyssBestAsString := GetStringFromUrl('http://bash.org.ru/abyssbest');
end;

// ��������� html ���� ������ � ������
function BashGetAbyssTopAsString: string;
begin
  WriteLog('�������� html ���� ������ � ������');
  BashGetAbyssTopAsString := GetStringFromUrl('http://bash.org.ru/abysstop');
end;

function ITHGetMainAsString: string;
begin
  ITHGetMainAsString := GetStringFromUrl('http://ithappens.ru/');
end;

// ������ �����
function BashQuoteParser(S: string; qtype: integer):QuoteArray;
var i:Integer;
    q: QuoteArray;
begin
  if not(S = 'error') then
  begin
    i:=0;
    WriteLog('������ ������� html');
    S := Copy(S, Pos('"pager">',S),Length(S));
    // �������� ������ �������
    case qtype of
      0: CurrentMainPagesArray:= ExtractPages(Copy(S, 0, Pos('</div>',S)+6),'Main');
      1: CurrentAbyssBestPagesArray := ExtractPages(Copy(S, 0, Pos('</div>',S)+6),'AbyssBest');
      2: ;
      3: ;
    end;
    // �������� �����
    while not (Pos('<div class="q">',S) = 0) do
    begin
        i:= i + 1;
        S := Copy(S, Pos('<div class="q">',S),Length(S));
        // �������� ����� ������
        case qtype of
          0: begin
                S := Copy(S, Pos('e/',S)+2,Length(S));
                q[i,1] := Copy(S, 0,Pos('"',S)-1);
             end;
          1: begin
                S := Copy(S, Pos('<b>',S)+3,Length(S));
                q[i,1] := Copy(S, 0,Pos('<',S)-1);
             end;
          2: q[i,1] := 'none';
          3: begin
                S := Copy(S, Pos('span id=',S)+10,Length(S));
                q[i,1] := Copy(S, 0,Pos('"',S)-1);
             end;
        end;
       // �������� ������� ������
        case qtype of
          0: begin
                S := Copy(S, Pos('<span id=',S),Length(S));
                S := Copy(S, Pos('>',S)+1,Length(S));
                q[i,2] := Copy(S, 0,Pos('<',S)-1);
             end;
          1: q[i,2] := 'none';
          2: begin
                S := Copy(S, Pos('<span>',S)+6,Length(S));
                S := Copy(S, 0,Length(S));
                q[i,2] := Copy(S, 0,Pos('<',S)-1);
             end;
          3: q[i,2] := 'none';
        end;
        //WriteLog(S);
        // �������� ���� ������
        case qtype of
          0:  q[i,3] := ClearText(Copy(S, Pos('����������',S),Pos('</div>',S)-1-Pos('����������',S)));
          1:  q[i,3] := ClearText(Copy(S, Pos('(���������',S),Pos('</div>',S)-1-Pos('(���������',S)));
          2:  q[i,3] := ClearText(Copy(S, Pos('���������',S),Pos('</div>',S)-1-Pos('���������',S)));
          3:  q[i,3] := ClearText(Copy(S, Pos('���������',S),Pos('</div>',S)-1-Pos('���������',S)));
        end;
        S := Copy(S, Pos('<div>',S),Length(S));
        q[i,0] := Copy(S, Pos('<div>',S),Pos('</div>',S)+5);
        if (q[i,0] = '') or (Pos('http://lol.bash.org.ru/',q[i,0]) <> 0) then i:=i-1;
    end;
    WriteLog('����� ������� html. �����: ' + IntToStr(i));
    q[0,0] := IntToStr(i);
    BashQuoteParser := q;
  end
  else
  begin
    q[0,0] := '1';
    q[1,0] := '������';
    BashQuoteParser := q;
  end;
end;

// ������ ����� IT happens
function ITHQuoteParser(S: string; qtype: integer):ITHQuoteArray;
var num: Integer;
    buf: ITHQuoteArray;
begin
  if not(S = 'error') then
  begin
    WriteLog('ITH Parser on');
    num:=0;
    S := Copy(S, Pos('<div class="selector">',S),Length(S));
    CurrentITHPagesArray := ExtractITHPages(Copy(S, 0,Pos('</div>',S)-Pos('<div class="selector">',S)+6));
    while not(Pos('<div class="text">',S) = 0)  do
    begin
       num := num + 1;
       // � ��� ��� ����!
       S := Copy(S, Pos('<div class="text">',S),Length(S));
       S := Copy(S, Pos('<a href="/story/' ,S)+ 16,Length(S));
       buf[num,1] := Copy(S, 0,Pos('"',S)-1);
       S := Copy(S, Pos(':' ,S) + 2,Length(S));
       buf[num,4] := Copy(S, 0,Pos('</a>',S)-1);
       // ������� ������ �������� �� ����� ������
       Delete(buf[num,4], pos(Chr(13), buf[num,4]), 1);
       Delete(buf[num,4], pos(Chr(10), buf[num,4]), 1);
       S := Copy(S, Pos('<p class="date">' ,S) + 17,Length(S));
       buf[num,3] := Copy(S, 0,Pos('<',S)-1);
       S := Copy(S, Pos('�������:' ,S) + 9,Length(S));
       //WriteLog(S);
       buf[num,2] := Copy(S, 0,Pos('<',S)-1);
       Delete(buf[num,2], pos(Chr(13), buf[num,2]), 1);
       Delete(buf[num,2], pos(Chr(10), buf[num,2]), 1);
       Delete(buf[num,2], pos(Chr(13), buf[num,2]), 1);
       Delete(buf[num,2], pos(Chr(10), buf[num,2]), 1);
       buf[num,0] := Copy(S, Pos('<p class="text">',S),Pos('</p>',S) - Pos('<p class="text">',S)+4);
       S := Copy(S, Pos('</div>',S),Length(S));
    end;
    WriteLog('ITH Parser off');
    buf[0,0] := IntToStr(num);
    ITHQuoteParser := buf;
  end
  else
  begin
    buf[0,0] := '1';
    buf[1,0] := '������';
    ITHQuoteParser := buf;
  end;
end;

function GetCurrentITHMainQuotes: ITHQuoteArray;
begin
   if TestMode
   then GetCurrentITHMainQuotes := ITHQuoteParser(MainForm.TestITHappensMemo.Text, 0)
   else GetCurrentITHMainQuotes := ITHQuoteParser(ITHGetMainAsString, 0);
end;

// �������� ������ ����� � �������
function GetCurrentMainQuotes: QuoteArray;
begin
  if TestMode
  then GetCurrentMainQuotes := BashQuoteParser(MainForm.TestMainMemo.Text, 0)
  else GetCurrentMainQuotes := BashQuoteParser(BashGetMainAsString, 0);
end;

// �������� ������ ����� � ������
function GetCurrentAbyssQuotes: QuoteArray;
begin
  if TestMode
  then GetCurrentAbyssQuotes := BashQuoteParser(MainForm.TestAbyssMemo.Text, 3)
  else GetCurrentAbyssQuotes := BashQuoteParser(BashGetAbyssAsString, 3);
end;

// �������� ������ ����� � ������� ������
function GetCurrentAbyssBestQuotes: QuoteArray;
begin
  if TestMode
  then GetCurrentAbyssBestQuotes := BashQuoteParser(MainForm.TestAbyssBestMemo.Text, 1)
  else GetCurrentAbyssBestQuotes := BashQuoteParser(BashGetAbyssBestAsString, 1);
end;

// �������� ������ ����� � ���� ������
function GetCurrentAbyssTopQuotes: QuoteArray;
begin
  if TestMode
  then GetCurrentAbyssTopQuotes := BashQuoteParser(MainForm.TestAbyssTopMemo.Text, 2)
  else GetCurrentAbyssTopQuotes := BashQuoteParser(BashGetAbyssTopAsString, 2);
end;

//
procedure GetCurrentBashQuotesTo(QA:QuoteArray);
begin
  case MainForm.BashPageSelectComboBox.ItemIndex of
  0: QA := GetCurrentMainQuotes;
  1: QA := GetCurrentAbyssBestQuotes;
  2: QA := GetCurrentAbyssTopQuotes;
  3: QA := GetCurrentAbyssQuotes;
  end;
end;

procedure OpenBashMainPageNum(Num: string);
begin
  CurrentMainQuotesArray := BashQuoteParser(GetStringFromUrl('http://bash.org.ru/index/' + Num), 0);
  CurrentMainQuoteNumber := 1;
  ChangeHtmlViewerText(MainForm.BashOrgRuHtmlViewer, CurrentMainQuotesArray[CurrentMainQuoteNumber,0]);
  ChangeQuoteInformation;
  ChangePages;
  LastBashMainPageNum := Num;
end;

procedure OpenBashAbyssBestPageNum(Num: string);
begin
  CurrentAbyssBestQuotesArray := BashQuoteParser(GetStringFromUrl('http://bash.org.ru/abyssbest/' + Num), 1);
  CurrentAbyssBestQuoteNumber := 1;
  ChangeHtmlViewerText(MainForm.BashOrgRuHtmlViewer, CurrentAbyssBestQuotesArray[CurrentAbyssBestQuoteNumber,0]);
  ChangeQuoteInformation;
  ChangePages;
  LastBashAbyssBestPageNum := Num;
end;

procedure OpenITHMainPageNum(Num: string);
begin
  CurrentITHQuotesArray := ITHQuoteParser(GetStringFromUrl('http://ithappens.ru/page/' + Num),0);
  CurrentITHQuoteNumber := 1;
  ChangeHtmlViewerText(MainForm.ITHHtmlViewer, CurrentITHQuotesArray[CurrentITHQuoteNumber,0]);
  ChangeITHQuoteInformation;
  ChangeITHPages;
  LastITHMainPageNum := Num;
end;

procedure OpenITH;
begin

  if ITHMainNeedLoad = true then
  begin
    CurrentITHQuotesArray := GetCurrentITHMainQuotes;
    CurrentITHQuoteNumber := 1;
    ChangeHtmlViewerText(MainForm.ITHHtmlViewer, CurrentITHQuotesArray[CurrentITHQuoteNumber,0]);
    ITHMainNeedLoad := False;

  end;
  ChangeITHQuoteInformation;
  ChangeITHPages;


end;

// �������� �������
procedure OpenMain;
begin

  if MainNeedLoad = true then
  begin
    CurrentMainQuotesArray := GetCurrentMainQuotes;
    MainNeedLoad := False;
    CurrentMainQuoteNumber := 1;
  end;
  ChangeHtmlViewerText(MainForm.BashOrgRuHtmlViewer, CurrentMainQuotesArray[CurrentMainQuoteNumber,0]);
  ChangePages;
end;

// �������� ������
procedure OpenAbyss;
begin
  if not(GetRVText(CurrentHtmlViewer) = '��������...') then
  begin
  if AbyssNeedLoad = True then
  begin
    CurrentAbyssQuotesArray := GetCurrentAbyssQuotes;
    CurrentAbyssQuoteNumber := 1;
    AbyssNeedLoad := False;
  end;
  end;
  ChangeHtmlViewerText(MainForm.BashOrgRuHtmlViewer, CurrentAbyssQuotesArray[CurrentAbyssQuoteNumber,0]);
  MainForm.PagesRichView.Visible:= False;
end;

// �������� ������� ������
procedure OpenAbyssBest;
begin
  if not(GetRVText(CurrentHtmlViewer) = '��������...') then
  begin
  if AbyssBestNeedLoad = True then
  begin
    CurrentAbyssBestQuotesArray := GetCurrentAbyssBestQuotes;
    CurrentAbyssBestQuoteNumber := 1;
    AbyssBestNeedLoad := False;
  end;
  end;
  ChangeHtmlViewerText(MainForm.BashOrgRuHtmlViewer, CurrentAbyssBestQuotesArray[CurrentAbyssBestQuoteNumber,0]);
  ChangePages;
end;

// �������� ���� ������
procedure OpenAbyssTop;
begin
  if not(GetRVText(CurrentHtmlViewer) = '��������...') then
  begin
  if AbyssTopNeedLoad = True then
  begin
    CurrentAbyssTopQuotesArray := GetCurrentAbyssTopQuotes;
    CurrentAbyssTopQuoteNumber := 1;
    AbyssTopNeedLoad := False;
  end;
  end;
  ChangeHtmlViewerText(MainForm.BashOrgRuHtmlViewer, CurrentAbyssTopQuotesArray[CurrentAbyssTopQuoteNumber,0]);
  MainForm.PagesRichView.Visible:= False;
end;



///////////////////////////////////////////////////////
// �������� �����                                    //
///////////////////////////////////////////////////////
procedure TMainForm.FormCreate(Sender: TObject);
begin
  SetVariables;
  WriteLog('�������� �����.');
  // ������ ������ ����� �� ����� ����������.
  MainForm.Width := 366;
  MainForm.Height := 450;
  WriteLog('������ ������ ����� �� ' + IntToStr(MainForm.Width) + 'x' + IntToStr(MainForm.Height));
  // ��������� PageControl'� �� ������.

  WriteLog('��������� �� BashTab.');
  MainPageControl.TabIndex := 0;
  WriteLog('��������� �� LogTab.');
  TestPageControl.TabIndex := 0;
  // ������� TestTab
  TestTabSheet.TabVisible := False;
end;

// ������� � ���������, ������������ �� ����� �������� �����
procedure TMainForm.FormShow(Sender: TObject);
begin
  FindFocus;
end;

// ��� ������ �� ������� ���� �������� ����� �� ������ �������
procedure TMainForm.BashTabSheetEnter(Sender: TObject);
begin
//  FindFocus;
end;



///////////////////////////////////////////////////////////////////////////////
// ������� �� ����� ������ ��� ��������� ������� ����
///////////////////////////////////////////////////////////////////////////////

procedure ScrollControl(hv: TRichView; WheelDelta: integer);
begin

  if ((hv.VScrollPos = hv.VScrollMax) or (hv.VScrollMax < 0)) and (WheelDelta < 0)
  then BashNext;

  if ((hv.VScrollPos = 0) and (WheelDelta > 0))
  then BashPrevious;
end;

procedure ScrollControl2(hv: TRichView; WheelDelta: integer);
begin

  if ((hv.VScrollPos = hv.VScrollMax) or (hv.VScrollMax < 0)) and (WheelDelta < 0)
  then ITHNext;

  if ((hv.VScrollPos = 0) and (WheelDelta > 0))
  then ITHPrevious;
end;

procedure TMainForm.BashOrgRuHtmlViewerMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  ScrollControl(BashOrgRuHtmlViewer,WheelDelta);
end;

procedure TMainForm.ITHHtmlViewerMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
   ScrollControl2(ITHHtmlViewer,WheelDelta);
end;

///////////////////////////////////////////////////////////////////////////////
//����� �����
///////////////////////////////////////////////////////////////////////////////



// �������� ������
procedure TMainForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (ConsoleInputEdit.Focused = False) then
  HotKeyMaster(Key);
end;

// ������ ��� ������ ��������, ����� ������� ����������� �����
procedure TMainForm.StartUpTimerTimer(Sender: TObject);
begin
  // ��������� ������� � ������ � ���������� ������ ������
  WriteLog('�������� ��������� �����������, ��������� ������ �� �����');
  StartUpTimer.Enabled := False;
  MainNeedLoad := True;
  CurrentMainQuotesArray := GetCurrentMainQuotes;
  CurrentMainQuoteNumber := 1;
  ChangeHtmlViewerText(BashOrgRuHtmlViewer, CurrentMainQuotesArray[CurrentMainQuoteNumber,0]);
  ChangeQuoteInformation;
  ChangePages;
  MainNeedLoad := False;
  AbyssNeedLoad := True;
  AbyssBestNeedLoad := True;
  AbyssTopNeedLoad := True;
  ITHMainNeedLoad := True;
  WoWBashMainNeedLoad := True;
  WoWBashOtherNeedLoad := True;
end;

// �������� ����� ������� ������
procedure TMainForm.FindFocusDelayTimerTimer(Sender: TObject);
begin
  FindFocus;
  FindFocusDelayTimer.Enabled:=False;
end;

// ����� ������� ����
//procedure TMainForm.BashNavBarActiveGroupChanged(Sender: TObject);


// �������� �����
procedure TMainForm.FontSelectButtonClick(Sender: TObject);
begin
  if FontSelectDialog.Execute then
    begin
       HtmlViewerStyle.TextStyles[0].Assign(FontSelectDialog.Font);
    end;
end;





// �������� ������ ������� ���� ��� ����� �����
procedure TMainForm.ScrollDelayTimerTimer(Sender: TObject);
begin
  ScrollDelayTimer.Enabled := False;
  CurrentHtmlViewer.ScrollTo(0);
end;

// ��������� �� ��������
procedure TMainForm.PagesRichViewJump(Sender: TObject; id: Integer);
begin
  case MainPageControl.ActivePageIndex of
  0:
    begin
      case BashPageSelectComboBox.ItemIndex of
      0: OpenBashMainPageNum(CurrentMainPagesArray[id+1,2]);
      1: OpenBashAbyssBestPageNum(CurrentAbyssBestPagesArray[id+1,2]);
      end;
    end;
  1:OpenITHMainPageNum(CurrentITHPagesArray[id+1,2]);
  2:OpenWoWBashMainPageNum(CurrentWoWBashPagesArray[id +1,2]);
  end;

end;

procedure TMainForm.PagesRichViewClick(Sender: TObject);
begin
  FindFocus;
end;

procedure TMainForm.chklst1ClickCheck(Sender: TObject);
var i: Integer;
begin
 // for i := 0 to (chklst1.Items.Count - 1) do
 // BashNavBar.Groups[i].Visible := chklst1.Checked[i];
end;

procedure TMainForm.MainPageControlChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  TabChangeDelayTimer.Enabled := True;
end;

procedure TMainForm.TabChangeDelayTimerTimer(Sender: TObject);
begin
  TabChangeDelayTimer.Enabled := False;
  case MainPageControl.ActivePageIndex of
   //0: OpenMain;
   1: OpenITH;
   2: OpenWoWBashMain;
  end;
  FindFocus;

end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ExitProcess(0);
end;

procedure TMainForm.BashPageSelectComboBoxChange(Sender: TObject);
begin
//
  case MainForm.BashPageSelectComboBox.ItemIndex of
  // �������
  0: OpenMain;
  // ������ ������
  1: OpenAbyssBest;
  // ��� ������
  2: OpenAbyssTop;
  // ������
  3: OpenAbyss;
  end;
  ChangeQuoteInformation;

end;

procedure TMainForm.BashPageSelectComboBoxClick(Sender: TObject);
begin
  FindFocus;
end;

procedure TMainForm.ITHPageSelectComboBoxClick(Sender: TObject);
begin
  FindFocus;
end;

procedure TMainForm.IThappensTabSheetEnter(Sender: TObject);
begin
//  FindFocusDelayTimer.Enabled := True;
end;

procedure TMainForm.BashRefreshButtonClick(Sender: TObject);
begin
  FindFocus;
  case MainPageControl.ActivePageIndex of
  0:begin
      case BashPageSelectComboBox.ItemIndex of
      0:begin
           if LastBashMainPageNum = 'none' then
           begin
             CurrentMainQuotesArray := GetCurrentMainQuotes;
             CurrentMainQuoteNumber := 1;
             ChangeHtmlViewerText(CurrentHtmlViewer, CurrentMainQuotesArray[CurrentMainQuoteNumber,0]);
           end
           else
           begin
             OpenBashMainPageNum(LastBashMainPageNum);
           end;
        end;
      1:begin
           if LastBashAbyssBestPageNum = 'none' then
           begin
             CurrentAbyssBestQuotesArray := GetCurrentAbyssBestQuotes;
             CurrentAbyssBestQuoteNumber := 1;
             ChangeHtmlViewerText(CurrentHtmlViewer, CurrentAbyssBestQuotesArray[CurrentAbyssBestQuoteNumber,0]);
           end
           else
           begin
             OpenBashAbyssBestPageNum(LastBashAbyssBestPageNum);
           end;
        end;
      2:begin
           CurrentAbyssTopQuotesArray := GetCurrentAbyssTopQuotes;
           CurrentAbyssTopQuoteNumber := 1;
           ChangeHtmlViewerText(CurrentHtmlViewer, CurrentAbyssTopQuotesArray[CurrentAbyssTopQuoteNumber,0]);
        end;
      3:begin
           CurrentAbyssQuotesArray := GetCurrentAbyssQuotes;
           CurrentAbyssQuoteNumber := 1;
           ChangeHtmlViewerText(CurrentHtmlViewer, CurrentAbyssQuotesArray[CurrentAbyssQuoteNumber,0]);
        end;
      end;
    ChangeQuoteInformation;
    ChangePages;
    end;

  1:begin
      case ITHPageSelectComboBox.ItemIndex of
      0: begin
           if LastITHMainPageNum = 'none' then
           begin
             CurrentITHQuotesArray := GetCurrentITHMainQuotes;
             CurrentITHQuoteNumber := 1;
             ChangeHtmlViewerText(CurrentHtmlViewer, CurrentITHQuotesArray[CurrentITHQuoteNumber,0]);
           end
           else
           begin
             OpenITHMainPageNum(LastITHMainPageNum);
           end;
         end;
      end;
    ChangeITHQuoteInformation;
    ChangeITHPages;
    end;
  end;
end;

procedure TMainForm.TestModeCheckBoxClick(Sender: TObject);
begin
  TestMode := TestModeCheckBox.Checked;
end;

procedure TMainForm.edt1Change(Sender: TObject);
begin
  HttpConnectTimeout := StrToInt(edt1.Text);
end;

procedure TMainForm.edt2Change(Sender: TObject);
begin
  HttpReadTimeout := StrToInt(edt2.Text);
end;

end.
