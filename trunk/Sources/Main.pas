unit Main;

interface

// ���������, ��� �� ������������.
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, cxClasses, dxNavBarBase, dxNavBarCollns, ExtCtrls,
  dxNavBar, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, IdAntiFreezeBase, IdAntiFreeze, OleCtrls, SHDocVw, ActiveX, COMObj, MSHTML,
  Htmlview, Readhtml, FramView, FramBrwz;

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
    btn1: TButton;
    edt1: TEdit;
    WebTabControl: TTabControl;
    wb1: TWebBrowser;
    LogListBox: TListBox;
    ConsoleInputEdit: TEdit;
    MemoTabSheet: TTabSheet;
    Memo1: TMemo;
    ts1: TTabSheet;
    htmlvwr1: THTMLViewer;
    MainHtmlBrowser: THTMLViewer;
    TestMemoMainTabSheet: TTabSheet;
    TestMemo: TMemo;
    StartUpTimer: TTimer;
    AbyssHtmlBrowser: THTMLViewer;
    FindFocusDelayTimer: TTimer;
    AbyssBestHtmlBrowser: THTMLViewer;
    AbyssTopHtmlBrowser: THTMLViewer;
    QuoteNumberLabel: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BashTabSheetEnter(Sender: TObject);
    procedure MainHtmlBrowserMouseWheel(Sender: TObject;
      Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
      var Handled: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure StartUpTimerTimer(Sender: TObject);
    procedure FindFocusDelayTimerTimer(Sender: TObject);
    procedure BashNavBarActiveGroupChanged(Sender: TObject);
    procedure AbyssHtmlBrowserMouseWheel(Sender: TObject;
      Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
      var Handled: Boolean);
    procedure AbyssBestHtmlBrowserMouseWheel(Sender: TObject;
      Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
      var Handled: Boolean);
    procedure AbyssTopHtmlBrowserMouseWheel(Sender: TObject;
      Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

// �������� �������:
// ������ �� 101 ������.
// 0 : ���������
// [0,0] : ���������� ����� � �������
// [0,1] : �� ������������
// [0,2] : �� ������������
// 1-100 : ������ (�� ����� 100)
// [*,0] : html ���� ������
// [*,1] : �� ������������
// [*,2] : �� ������������

type QuoteArray = array [0..100] of array [0..2] of string; // ������ �����

var
  MainForm: TMainForm;
  CurrentMainQuotesArray: QuoteArray;
  CurrentMainQuoteNumber: Integer;
  CurrentAbyssQuotesArray: QuoteArray;
  CurrentAbyssQuoteNumber: Integer;
  CurrentAbyssBestQuotesArray: QuoteArray;
  CurrentAbyssBestQuoteNumber: Integer;
  CurrentAbyssTopQuotesArray: QuoteArray;
  CurrentAbyssTopQuoteNumber: Integer;
  MainNeedLoad: Boolean;
  AbyssNeedLoad: Boolean;
  AbyssBestNeedLoad: Boolean;
  AbyssTopNeedLoad: Boolean;
  //NeedLoad: Boolean;

implementation

{$R *.dfm}

// ������ ����
procedure WriteLog(Str: string);
begin
  Str := '[' + TimeToStr(Time) + ']  ' + Str;
  MainForm.LogListBox.AddItem(Str,MainForm);
  MainForm.LogListBox.ItemIndex := MainForm.LogListBox.Items.Capacity - 1;
end;

// �������� ���������� ��������� ��������
procedure SetVariables;
begin
  WriteLog('�������� ����������');
  CurrentMainQuoteNumber := 0;
  CurrentAbyssQuoteNumber := 0;
  MainNeedLoad := False;
  AbyssNeedLoad := False;
  AbyssBestNeedLoad := False;
  AbyssTopNeedLoad := False;
  MainForm.QuoteNumberLabel.Caption := '?/?';
  //NeedLoad := False;
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

procedure ChangeQuoteNumber;
var lCaption: string;
begin
  case MainForm.BashNavBar.ActiveGroupIndex of
    0: lCaption := IntToStr(CurrentMainQuoteNumber) + '/' + CurrentMainQuotesArray[0,0];
    1: lCaption := IntToStr(CurrentAbyssBestQuoteNumber) + '/' + CurrentAbyssBestQuotesArray[0,0];
    2: lCaption := IntToStr(CurrentAbyssTopQuoteNumber) + '/' + CurrentAbyssTopQuotesArray[0,0];
    3: lCaption := IntToStr(CurrentAbyssQuoteNumber) + '/' + CurrentAbyssQuotesArray[0,0];
  end;
  if lCaption = '0/' then lCaption := '?/?';
  MainForm.QuoteNumberLabel.Caption := lCaption;
  WriteLog('������ QuoteNumber ' + lCaption);
end;

// ���� ���� ��� ����������� ������, ����� "�� ������ ���������"
procedure FindFocus;
begin
  // ��������� ���
  case MainForm.BashNavBar.ActiveGroupIndex of
  // �������
  0: begin
        MainForm.MainHtmlBrowser.SetFocus;
        WriteLog('�������� ������ �� �������');
     end;
  // ������ ������
  1: begin
        MainForm.AbyssBestHtmlBrowser.SetFocus;
        WriteLog('�������� ������ �� ������ ������');
     end;
  // ��� ������
  2: begin
        MainForm.AbyssTopHtmlBrowser.SetFocus;
        WriteLog('�������� ������ �� ��� ������');
     end;
  // ������
  3: begin
        MainForm.AbyssHtmlBrowser.SetFocus;
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
                MainForm.MainHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentMainQuotesArray[CurrentMainQuoteNumber,0]));
                MainForm.MainHtmlBrowser.VScrollBar.Position := -1000; // ��������� ���
             end;
        WriteLog('������� �� ����. ������ ������� � CurrentNumber ' + IntToStr(CurrentMainQuoteNumber));
        ChangeQuoteNumber;
      end;
  1:  begin
        if NOT(CurrentAbyssBestQuoteNumber = StrToInt(CurrentAbyssBestQuotesArray[0,0]))
        then begin
                CurrentAbyssBestQuoteNumber := CurrentAbyssBestQuoteNumber + 1;
                MainForm.AbyssBestHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentAbyssBestQuotesArray[CurrentAbyssBestQuoteNumber,0]));
                MainForm.AbyssBestHtmlBrowser.VScrollBar.Position := -1000; // ��������� ���
             end;
        WriteLog('������� �� ����. ������ ������� ������ � CurrentNumber ' + IntToStr(CurrentAbyssBestQuoteNumber));
        ChangeQuoteNumber;
      end;
  2:  begin
        if NOT(CurrentAbyssTopQuoteNumber = StrToInt(CurrentAbyssTopQuotesArray[0,0]))
        then begin
                CurrentAbyssTopQuoteNumber := CurrentAbyssTopQuoteNumber + 1;
                MainForm.AbyssTopHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentAbyssTopQuotesArray[CurrentAbyssTopQuoteNumber,0]));
                MainForm.AbyssTopHtmlBrowser.VScrollBar.Position := -1000; // ��������� ���
             end;
        WriteLog('������� �� ����. ������ ������ � CurrentNumber ' + IntToStr(CurrentAbyssTopQuoteNumber));
        ChangeQuoteNumber;
      end;
  3:  begin
        if NOT(CurrentAbyssQuoteNumber = StrToInt(CurrentAbyssQuotesArray[0,0]))
        then begin
                CurrentAbyssQuoteNumber := CurrentAbyssQuoteNumber + 1;
                MainForm.AbyssHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentAbyssQuotesArray[CurrentAbyssQuoteNumber,0]));
                MainForm.AbyssHtmlBrowser.VScrollBar.Position := -1000; // ��������� ���
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
                MainForm.MainHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentMainQuotesArray[CurrentMainQuoteNumber,0]));
                MainForm.MainHtmlBrowser.VScrollBar.Position := -1000; // ��������� ���
             end;
        WriteLog('������� �� ����. ������ ������� � CurrentNumber ' + IntToStr(CurrentMainQuoteNumber));
        ChangeQuoteNumber;
      end;
  1:  begin
        if NOT(CurrentAbyssBestQuoteNumber = 1)
        then begin
                CurrentAbyssBestQuoteNumber := CurrentAbyssBestQuoteNumber - 1;
                MainForm.AbyssBestHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentAbyssBestQuotesArray[CurrentAbyssBestQuoteNumber,0]));
                MainForm.AbyssBestHtmlBrowser.VScrollBar.Position := -1000; // ��������� ���
             end;
        WriteLog('������� �� ����. ������ ������� ������ � CurrentNumber ' + IntToStr(CurrentAbyssBestQuoteNumber));
        ChangeQuoteNumber;
      end;
  2:  begin
        if NOT(CurrentAbyssTopQuoteNumber = 1)
        then begin
                CurrentAbyssTopQuoteNumber := CurrentAbyssTopQuoteNumber - 1;
                MainForm.AbyssTopHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentAbyssTopQuotesArray[CurrentAbyssTopQuoteNumber,0]));
                MainForm.AbyssTopHtmlBrowser.VScrollBar.Position := -1000; // ��������� ���
             end;
        WriteLog('������� �� ����. ������ ������ � CurrentNumber ' + IntToStr(CurrentAbyssTopQuoteNumber));
        ChangeQuoteNumber;
      end;
  3:  begin
        if NOT(CurrentAbyssQuoteNumber = 1)
        then begin
                CurrentAbyssQuoteNumber := CurrentAbyssQuoteNumber - 1;
                MainForm.AbyssHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentAbyssQuotesArray[CurrentAbyssQuoteNumber,0]));
                MainForm.AbyssHtmlBrowser.VScrollBar.Position := -1000; // ��������� ���
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
      0: MainForm.MainHtmlBrowser.LoadFromStream(TStringStream.Create('��������...'));
      1: MainForm.AbyssBestHtmlBrowser.LoadFromStream(TStringStream.Create('��������...'));
      2: MainForm.AbyssTopHtmlBrowser.LoadFromStream(TStringStream.Create('��������...'));
      3: MainForm.AbyssHtmlBrowser.LoadFromStream(TStringStream.Create('��������...'));
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

// �������� ���������. ��������� ���.
procedure TestProc;
var i:Integer;
S:string;
q: QuoteArray;
begin
  i:=0;
  //S:=MainForm.TestMemo.Text;
  S:= BashGetMainAsString;
  MainForm.Memo1.Clear;
  WriteLog('������ �������');
  while not (Pos('<div class="q">',S) = 0) do
  begin
    S := Copy(S, Pos('<div class="q">',S),Length(S));
    S := Copy(S, Pos('<div>',S),Length(S));
    i:= i + 1;
    q[i,0] := Copy(S, Pos('<div>',S),Pos('</div>',S)+5);
    if (q[i,0] = '') or (Pos('http://lol.bash.org.ru/',q[i,0]) <> 0) then i:=i-1;
    MainForm.Memo1.Lines.Add('=========='+IntToStr(i)+'==========');
    MainForm.Memo1.Lines.Add(q[i,0]);
    MainForm.Memo1.Lines.Add('========================');
  end;
  WriteLog('����� �������');
  //ShowMessage(IntToStr(i));
  q[0,0] := IntToStr(i);
end;

// �������� ������ ����� � �������
function GetCurrentMainQuotes: QuoteArray;
  var i:Integer;
  S:string;
  q: QuoteArray;
begin
  i:=0;

  //S:=MainForm.TestMemo.Text;  // ��� ������
  S:= BashGetMainAsString;

  WriteLog('������ ������� html');
  while not (Pos('<div class="q">',S) = 0) do
  begin
    S := Copy(S, Pos('<div class="q">',S),Length(S));
    S := Copy(S, Pos('<div>',S),Length(S));
    i:= i + 1;
    q[i,0] := Copy(S, Pos('<div>',S),Pos('</div>',S)+5);
    if (q[i,0] = '') or (Pos('http://lol.bash.org.ru/',q[i,0]) <> 0) then i:=i-1;
  end;
  WriteLog('����� ������� html. �����: ' + IntToStr(i));
  q[0,0] := IntToStr(i);

  GetCurrentMainQuotes := q;
end;

// �������� ������ ����� � ������
function GetCurrentAbyssQuotes: QuoteArray;
  var i:Integer;
  S:string;
  q: QuoteArray;
begin
  i:=0;
  S:= BashGetAbyssAsString;
  WriteLog('������ ������� html');
  while not (Pos('<div class="q">',S) = 0) do
  begin
    S := Copy(S, Pos('<div class="q">',S),Length(S));
    S := Copy(S, Pos('<div>',S),Length(S));
    i:= i + 1;
    q[i,0] := Copy(S, Pos('<div>',S),Pos('</div>',S)+5);
    if (q[i,0] = '') or (Pos('http://lol.bash.org.ru/',q[i,0]) <> 0) then i:=i-1;
  end;
  WriteLog('����� ������� html. �����: ' + IntToStr(i));
  q[0,0] := IntToStr(i);

  GetCurrentAbyssQuotes := q;
end;

// �������� ������ ����� � ������� ������
function GetCurrentAbyssBestQuotes: QuoteArray;
  var i:Integer;
  S:string;
  q: QuoteArray;
begin
  i:=0;
  S:= BashGetAbyssBestAsString;
  WriteLog('������ ������� html');
  while not (Pos('<div class="q">',S) = 0) do
  begin
    S := Copy(S, Pos('<div class="q">',S),Length(S));
    S := Copy(S, Pos('<div>',S),Length(S));
    i:= i + 1;
    q[i,0] := Copy(S, Pos('<div>',S),Pos('</div>',S)+5);
    if (q[i,0] = '') or (Pos('http://lol.bash.org.ru/',q[i,0]) <> 0) then i:=i-1;
  end;
  WriteLog('����� ������� html. �����: ' + IntToStr(i));
  q[0,0] := IntToStr(i);

  GetCurrentAbyssBestQuotes := q;
end;

// �������� ������ ����� � ���� ������
function GetCurrentAbyssTopQuotes: QuoteArray;
  var i:Integer;
  S:string;
  q: QuoteArray;
begin
  i:=0;
  S:= BashGetAbyssTopAsString;
  WriteLog('������ ������� html');
  while not (Pos('<div class="q">',S) = 0) do
  begin
    S := Copy(S, Pos('<div class="q">',S),Length(S));
    S := Copy(S, Pos('<div>',S),Length(S));
    i:= i + 1;
    q[i,0] := Copy(S, Pos('<div>',S),Pos('</div>',S)+5);
    if (q[i,0] = '') or (Pos('http://lol.bash.org.ru/',q[i,0]) <> 0) then i:=i-1;
  end;
  WriteLog('����� ������� html. �����: ' + IntToStr(i));
  q[0,0] := IntToStr(i);

  GetCurrentAbyssTopQuotes := q;
end;


//
procedure OpenMain;
begin
  if MainNeedLoad = true then
  begin
    CurrentMainQuotesArray := GetCurrentMainQuotes;
    CurrentMainQuoteNumber := 1;
    MainForm.MainHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentMainQuotesArray[CurrentMainQuoteNumber,0]));
    MainNeedLoad := False;
  end;
  ChangeQuoteNumber;
end;

//
procedure OpenAbyss;
begin
  if AbyssNeedLoad = True then
  begin
    CurrentAbyssQuotesArray := GetCurrentAbyssQuotes;
    CurrentAbyssQuoteNumber := 1;
    MainForm.AbyssHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentAbyssQuotesArray[CurrentAbyssQuoteNumber,0]));
    AbyssNeedLoad := False;
  end;
end;

//
procedure OpenAbyssBest;
begin
  if AbyssBestNeedLoad = True then
  begin
    CurrentAbyssBestQuotesArray := GetCurrentAbyssBestQuotes;
    CurrentAbyssBestQuoteNumber := 1;
    MainForm.AbyssBestHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentAbyssBestQuotesArray[CurrentAbyssBestQuoteNumber,0]));
    AbyssBestNeedLoad := False;
  end;
end;

//
procedure OpenAbyssTop;
begin
  if AbyssTopNeedLoad = True then
  begin
    CurrentAbyssTopQuotesArray := GetCurrentAbyssTopQuotes;
    CurrentAbyssTopQuoteNumber := 1;
    MainForm.AbyssTopHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentAbyssTopQuotesArray[CurrentAbyssTopQuoteNumber,0]));
    AbyssTopNeedLoad := False;
  end;
end;


procedure TMainForm.FormCreate(Sender: TObject);
begin
  WriteLog('�������� �����.');
  SetVariables;
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

  //TestProc;

end;

procedure TMainForm.btn1Click(Sender: TObject);
var S:string;
mm:TStream;
begin
  // ��������� ���
  S:=Memo1.Text;
  mm := TStringStream.Create(S);
  htmlvwr1.LoadFromStream(mm);

end;

// ������� � ���������, ������������ �� ����� �������� �����
procedure TMainForm.FormShow(Sender: TObject);
begin
  FindFocus;
end;

procedure TMainForm.BashTabSheetEnter(Sender: TObject);
begin
  FindFocus;
end;

procedure TMainForm.MainHtmlBrowserMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  // ������� �� ����� ������ ��� ��������� ������� ����
  if ((MainHtmlBrowser.VScrollBarPosition = MainHtmlBrowser.VScrollBarRange) or (MainHtmlBrowser.VScrollBarRange < 0)) and (WheelDelta < 0)
  then BashNext;

  if ((MainHtmlBrowser.VScrollBarPosition = 0) and (WheelDelta > 0))
  then BashPrevious;

end;

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
  MainHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentMainQuotesArray[CurrentMainQuoteNumber,0]));
  ChangeQuoteNumber;
  MainNeedLoad := False;
  AbyssNeedLoad := True;
  AbyssBestNeedLoad := True;
  AbyssTopNeedLoad := True;
end;

procedure TMainForm.FindFocusDelayTimerTimer(Sender: TObject);
begin
  FindFocus;
  FindFocusDelayTimer.Enabled:=False;
end;

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

procedure TMainForm.AbyssHtmlBrowserMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  if ((AbyssHtmlBrowser.VScrollBarPosition = AbyssHtmlBrowser.VScrollBarRange) or (AbyssHtmlBrowser.VScrollBarRange < 0)) and (WheelDelta < 0)
  then BashNext;

  if ((AbyssHtmlBrowser.VScrollBarPosition = 0) and (WheelDelta > 0))
  then BashPrevious;
end;

procedure TMainForm.AbyssBestHtmlBrowserMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  if ((AbyssBestHtmlBrowser.VScrollBarPosition = AbyssBestHtmlBrowser.VScrollBarRange) or (AbyssBestHtmlBrowser.VScrollBarRange < 0)) and (WheelDelta < 0)
  then BashNext;

  if ((AbyssBestHtmlBrowser.VScrollBarPosition = 0) and (WheelDelta > 0))
  then BashPrevious;
end;

procedure TMainForm.AbyssTopHtmlBrowserMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  if ((AbyssTopHtmlBrowser.VScrollBarPosition = AbyssTopHtmlBrowser.VScrollBarRange) or (AbyssTopHtmlBrowser.VScrollBarRange < 0)) and (WheelDelta < 0)
  then BashNext;

  if ((AbyssTopHtmlBrowser.VScrollBarPosition = 0) and (WheelDelta > 0))
  then BashPrevious;
end;

end.
