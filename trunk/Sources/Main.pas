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
    AboutTabSheet: TTabSheet;
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
end;

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
  end;

end;

// �������� ������ � HtmlViewer
procedure ChangeHtmlViewerText(HV:TRichView; LoadText:String);
begin
  WriteLog('��������� ����� "'+ LoadText +'" � ' + HV.Name);
  MainForm.HtmlImporter.RichView := HV;
  MainForm.HtmlImporter.LoadHtml(LoadText);
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
begin
   WriteLog('������ �������� ����');
   i:=1;
   MainForm.PagesRichView.Visible:= True;
   MainForm.PagesRichView.Clear;
   while not(CurrentBashPagesArray[i,1] = '') do
   begin
       if (CurrentBashPagesArray[i,1] = 'currentpage') or (CurrentBashPagesArray[i,1] = 'dots') then MainForm.PagesRichView.Add(CurrentBashPagesArray[i,2],5)
       else
           begin
             if (CurrentBashPagesArray[i,1] = 'prevlinc') then MainForm.PagesRichView.AddNLTag('>>',4,-1,i);
             if (CurrentBashPagesArray[i,1] = 'nextlinc') then MainForm.PagesRichView.AddNLTag('<<',4,-1,i);
             if (CurrentBashPagesArray[i,1] = 'linc') then MainForm.PagesRichView.AddNLTag(CurrentBashPagesArray[i,2],4,-1,i);
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
begin
   lCaption1 := IntToStr(CurrentITHQuoteNumber) + '/' + CurrentITHQuotesArray[0,0];
   lCaption2 := CurrentITHQuotesArray[CurrentITHQuoteNumber,1];
   lCaption3 := CurrentITHQuotesArray[CurrentITHQuoteNumber,2];

   MainForm.ITHQuoteNumberLabel.Caption := lCaption1;
   MainForm.QuoteITHNumberLabel.Caption := '#' + lCaption2;
   MainForm.QuoteITHRatingLabel.Caption := '[' + lCaption3 + ']';
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
begin
  lCaption1 := IntToStr(CurrentBashQuoteNumber) + '/' + CurrentBashQuotesArray[0,0];
  lCaption2 := CurrentBashQuotesArray[CurrentBashQuoteNumber,1];
  lCaption3 := CurrentBashQuotesArray[CurrentBashQuoteNumber,2];
  if lCaption1 = '0/' then lCaption1 := '?/?';
  MainForm.QuoteNumberLabel.Caption := lCaption1;
  MainForm.QuoteBashNumberLabel.Caption := '#' + lCaption2;
  MainForm.QuoteBashRatingLabel.Caption := '[' + lCaption3 + ']';
  ChangeQuoteHint;
  WriteLog('������ ������ ������: ' + lCaption1 + ', '+ lCaption2 + ', '+ lCaption3);
end;

// ���� ���� ��� ����������� ������, ����� "�� ������ ���������"
procedure FindFocus;
begin
  case MainForm.MainPageControl.ActivePageIndex of
  0: begin
     CurrentHtmlViewer.SetFocus;
     WriteLog('�������� ������ �� Bash.org.ru');
     end;

  1: MainForm.ITHHtmlViewer.SetFocus;
  end;
end;

// ������� �� ����� ������
procedure BashNext;
begin
  if not(GetRVText(CurrentHtmlViewer) = '��������...') then
  begin
    if NOT(CurrentBashQuoteNumber = StrToInt(CurrentBashQuotesArray[0,0]))
          then
          begin
             ChangeCurrentBashQuoteNumber(+1);
             ChangeHtmlViewerText(CurrentHtmlViewer,CurrentBashQuotesArray[CurrentBashQuoteNumber,0]);
          end
    else
          begin
            // if CurrentHtmlViewer = MainForm.AbyssHtmlViewer then MainForm.AbyssNextButton.Visible := True;
          end;
          WriteLog('������� �� ����. ������ � CurrentNumber ' + IntToStr(CurrentBashQuoteNumber));
          ChangeQuoteInformation;
  end;

end;

// ������� �� ���������� ������
procedure BashPrevious;
begin
  if not(GetRVText(CurrentHtmlViewer) = '��������...') then
  begin
    if NOT(CurrentBashQuoteNumber = 1)
          then
          begin
             ChangeCurrentBashQuoteNumber(-1);
             ChangeHtmlViewerText(CurrentHtmlViewer,CurrentBashQuotesArray[CurrentBashQuoteNumber,0]);
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
             ChangeHtmlViewerText(CurrentHtmlViewer,CurrentITHQuotesArray[CurrentITHQuoteNumber,0]);
          end;
          ChangeITHQuoteInformation;
end;

procedure ITHPrevious;
begin
  if NOT(CurrentITHQuoteNumber = 1)
          then
          begin
             CurrentITHQuoteNumber:= CurrentITHQuoteNumber - 1;
             ChangeHtmlViewerText(CurrentHtmlViewer,CurrentITHQuotesArray[CurrentITHQuoteNumber,0]);
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
  ChangeHtmlViewerText(CurrentHtmlViewer, CurrentMainQuotesArray[CurrentMainQuoteNumber,0]);
  ChangeQuoteInformation;
  ChangePages;
  LastBashMainPageNum := Num;
end;

procedure OpenBashAbyssBestPageNum(Num: string);
begin
  CurrentAbyssBestQuotesArray := BashQuoteParser(GetStringFromUrl('http://bash.org.ru/abyssbest/' + Num), 1);
  CurrentAbyssBestQuoteNumber := 1;
  ChangeHtmlViewerText(CurrentHtmlViewer, CurrentAbyssBestQuotesArray[CurrentAbyssBestQuoteNumber,0]);
  ChangeQuoteInformation;
  ChangePages;
  LastBashAbyssBestPageNum := Num;
end;

procedure OpenITHMainPageNum(Num: string);
begin
  CurrentITHQuotesArray := ITHQuoteParser(GetStringFromUrl('http://ithappens.ru/page/' + Num),0);
  CurrentITHQuoteNumber := 1;
  ChangeHtmlViewerText(CurrentHtmlViewer, CurrentITHQuotesArray[CurrentITHQuoteNumber,0]);
  ChangeITHQuoteInformation;
  ChangeITHPages;
  LastITHMainPageNum := Num;
end;

procedure OpenITH;
begin
  if not(GetRVText(CurrentHtmlViewer) = '��������...') then
  begin
  if ITHMainNeedLoad = true then
  begin
    CurrentITHQuotesArray := GetCurrentITHMainQuotes;
    CurrentITHQuoteNumber := 1;
    ChangeHtmlViewerText(CurrentHtmlViewer, CurrentITHQuotesArray[CurrentITHQuoteNumber,0]);
    ITHMainNeedLoad := False;

  end;
  ChangeITHQuoteInformation;
  ChangeITHPages;
  end;

end;

// �������� �������
procedure OpenMain;
begin
  if not(GetRVText(CurrentHtmlViewer) = '��������...') then
  begin
  if MainNeedLoad = true then
  begin
    CurrentMainQuotesArray := GetCurrentMainQuotes;
    MainNeedLoad := False;
    CurrentMainQuoteNumber := 1;
  end;
  end;
  ChangeHtmlViewerText(CurrentHtmlViewer, CurrentMainQuotesArray[CurrentMainQuoteNumber,0]);
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
  ChangeHtmlViewerText(CurrentHtmlViewer, CurrentAbyssQuotesArray[CurrentAbyssQuoteNumber,0]);
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
  ChangeHtmlViewerText(CurrentHtmlViewer, CurrentAbyssBestQuotesArray[CurrentAbyssBestQuoteNumber,0]);
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
  ChangeHtmlViewerText(CurrentHtmlViewer, CurrentAbyssTopQuotesArray[CurrentAbyssTopQuoteNumber,0]);
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
   ScrollControl2(CurrentHtmlViewer,WheelDelta);
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
  ChangeHtmlViewerText(CurrentHtmlViewer, CurrentMainQuotesArray[CurrentMainQuoteNumber,0]);
  ChangeQuoteInformation;
  ChangePages;
  MainNeedLoad := False;
  AbyssNeedLoad := True;
  AbyssBestNeedLoad := True;
  AbyssTopNeedLoad := True;
  ITHMainNeedLoad := True;
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
  if MainPageControl.ActivePageIndex = 1 then OpenITH;

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
  FindFocusDelayTimer.Enabled := True;
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
