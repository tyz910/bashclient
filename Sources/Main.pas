unit Main;

interface

// ���������, ��� �� ������������.
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, cxClasses, dxNavBarBase, dxNavBarCollns, ExtCtrls,
  dxNavBar, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, IdAntiFreezeBase, IdAntiFreeze, OleCtrls, SHDocVw, ActiveX, COMObj, MSHTML,
  Htmlview, Readhtml, FramView, FramBrwz, rvhtmlimport, RVStyle, RVScroll,
  RichView;

type
  TMainForm = class(TForm)
    MainPageControl: TPageControl;
    BashTabSheet: TTabSheet;
    IThappensTabSheet: TTabSheet;
    OptionsTabSheet: TTabSheet;
    BashNavBar: TdxNavBar;
    MainBashNavBarGroup: TdxNavBarGroup;
    AbyssBestBashNavBarGroup: TdxNavBarGroup;
    AbyssTopBashNavBarGroup: TdxNavBarGroup;
    AbyssBashNavBarGroup: TdxNavBarGroup;
    AboutTabSheet: TTabSheet;
    TestTabSheet: TTabSheet;
    lbl1: TLabel;
    MainBashNavBarGroupControl: TdxNavBarGroupControl;
    AbyssBashNavBarGroupControl: TdxNavBarGroupControl;
    AbyssBestBashNavBarGroupControl: TdxNavBarGroupControl;
    AbyssTopBashNavBarGroupControl: TdxNavBarGroupControl;
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
    AbyssNextButton: TButton;
    MainHtmlViewer: TRichView;
    HtmlViewerStyle: TRVStyle;
    HtmlImporter: TRvHtmlImporter;
    ScrollDelayTimer: TTimer;
    AbyssBestHtmlViewer: TRichView;
    AbyssTopHtmlViewer: TRichView;
    AbyssHtmlViewer: TRichView;
    FontSelectDialog: TFontDialog;
    PagesRichView: TRichView;
    rvstyl1: TRVStyle;
    procedure wmGetMinMaxInfo(var Msg : TMessage); message wm_GetMinMaxInfo; // ����������� �������� �����
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BashTabSheetEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure StartUpTimerTimer(Sender: TObject);
    procedure FindFocusDelayTimerTimer(Sender: TObject);
    procedure BashNavBarActiveGroupChanged(Sender: TObject);
    procedure FontSelectButtonClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure AbyssNextButtonClick(Sender: TObject);
    procedure MainHtmlViewerMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure ScrollDelayTimerTimer(Sender: TObject);
    procedure AbyssBestHtmlViewerMouseWheel(Sender: TObject;
      Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
      var Handled: Boolean);
    procedure AbyssTopHtmlViewerMouseWheel(Sender: TObject;
      Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
      var Handled: Boolean);
    procedure AbyssHtmlViewerMouseWheel(Sender: TObject;
      Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
      var Handled: Boolean);
    procedure PagesRichViewJump(Sender: TObject; id: Integer);
    procedure PagesRichViewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

// �������� �������:
// ������ �� 56 �������.
// 0 : ���������
// [0,0] : ���������� ����� � �������
// [0,1] : �� ������������
// [0,2] : �� ������������
// [0,3] : �� ������������
// 1-55 : ������ (�� ����� 55)
// [*,0] : html ���� ������
// [*,1] : ����� ������
// [*,2] : �������
// [*,3] : �� ������������

type QuoteArray = array [0..55] of array [0..3] of string; // ������ �����

// �������� �������:
// ������ �� 13 �������.
// [*,1] : ��� �������� (linc, dots, currentpage, prevlinc, nextlinc)
// [*,2] : ����� ��������

type PageArray = array [1..13] of array [1..2] of string; // ������ ������

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
  LogFile: TextFile;

implementation

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

// �������� ������ � HtmlViewer
procedure ChangeHtmlViewerText(HV:TRichView; LoadText:String);
begin
  MainForm.HtmlImporter.RichView := HV;
  MainForm.HtmlImporter.LoadHtml(LoadText);
  HV.Format;
  MainForm.ScrollDelayTimer.Enabled := True;
  // ������ �����
  MainForm.HtmlViewerStyle.TextStyles[0].Assign(MainForm.FontSelectDialog.Font);
  HV.Reformat;
end;

// ����������� �������
procedure ChangePages;
var CurArray: PageArray;
    i: Integer;

begin
   i:=1;
   MainForm.PagesRichView.Visible:= True;
   MainForm.PagesRichView.Clear;

   case MainForm.BashNavBar.ActiveGroupIndex of
   0: CurArray := CurrentMainPagesArray;
   1: CurArray := CurrentAbyssBestPagesArray;
   end;

   while not(CurArray[i,1] = '') do
   begin
       if (CurArray[i,1] = 'currentpage') or (CurArray[i,1] = 'dots') then MainForm.PagesRichView.Add(CurArray[i,2],5)
       else
           begin
             if (CurArray[i,1] = 'prevlinc') then MainForm.PagesRichView.AddNLTag('>>',4,-1,i);
             if (CurArray[i,1] = 'nextlinc') then MainForm.PagesRichView.AddNLTag('<<',4,-1,i);
             if (CurArray[i,1] = 'linc') then MainForm.PagesRichView.AddNLTag(CurArray[i,2],4,-1,i);
           end;

       MainForm.PagesRichView.Add(' ',0);
       i:= i+1;
   end;
   MainForm.PagesRichView.Reformat;
end;

// ���������� ������� �� ����������� <div class="pager"> ... </div>
function ExtractPages(S,From:string):PageArray;
var
  ptype: array[1..13] of string; // ��� ��������: linc, dots, currentpage, prevlinc, nextlinc
  pnum: array[1..13] of string; // ����� ��������
  num: integer; // ����� ������
  StartPoint: string;
begin
  WriteLog('��������� ������ �������');
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
  MainForm.QuoteNumberLabel.Caption := '?/?';
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
procedure ChangeQuoteNumber;
var lCaption1: string;
    lCaption2: string;
    lCaption3: string;
begin
  case MainForm.BashNavBar.ActiveGroupIndex of
     0: begin
          lCaption1 := IntToStr(CurrentMainQuoteNumber) + '/' + CurrentMainQuotesArray[0,0];
          lCaption2 := CurrentMainQuotesArray[CurrentMainQuoteNumber,1];
          lCaption3 := CurrentMainQuotesArray[CurrentMainQuoteNumber,2];
       end;
    1: begin
          lCaption1 := IntToStr(CurrentAbyssBestQuoteNumber) + '/' + CurrentAbyssBestQuotesArray[0,0];
          lCaption2 := CurrentAbyssBestQuotesArray[CurrentAbyssBestQuoteNumber,1];
          lCaption3 := CurrentAbyssBestQuotesArray[CurrentAbyssBestQuoteNumber,2];
       end;
    2: begin
          lCaption1 := IntToStr(CurrentAbyssTopQuoteNumber) + '/' + CurrentAbyssTopQuotesArray[0,0];
          lCaption2 := CurrentAbyssTopQuotesArray[CurrentAbyssTopQuoteNumber,1];
          lCaption3 := CurrentAbyssTopQuotesArray[CurrentAbyssTopQuoteNumber,2];
       end;
    3: begin
          lCaption1 := IntToStr(CurrentAbyssQuoteNumber) + '/' + CurrentAbyssQuotesArray[0,0];
          lCaption2 := CurrentAbyssQuotesArray[CurrentAbyssQuoteNumber,1];
          lCaption3 := CurrentAbyssQuotesArray[CurrentAbyssQuoteNumber,2];
       end;
  end;
  if lCaption1 = '0/' then lCaption1 := '?/?';
  MainForm.QuoteNumberLabel.Caption := lCaption1;
  MainForm.QuoteBashNumberLabel.Caption := '#' + lCaption2;
  MainForm.QuoteBashRatingLabel.Caption := '[' + lCaption3 + ']';
  WriteLog('������ ������ ������: ' + lCaption1 + ', '+ lCaption2 + ', '+ lCaption3);
end;

// ���� ���� ��� ����������� ������, ����� "�� ������ ���������"
procedure FindFocus;
begin
  case MainForm.BashNavBar.ActiveGroupIndex of
  // �������
  0: begin
        MainForm.MainHtmlViewer.SetFocus;
        WriteLog('�������� ������ �� �������');
     end;
  // ������ ������
  1: begin
        MainForm.AbyssBestHtmlViewer.SetFocus;
        WriteLog('�������� ������ �� ������ ������');
     end;
  // ��� ������
  2: begin
        MainForm.AbyssTopHtmlViewer.SetFocus;
        WriteLog('�������� ������ �� ��� ������');
     end;
  // ������
  3: begin
        MainForm.AbyssHtmlViewer.SetFocus;
        WriteLog('�������� ������ �� ������');
     end;
  end;
end;

// ������� �� ����� ������
procedure BashNext;
begin
  case MainForm.BashNavBar.ActiveGroupIndex of
  0:  begin
        if NOT(CurrentMainQuoteNumber = StrToInt(CurrentMainQuotesArray[0,0]))
        then begin
                CurrentMainQuoteNumber := CurrentMainQuoteNumber + 1;
                ChangeHtmlViewerText(MainForm.MainHtmlViewer,CurrentMainQuotesArray[CurrentMainQuoteNumber,0]);
             end;
        WriteLog('������� �� ����. ������ ������� � CurrentNumber ' + IntToStr(CurrentMainQuoteNumber));
        ChangeQuoteNumber;
      end;
  1:  begin
        if NOT(CurrentAbyssBestQuoteNumber = StrToInt(CurrentAbyssBestQuotesArray[0,0]))
        then begin
                CurrentAbyssBestQuoteNumber := CurrentAbyssBestQuoteNumber + 1;
                ChangeHtmlViewerText(MainForm.AbyssBestHtmlViewer,CurrentAbyssBestQuotesArray[CurrentAbyssBestQuoteNumber,0]);
             end;
        WriteLog('������� �� ����. ������ ������� ������ � CurrentNumber ' + IntToStr(CurrentAbyssBestQuoteNumber));
        ChangeQuoteNumber;
      end;
  2:  begin
        if NOT(CurrentAbyssTopQuoteNumber = StrToInt(CurrentAbyssTopQuotesArray[0,0]))
        then begin
                CurrentAbyssTopQuoteNumber := CurrentAbyssTopQuoteNumber + 1;
                ChangeHtmlViewerText(MainForm.AbyssTopHtmlViewer,CurrentAbyssTopQuotesArray[CurrentAbyssTopQuoteNumber,0]);
             end;
        WriteLog('������� �� ����. ������ ���� ������ � CurrentNumber ' + IntToStr(CurrentAbyssTopQuoteNumber));
        ChangeQuoteNumber;
      end;
  3:  begin
        if NOT(CurrentAbyssQuoteNumber = StrToInt(CurrentAbyssQuotesArray[0,0]))
        then begin
                CurrentAbyssQuoteNumber := CurrentAbyssQuoteNumber + 1;
                ChangeHtmlViewerText(MainForm.AbyssHtmlViewer,CurrentAbyssQuotesArray[CurrentAbyssQuoteNumber,0]);
             end
        else
             begin
                MainForm.AbyssNextButton.Visible := True;
             end;
        WriteLog('������� �� ����. ������ ������ � CurrentNumber ' + IntToStr(CurrentAbyssQuoteNumber));
        ChangeQuoteNumber;
      end;
  end;

end;

// ������� �� ���������� ������
procedure BashPrevious;
begin
  case MainForm.BashNavBar.ActiveGroupIndex of
  0:  begin
        if NOT(CurrentMainQuoteNumber = 1)
        then begin
                CurrentMainQuoteNumber := CurrentMainQuoteNumber - 1;
                ChangeHtmlViewerText(MainForm.MainHtmlViewer, CurrentMainQuotesArray[CurrentMainQuoteNumber,0]);
             end;
        WriteLog('������� �� ����. ������ ������� � CurrentNumber ' + IntToStr(CurrentMainQuoteNumber));
        ChangeQuoteNumber;
      end;
  1:  begin
        if NOT(CurrentAbyssBestQuoteNumber = 1)
        then begin
                CurrentAbyssBestQuoteNumber := CurrentAbyssBestQuoteNumber - 1;
                ChangeHtmlViewerText(MainForm.AbyssBestHtmlViewer,CurrentAbyssBestQuotesArray[CurrentAbyssBestQuoteNumber,0]);
             end;
        WriteLog('������� �� ����. ������ ������� ������ � CurrentNumber ' + IntToStr(CurrentAbyssBestQuoteNumber));
        ChangeQuoteNumber;
      end;
  2:  begin
        if NOT(CurrentAbyssTopQuoteNumber = 1)
        then begin
                CurrentAbyssTopQuoteNumber := CurrentAbyssTopQuoteNumber - 1;
                ChangeHtmlViewerText(MainForm.AbyssTopHtmlViewer,CurrentAbyssTopQuotesArray[CurrentAbyssTopQuoteNumber,0]);
             end;
        WriteLog('������� �� ����. ������ ���� ������ � CurrentNumber ' + IntToStr(CurrentAbyssTopQuoteNumber));
        ChangeQuoteNumber;
      end;
  3:  begin
        if NOT(CurrentAbyssQuoteNumber = 1)
        then begin
                CurrentAbyssQuoteNumber := CurrentAbyssQuoteNumber - 1;
                ChangeHtmlViewerText(MainForm.AbyssHtmlViewer,CurrentAbyssQuotesArray[CurrentAbyssQuoteNumber,0]);
                MainForm.AbyssNextButton.Visible := False;
             end;
        WriteLog('������� �� ����. ������ ������ � CurrentNumber ' + IntToStr(CurrentAbyssQuoteNumber));
        ChangeQuoteNumber;
      end;
  end;
end;

// �������� html ��� �������� �� ��������� ������
function GetStringFromUrl(GetUrl: string): string;
begin
    case MainForm.BashNavBar.ActiveGroupIndex of
      0: ChangeHtmlViewerText(MainForm.MainHtmlViewer, '��������...');
      1: ChangeHtmlViewerText(MainForm.AbyssBestHtmlViewer, '��������...');
      2: ChangeHtmlViewerText(MainForm.AbyssTopHtmlViewer, '��������...');
      3: ChangeHtmlViewerText(MainForm.AbyssHtmlViewer, '��������...');
    end;
    WriteLog('�������� html ��� �� �������� ' + GetUrl);
    with TIdHTTP.Create(MainForm) do
    begin
      GetStringFromUrl := Get(GetUrl);
      Destroy;
    end;
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

// ������ �����
function BashQuoteParser(S: string; qtype: integer):QuoteArray;
var i:Integer;
    q: QuoteArray;
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
      S := Copy(S, Pos('<div>',S),Length(S));
      q[i,0] := Copy(S, Pos('<div>',S),Pos('</div>',S)+5);
      if (q[i,0] = '') or (Pos('http://lol.bash.org.ru/',q[i,0]) <> 0) then i:=i-1;
  end;
  WriteLog('����� ������� html. �����: ' + IntToStr(i));
  q[0,0] := IntToStr(i);
  BashQuoteParser := q;
end;

// �������� ������ ����� � �������
function GetCurrentMainQuotes: QuoteArray;
begin
  //GetCurrentMainQuotes := BashQuoteParser(MainForm.TestMainMemo.Text, 0); // ��� ������
  GetCurrentMainQuotes := BashQuoteParser(BashGetMainAsString, 0);
end;

// �������� ������ ����� � ������
function GetCurrentAbyssQuotes: QuoteArray;
begin
  //GetCurrentAbyssQuotes := BashQuoteParser(MainForm.TestAbyssMemo.Text, 3); // ��� ������
  GetCurrentAbyssQuotes := BashQuoteParser(BashGetAbyssAsString, 3);
end;

// �������� ������ ����� � ������� ������
function GetCurrentAbyssBestQuotes: QuoteArray;
begin
  //GetCurrentAbyssBestQuotes := BashQuoteParser(MainForm.TestAbyssBestMemo.Text, 1); // ��� ������
  GetCurrentAbyssBestQuotes := BashQuoteParser(BashGetAbyssBestAsString, 1);
end;

// �������� ������ ����� � ���� ������
function GetCurrentAbyssTopQuotes: QuoteArray;
begin
  //GetCurrentAbyssTopQuotes := BashQuoteParser(MainForm.TestAbyssTopMemo.Text, 2); // ��� ������
  GetCurrentAbyssTopQuotes := BashQuoteParser(BashGetAbyssTopAsString, 2);
end;

procedure OpenBashMainPageNum(Num: string);
begin
  CurrentMainQuotesArray := BashQuoteParser(GetStringFromUrl('http://bash.org.ru/index/' + Num), 0);
  CurrentMainQuoteNumber := 1;
  ChangeHtmlViewerText(MainForm.MainHtmlViewer, CurrentMainQuotesArray[CurrentMainQuoteNumber,0]);
  ChangeQuoteNumber;
  ChangePages;
end;

procedure OpenBashAbyssBestPageNum(Num: string);
begin
  CurrentAbyssBestQuotesArray := BashQuoteParser(GetStringFromUrl('http://bash.org.ru/abyssbest/' + Num), 1);
  CurrentAbyssBestQuoteNumber := 1;
  ChangeHtmlViewerText(MainForm.AbyssBestHtmlViewer, CurrentAbyssBestQuotesArray[CurrentAbyssBestQuoteNumber,0]);
  ChangeQuoteNumber;
  ChangePages;
end;

// �������� �������
procedure OpenMain;
begin
  if MainNeedLoad = true then
  begin
    CurrentMainQuotesArray := GetCurrentMainQuotes;
    CurrentMainQuoteNumber := 1;
    ChangeHtmlViewerText(MainForm.MainHtmlViewer, CurrentMainQuotesArray[CurrentMainQuoteNumber,0]);
    MainNeedLoad := False;
  end;
  ChangePages;
end;

// �������� ������
procedure OpenAbyss;
begin
  if AbyssNeedLoad = True then
  begin
    CurrentAbyssQuotesArray := GetCurrentAbyssQuotes;
    CurrentAbyssQuoteNumber := 1;
    ChangeHtmlViewerText(MainForm.AbyssHtmlViewer, CurrentAbyssQuotesArray[CurrentAbyssQuoteNumber,0]);
    AbyssNeedLoad := False;
  end;
  MainForm.PagesRichView.Visible:= False;
end;

// �������� ������� ������
procedure OpenAbyssBest;
begin
  if AbyssBestNeedLoad = True then
  begin
    CurrentAbyssBestQuotesArray := GetCurrentAbyssBestQuotes;
    CurrentAbyssBestQuoteNumber := 1;
    ChangeHtmlViewerText(MainForm.AbyssBestHtmlViewer, CurrentAbyssBestQuotesArray[CurrentAbyssBestQuoteNumber,0]);
    AbyssBestNeedLoad := False;
  end;
  ChangePages;
end;

// �������� ���� ������
procedure OpenAbyssTop;
begin
  if AbyssTopNeedLoad = True then
  begin
    CurrentAbyssTopQuotesArray := GetCurrentAbyssTopQuotes;
    CurrentAbyssTopQuoteNumber := 1;
    ChangeHtmlViewerText(MainForm.AbyssTopHtmlViewer, CurrentAbyssTopQuotesArray[CurrentAbyssTopQuoteNumber,0]);
    AbyssTopNeedLoad := False;
  end;
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
  BashNavBar.ActiveGroupIndex :=0;
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
  FindFocus;
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

procedure TMainForm.MainHtmlViewerMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
   ScrollControl(MainHtmlViewer,WheelDelta);
end;

procedure TMainForm.AbyssBestHtmlViewerMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
   ScrollControl(AbyssBestHtmlViewer,WheelDelta);
end;

procedure TMainForm.AbyssTopHtmlViewerMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  ScrollControl(AbyssTopHtmlViewer,WheelDelta);
end;

procedure TMainForm.AbyssHtmlViewerMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  ScrollControl(AbyssHtmlViewer,WheelDelta);
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
  ChangeHtmlViewerText(MainHtmlViewer, CurrentMainQuotesArray[CurrentMainQuoteNumber,0]);
  ChangeQuoteNumber;
  ChangePages;
  MainNeedLoad := False;
  AbyssNeedLoad := True;
  AbyssBestNeedLoad := True;
  AbyssTopNeedLoad := True;
end;

// �������� ����� ������� ������
procedure TMainForm.FindFocusDelayTimerTimer(Sender: TObject);
begin
  FindFocus;
  FindFocusDelayTimer.Enabled:=False;
end;

// ����� ������� ����
procedure TMainForm.BashNavBarActiveGroupChanged(Sender: TObject);
begin
  FindFocusDelayTimer.Enabled := True;
  case BashNavBar.ActiveGroupIndex of
  // �������
  0: OpenMain;
  // ������ ������
  1: OpenAbyssBest;
  // ��� ������
  2: OpenAbyssTop;
  // ������
  3: OpenAbyss;
  end;
  ChangeQuoteNumber;
end;

// �������� �����
procedure TMainForm.FontSelectButtonClick(Sender: TObject);
begin
  if FontSelectDialog.Execute then
    begin
       HtmlViewerStyle.TextStyles[0].Assign(FontSelectDialog.Font);
    end;
end;

// ������ ������ ������ "� ������?!"
procedure TMainForm.FormResize(Sender: TObject);
begin
  AbyssNextButton.Left:= 0;
  AbyssNextButton.Top:= 0;
  AbyssNextButton.Width:= AbyssBashNavBarGroupControl.Width;
  AbyssNextButton.Height:= AbyssBashNavBarGroupControl.Height;
end;

// ������ ������ "� ������?!"
procedure TMainForm.AbyssNextButtonClick(Sender: TObject);
begin
  WriteLog('������ ������ "� ������?!"');
  AbyssNextButton.Visible := False;
  CurrentAbyssQuotesArray := GetCurrentAbyssQuotes;
  CurrentAbyssQuoteNumber := 1;
  ChangeHtmlViewerText(AbyssHtmlViewer,CurrentAbyssQuotesArray[CurrentAbyssQuoteNumber,0]);
  ChangeQuoteNumber;
  FindFocus;
end;

procedure TMainForm.ScrollDelayTimerTimer(Sender: TObject);
begin
  ScrollDelayTimer.Enabled := False;
  case BashNavBar.ActiveGroupIndex of
  0: MainHtmlViewer.ScrollTo(0);
  1: AbyssBestHtmlViewer.ScrollTo(0);
  2: AbyssTopHtmlViewer.ScrollTo(0);
  3: AbyssHtmlViewer.ScrollTo(0);
  end;
end;

procedure TMainForm.PagesRichViewJump(Sender: TObject; id: Integer);
begin
  case BashNavBar.ActiveGroupIndex of
  0://ShowMessage(CurrentMainPagesArray[id+1,2]);
    OpenBashMainPageNum(CurrentMainPagesArray[id+1,2]);
  1://ShowMessage(CurrentAbyssBestPagesArray[id+1,2]);
    OpenBashAbyssBestPageNum(CurrentAbyssBestPagesArray[id+1,2]);
  end;
end;

procedure TMainForm.PagesRichViewClick(Sender: TObject);
begin
  FindFocus;
end;

end.
