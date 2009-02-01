unit Main;

interface

// Проверить, все ли используются.
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

// Запись лога
procedure WriteLog(Str: string);
begin
  Str := '[' + TimeToStr(Time) + ']  ' + Str;
  MainForm.LogListBox.AddItem(Str,MainForm);
  MainForm.LogListBox.ItemIndex := MainForm.LogListBox.Items.Capacity - 1;
end;

// Открытие-закрытие тестаба
procedure OpenCloseTestTab;
begin
  if MainForm.TestTabSheet.TabVisible = False
  then begin
          WriteLog('TestTab закрыт - открываем и переходим на лог');
          MainForm.TestTabSheet.TabVisible := True;
          WriteLog('Переходим на TestTab.');
          MainForm.MainPageControl.ActivePageIndex := MainForm.MainPageControl.PageCount - 1;
          WriteLog('Переходим на LogTab.');
          MainForm.TestPageControl.TabIndex := 0;
       end
  else begin
          WriteLog('TestTab открыт - закрываем и переходим на главную баша');
          MainForm.TestTabSheet.TabVisible := False;
          WriteLog('Переходим на BashTab.');
          MainForm.MainPageControl.ActivePageIndex := 0;
       end;
end;

// Обработка горячих клавиш
procedure HotKeyMaster(Key: Char);
begin
  WriteLog('HotKeyMaster: нажата клавиша ' + Key);
  case Key of
    '`','ё': OpenCloseTestTab;
  end;
end;

// Ищем окно для выставления фокуса, чтобы "не терять скроллинг"
procedure FindFocus;
begin
  // Временный код
  MainForm.MainHtmlBrowser.SetFocus;
  WriteLog('Передача фокуса на Главную');
end;

// Переход на новую цитату
procedure BashNext;
begin
  if NOT(CurrentMainQuoteNumber = StrToInt(CurrentMainQuotesArray[0]))
  then begin
          CurrentMainQuoteNumber := CurrentMainQuoteNumber + 1;
          MainForm.MainHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentMainQuotesArray[CurrentMainQuoteNumber]));
          MainForm.MainHtmlBrowser.VScrollBar.Position := -1000; // Временный код
       end;
  WriteLog('Переход на след. цитату с CurrentNumber ' + IntToStr(CurrentMainQuoteNumber));
end;

// Переход на предыдущую цитату
procedure BashPrevious;
begin
  if NOT(CurrentMainQuoteNumber = 1)
  then begin
          CurrentMainQuoteNumber := CurrentMainQuoteNumber - 1;
          MainForm.MainHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentMainQuotesArray[CurrentMainQuoteNumber]));
          MainForm.MainHtmlBrowser.VScrollBar.Position := -1000; // Временный код
       end;
  WriteLog('Переход на пред. цитату с CurrentNumber ' + IntToStr(CurrentMainQuoteNumber));     
end;

// Получаем html код страницы по указанной ссылке
function GetStringFromUrl(url: string): string;
begin
  WriteLog('Получаем html код со страницы ' + url);
  GetStringFromUrl := MainForm.IdHTTP1.Get(url);
end;

// Загружаем html главной в строку
function BashGetMainAsString: string;
begin
  WriteLog('Загрузка html главной баша в строку');
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
  WriteLog('Начало разбора');
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
  WriteLog('Конец разбора');
  //ShowMessage(IntToStr(i));
  q[0] := IntToStr(i);
  MainForm.MainHtmlBrowser.LoadFromStream(TStringStream.Create(q[1]));
end;

// Получаем массив цитат с главной
function GetCurrentMainQuotes: QuoteArray;
  var i:Integer;
  S:string;
  q: QuoteArray;
begin
  i:=0;

  //S:=MainForm.TestMemo.Text;  // для тестов
  S:= BashGetMainAsString;

  WriteLog('Начало разбора html');
  while not (Pos('<div class="q">',S) = 0) do
  begin
    S := Copy(S, Pos('<div class="q">',S),Length(S));
    S := Copy(S, Pos('<div>',S),Length(S));
    i:= i + 1;
    q[i] := Copy(S, Pos('<div>',S),Pos('</div>',S)+5);
    if (q[i] = '') or (Pos('http://lol.bash.org.ru/',q[i]) <> 0) then i:=i-1;
  end;
  WriteLog('Конец разбора html. Цитат: ' + IntToStr(i));
  q[0] := IntToStr(i);

  GetCurrentMainQuotes := q;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  WriteLog('Создание формы.');
  // Меняем размер формы на более компактный.
  MainForm.Width := 366;
  MainForm.Height := 450;
  WriteLog('Меняем размер формы на ' + IntToStr(MainForm.Width) + 'x' + IntToStr(MainForm.Height));

  // Переводим PageControl'ы на начало.
  WriteLog('Переходим на BashTab.');
  MainPageControl.TabIndex := 0;
  WriteLog('Переходим на LogTab.');
  TestPageControl.TabIndex := 0;

  // Убираем TestTab
  TestTabSheet.TabVisible := False;

  // Загружаем главную в массив и отображаем первую цитату
  CurrentMainQuotesArray := GetCurrentMainQuotes;
  CurrentMainQuoteNumber := 1;
  MainHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentMainQuotesArray[CurrentMainQuoteNumber]));

  //TestProc;

end;

procedure TMainForm.btn1Click(Sender: TObject);
var S:string;
mm:TStream;
begin
  // Временный код
  S:=Memo1.Text;
  mm := TStringStream.Create(S);
  htmlvwr1.LoadFromStream(mm);
 
end;

// Функции и процедуры, невыполнимые на этапе создания формы
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
  // Переход на новую цитату при прокрутке колесом мыши
  if ((MainHtmlBrowser.VScrollBarPosition = MainHtmlBrowser.VScrollBarRange) or (MainHtmlBrowser.VScrollBarRange < 0)) and (WheelDelta < 0)
  then BashNext;

  if ((MainHtmlBrowser.VScrollBarPosition = 0) and (WheelDelta > 0))
  then BashPrevious;

end;

// Перехват клавиш
procedure TMainForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (ConsoleInputEdit.Focused = False) then
  HotKeyMaster(Key);
end;

end.
