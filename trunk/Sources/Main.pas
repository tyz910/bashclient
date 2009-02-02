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

// Описание формата:
// Массив из 101 записи.
// 0 : служебная
// [0,0] : количество цитат в массиве
// [0,1] : не используется
// [0,2] : не используется
// 1-100 : цитаты (не более 100)
// [*,0] : html тект цитаты
// [*,1] : не используется
// [*,2] : не используется

type QuoteArray = array [0..100] of array [0..2] of string; // Массив цитат

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

// Запись лога
procedure WriteLog(Str: string);
begin
  Str := '[' + TimeToStr(Time) + ']  ' + Str;
  MainForm.LogListBox.AddItem(Str,MainForm);
  MainForm.LogListBox.ItemIndex := MainForm.LogListBox.Items.Capacity - 1;
end;

// Присваем переменным начальные значения
procedure SetVariables;
begin
  WriteLog('Загрузка переменных');
  CurrentMainQuoteNumber := 0;
  CurrentAbyssQuoteNumber := 0;
  MainNeedLoad := False;
  AbyssNeedLoad := False;
  AbyssBestNeedLoad := False;
  AbyssTopNeedLoad := False;
  MainForm.QuoteNumberLabel.Caption := '?/?';
  //NeedLoad := False;
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
  WriteLog('Меняем QuoteNumber ' + lCaption);
end;

// Ищем окно для выставления фокуса, чтобы "не терять скроллинг"
procedure FindFocus;
begin
  // Временный код
  case MainForm.BashNavBar.ActiveGroupIndex of
  // Главная
  0: begin
        MainForm.MainHtmlBrowser.SetFocus;
        WriteLog('Передача фокуса на Главную');
     end;
  // Лучшее бездны
  1: begin
        MainForm.AbyssBestHtmlBrowser.SetFocus;
        WriteLog('Передача фокуса на Лучшее Бездны');
     end;
  // Топ бездны
  2: begin
        MainForm.AbyssTopHtmlBrowser.SetFocus;
        WriteLog('Передача фокуса на Топ Бездну');
     end;
  // Бездна
  3: begin
        MainForm.AbyssHtmlBrowser.SetFocus;
        WriteLog('Передача фокуса на Бездну');
     end;
  end;
end;

// Переход на новую цитату
procedure BashNext;
begin
  case MainForm.BashNavBar.ActiveGroupIndex of
  0:  begin
        if NOT(CurrentMainQuoteNumber = StrToInt(CurrentMainQuotesArray[0,0]))
        then begin
                CurrentMainQuoteNumber := CurrentMainQuoteNumber + 1;
                MainForm.MainHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentMainQuotesArray[CurrentMainQuoteNumber,0]));
                MainForm.MainHtmlBrowser.VScrollBar.Position := -1000; // Временный код
             end;
        WriteLog('Переход на след. цитату главной с CurrentNumber ' + IntToStr(CurrentMainQuoteNumber));
        ChangeQuoteNumber;
      end;
  1:  begin
        if NOT(CurrentAbyssBestQuoteNumber = StrToInt(CurrentAbyssBestQuotesArray[0,0]))
        then begin
                CurrentAbyssBestQuoteNumber := CurrentAbyssBestQuoteNumber + 1;
                MainForm.AbyssBestHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentAbyssBestQuotesArray[CurrentAbyssBestQuoteNumber,0]));
                MainForm.AbyssBestHtmlBrowser.VScrollBar.Position := -1000; // Временный код
             end;
        WriteLog('Переход на след. цитату лучшего бездны с CurrentNumber ' + IntToStr(CurrentAbyssBestQuoteNumber));
        ChangeQuoteNumber;
      end;
  2:  begin
        if NOT(CurrentAbyssTopQuoteNumber = StrToInt(CurrentAbyssTopQuotesArray[0,0]))
        then begin
                CurrentAbyssTopQuoteNumber := CurrentAbyssTopQuoteNumber + 1;
                MainForm.AbyssTopHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentAbyssTopQuotesArray[CurrentAbyssTopQuoteNumber,0]));
                MainForm.AbyssTopHtmlBrowser.VScrollBar.Position := -1000; // Временный код
             end;
        WriteLog('Переход на след. цитату бездны с CurrentNumber ' + IntToStr(CurrentAbyssTopQuoteNumber));
        ChangeQuoteNumber;
      end;
  3:  begin
        if NOT(CurrentAbyssQuoteNumber = StrToInt(CurrentAbyssQuotesArray[0,0]))
        then begin
                CurrentAbyssQuoteNumber := CurrentAbyssQuoteNumber + 1;
                MainForm.AbyssHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentAbyssQuotesArray[CurrentAbyssQuoteNumber,0]));
                MainForm.AbyssHtmlBrowser.VScrollBar.Position := -1000; // Временный код
             end;
        WriteLog('Переход на след. цитату бездны с CurrentNumber ' + IntToStr(CurrentAbyssQuoteNumber));
        ChangeQuoteNumber;
      end;
  end;

end;

// Переход на предыдущую цитату
procedure BashPrevious;
begin
  case MainForm.BashNavBar.ActiveGroupIndex of
  0:  begin
        if NOT(CurrentMainQuoteNumber = 1)
        then begin
                CurrentMainQuoteNumber := CurrentMainQuoteNumber - 1;
                MainForm.MainHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentMainQuotesArray[CurrentMainQuoteNumber,0]));
                MainForm.MainHtmlBrowser.VScrollBar.Position := -1000; // Временный код
             end;
        WriteLog('Переход на пред. цитату главной с CurrentNumber ' + IntToStr(CurrentMainQuoteNumber));
        ChangeQuoteNumber;
      end;
  1:  begin
        if NOT(CurrentAbyssBestQuoteNumber = 1)
        then begin
                CurrentAbyssBestQuoteNumber := CurrentAbyssBestQuoteNumber - 1;
                MainForm.AbyssBestHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentAbyssBestQuotesArray[CurrentAbyssBestQuoteNumber,0]));
                MainForm.AbyssBestHtmlBrowser.VScrollBar.Position := -1000; // Временный код
             end;
        WriteLog('Переход на пред. цитату лучшего бездны с CurrentNumber ' + IntToStr(CurrentAbyssBestQuoteNumber));
        ChangeQuoteNumber;
      end;
  2:  begin
        if NOT(CurrentAbyssTopQuoteNumber = 1)
        then begin
                CurrentAbyssTopQuoteNumber := CurrentAbyssTopQuoteNumber - 1;
                MainForm.AbyssTopHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentAbyssTopQuotesArray[CurrentAbyssTopQuoteNumber,0]));
                MainForm.AbyssTopHtmlBrowser.VScrollBar.Position := -1000; // Временный код
             end;
        WriteLog('Переход на пред. цитату бездны с CurrentNumber ' + IntToStr(CurrentAbyssTopQuoteNumber));
        ChangeQuoteNumber;
      end;
  3:  begin
        if NOT(CurrentAbyssQuoteNumber = 1)
        then begin
                CurrentAbyssQuoteNumber := CurrentAbyssQuoteNumber - 1;
                MainForm.AbyssHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentAbyssQuotesArray[CurrentAbyssQuoteNumber,0]));
                MainForm.AbyssHtmlBrowser.VScrollBar.Position := -1000; // Временный код
             end;
        WriteLog('Переход на пред. цитату бездны с CurrentNumber ' + IntToStr(CurrentAbyssQuoteNumber));
        ChangeQuoteNumber;
      end;
  end;
end;

// Получаем html код страницы по указанной ссылке
function GetStringFromUrl(GetUrl: string): string;
begin
    case MainForm.BashNavBar.ActiveGroupIndex of
      0: MainForm.MainHtmlBrowser.LoadFromStream(TStringStream.Create('Загрузка...'));
      1: MainForm.AbyssBestHtmlBrowser.LoadFromStream(TStringStream.Create('Загрузка...'));
      2: MainForm.AbyssTopHtmlBrowser.LoadFromStream(TStringStream.Create('Загрузка...'));
      3: MainForm.AbyssHtmlBrowser.LoadFromStream(TStringStream.Create('Загрузка...'));
    end;
    WriteLog('Получаем html код со страницы ' + GetUrl);
    with TIdHTTP.Create(MainForm) do
    begin
      GetStringFromUrl := Get(GetUrl);
      Destroy;
    end;
end;

// Загружаем html главной в строку
function BashGetMainAsString: string;
begin
  WriteLog('Загрузка html главной баша в строку');
  BashGetMainAsString := GetStringFromUrl('http://bash.org.ru/');
end;

// Загружаем html бездны в строку
function BashGetAbyssAsString: string;
begin
  WriteLog('Загрузка html бездны в строку');
  BashGetAbyssAsString := GetStringFromUrl('http://bash.org.ru/abyss');
end;

// Загружаем html лучшего бездны в строку
function BashGetAbyssBestAsString: string;
begin
  WriteLog('Загрузка html лучшего бездны в строку');
  BashGetAbyssBestAsString := GetStringFromUrl('http://bash.org.ru/abyssbest');
end;

// Загружаем html топа бездны в строку
function BashGetAbyssTopAsString: string;
begin
  WriteLog('Загрузка html топа бездны в строку');
  BashGetAbyssTopAsString := GetStringFromUrl('http://bash.org.ru/abysstop');
end;

// Тестовая процедура. Временный код.
procedure TestProc;
var i:Integer;
S:string;
q: QuoteArray;
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
    q[i,0] := Copy(S, Pos('<div>',S),Pos('</div>',S)+5);
    if (q[i,0] = '') or (Pos('http://lol.bash.org.ru/',q[i,0]) <> 0) then i:=i-1;
    MainForm.Memo1.Lines.Add('=========='+IntToStr(i)+'==========');
    MainForm.Memo1.Lines.Add(q[i,0]);
    MainForm.Memo1.Lines.Add('========================');
  end;
  WriteLog('Конец разбора');
  //ShowMessage(IntToStr(i));
  q[0,0] := IntToStr(i);
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
    q[i,0] := Copy(S, Pos('<div>',S),Pos('</div>',S)+5);
    if (q[i,0] = '') or (Pos('http://lol.bash.org.ru/',q[i,0]) <> 0) then i:=i-1;
  end;
  WriteLog('Конец разбора html. Цитат: ' + IntToStr(i));
  q[0,0] := IntToStr(i);

  GetCurrentMainQuotes := q;
end;

// Получаем массив цитат с бездны
function GetCurrentAbyssQuotes: QuoteArray;
  var i:Integer;
  S:string;
  q: QuoteArray;
begin
  i:=0;
  S:= BashGetAbyssAsString;
  WriteLog('Начало разбора html');
  while not (Pos('<div class="q">',S) = 0) do
  begin
    S := Copy(S, Pos('<div class="q">',S),Length(S));
    S := Copy(S, Pos('<div>',S),Length(S));
    i:= i + 1;
    q[i,0] := Copy(S, Pos('<div>',S),Pos('</div>',S)+5);
    if (q[i,0] = '') or (Pos('http://lol.bash.org.ru/',q[i,0]) <> 0) then i:=i-1;
  end;
  WriteLog('Конец разбора html. Цитат: ' + IntToStr(i));
  q[0,0] := IntToStr(i);

  GetCurrentAbyssQuotes := q;
end;

// Получаем массив цитат с лучшего бездны
function GetCurrentAbyssBestQuotes: QuoteArray;
  var i:Integer;
  S:string;
  q: QuoteArray;
begin
  i:=0;
  S:= BashGetAbyssBestAsString;
  WriteLog('Начало разбора html');
  while not (Pos('<div class="q">',S) = 0) do
  begin
    S := Copy(S, Pos('<div class="q">',S),Length(S));
    S := Copy(S, Pos('<div>',S),Length(S));
    i:= i + 1;
    q[i,0] := Copy(S, Pos('<div>',S),Pos('</div>',S)+5);
    if (q[i,0] = '') or (Pos('http://lol.bash.org.ru/',q[i,0]) <> 0) then i:=i-1;
  end;
  WriteLog('Конец разбора html. Цитат: ' + IntToStr(i));
  q[0,0] := IntToStr(i);

  GetCurrentAbyssBestQuotes := q;
end;

// Получаем массив цитат с топа бездны
function GetCurrentAbyssTopQuotes: QuoteArray;
  var i:Integer;
  S:string;
  q: QuoteArray;
begin
  i:=0;
  S:= BashGetAbyssTopAsString;
  WriteLog('Начало разбора html');
  while not (Pos('<div class="q">',S) = 0) do
  begin
    S := Copy(S, Pos('<div class="q">',S),Length(S));
    S := Copy(S, Pos('<div>',S),Length(S));
    i:= i + 1;
    q[i,0] := Copy(S, Pos('<div>',S),Pos('</div>',S)+5);
    if (q[i,0] = '') or (Pos('http://lol.bash.org.ru/',q[i,0]) <> 0) then i:=i-1;
  end;
  WriteLog('Конец разбора html. Цитат: ' + IntToStr(i));
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
  WriteLog('Создание формы.');
  SetVariables;
  // Меняем размер формы на более компактный.
  MainForm.Width := 366;
  MainForm.Height := 450;
  WriteLog('Меняем размер формы на ' + IntToStr(MainForm.Width) + 'x' + IntToStr(MainForm.Height));

  // Переводим PageControl'ы на начало.
  BashNavBar.ActiveGroupIndex :=0;
  WriteLog('Переходим на BashTab.');
  MainPageControl.TabIndex := 0;
  WriteLog('Переходим на LogTab.');
  TestPageControl.TabIndex := 0;

  // Убираем TestTab
  TestTabSheet.TabVisible := False;

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

// Таймер для начала загрузки, после полного отображения формы
procedure TMainForm.StartUpTimerTimer(Sender: TObject);
begin
  // Загружаем главную в массив и отображаем первую цитату
  WriteLog('Загрузка программы завершилась, загружаем данные из инета');
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
  // Главная
  0: OpenMain;
  // Лучшее бездны
  1: OpenAbyssBest;
  // Топ бездны
  2: OpenAbyssTop;
  // Бездна
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
