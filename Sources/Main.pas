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
    TestStatusBar: TStatusBar;
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
    IdHTTP1: TIdHTTP;
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
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BashTabSheetEnter(Sender: TObject);
    procedure MainHtmlBrowserMouseWheel(Sender: TObject;
      Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
      var Handled: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
type QuoteArray = array [0..100] of string;

var
  MainForm: TMainForm;
  CurrentMainQuotesArray: QuoteArray;
  CurrentMainQuoteNumber: Integer;

implementation

{$R *.dfm}

// ������ ����
procedure WriteLog(Str: string);
begin
  Str := '[' + TimeToStr(Time) + ']  ' + Str;
  MainForm.LogListBox.AddItem(Str,MainForm);
  MainForm.LogListBox.ItemIndex := MainForm.LogListBox.Items.Capacity - 1;
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

// ���� ���� ��� ����������� ������, ����� "�� ������ ���������"
procedure FindFocus;
begin
  // ��������� ���
  MainForm.MainHtmlBrowser.SetFocus;
  WriteLog('�������� ������ �� �������');
end;

// ������� �� ����� ������
procedure BashNext;
begin
  if NOT(CurrentMainQuoteNumber = StrToInt(CurrentMainQuotesArray[0]))
  then begin
          CurrentMainQuoteNumber := CurrentMainQuoteNumber + 1;
          MainForm.MainHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentMainQuotesArray[CurrentMainQuoteNumber]));
          MainForm.MainHtmlBrowser.VScrollBar.Position := -1000; // ��������� ���
       end;
  WriteLog('������� �� ����. ������ � CurrentNumber ' + IntToStr(CurrentMainQuoteNumber));
end;

// ������� �� ���������� ������
procedure BashPrevious;
begin
  if NOT(CurrentMainQuoteNumber = 1)
  then begin
          CurrentMainQuoteNumber := CurrentMainQuoteNumber - 1;
          MainForm.MainHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentMainQuotesArray[CurrentMainQuoteNumber]));
          MainForm.MainHtmlBrowser.VScrollBar.Position := -1000; // ��������� ���
       end;
  WriteLog('������� �� ����. ������ � CurrentNumber ' + IntToStr(CurrentMainQuoteNumber));     
end;

// �������� html ��� �������� �� ��������� ������
function GetStringFromUrl(url: string): string;
begin
  WriteLog('�������� html ��� �� �������� ' + url);
  GetStringFromUrl := MainForm.IdHTTP1.Get(url);
end;

// ��������� html ������� � ������
function BashGetMainAsString: string;
begin
  WriteLog('�������� html ������� ���� � ������');
  BashGetMainAsString := GetStringFromUrl('http://bash.org.ru/');
end;

procedure TestProc;
var i:Integer;
S:string;
q: array [0..100] of string;
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
    q[i] := Copy(S, Pos('<div>',S),Pos('</div>',S)+5);
    if (q[i] = '') or (Pos('http://lol.bash.org.ru/',q[i]) <> 0) then i:=i-1;
    MainForm.Memo1.Lines.Add('=========='+IntToStr(i)+'==========');
    MainForm.Memo1.Lines.Add(q[i]);
    MainForm.Memo1.Lines.Add('========================');
  end;
  WriteLog('����� �������');
  //ShowMessage(IntToStr(i));
  q[0] := IntToStr(i);
  MainForm.MainHtmlBrowser.LoadFromStream(TStringStream.Create(q[1]));
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
    q[i] := Copy(S, Pos('<div>',S),Pos('</div>',S)+5);
    if (q[i] = '') or (Pos('http://lol.bash.org.ru/',q[i]) <> 0) then i:=i-1;
  end;
  WriteLog('����� ������� html. �����: ' + IntToStr(i));
  q[0] := IntToStr(i);

  GetCurrentMainQuotes := q;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
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

  // ��������� ������� � ������ � ���������� ������ ������
  CurrentMainQuotesArray := GetCurrentMainQuotes;
  CurrentMainQuoteNumber := 1;
  MainHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentMainQuotesArray[CurrentMainQuoteNumber]));

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

end.
