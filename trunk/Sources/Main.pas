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
    LogListBox: TListBox;
    ConsoleInputEdit: TEdit;
    MemoTabSheet: TTabSheet;
    ts1: TTabSheet;
    MainHtmlBrowser: THTMLViewer;
    TestMemoMainTabSheet: TTabSheet;
    StartUpTimer: TTimer;
    AbyssHtmlBrowser: THTMLViewer;
    FindFocusDelayTimer: TTimer;
    AbyssBestHtmlBrowser: THTMLViewer;
    AbyssTopHtmlBrowser: THTMLViewer;
    QuoteNumberLabel: TLabel;
    QuoteBashNumberLabel: TLabel;
    QuoteBashRatingLabel: TLabel;
    TestMainMemo: TMemo;
    TestAbyssBestMemo: TMemo;
    TestAbyssTopMemo: TMemo;
    TestAbyssMemo: TMemo;
    FontSelectButton: TButton;
    FontSelectDialog: TFontDialog;
    AbyssNextButton: TButton;
    procedure wmGetMinMaxInfo(var Msg : TMessage); message wm_GetMinMaxInfo; // Ограничение размеров формы
    procedure FormCreate(Sender: TObject);
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
    procedure FontSelectButtonClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure AbyssNextButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

// Описание формата:
// Массив из 56 записей.
// 0 : служебная
// [0,0] : количество цитат в массиве
// [0,1] : не используется
// [0,2] : не используется
// [0,3] : не используется
// 1-55 : цитаты (не более 55)
// [*,0] : html тект цитаты
// [*,1] : номер цитаты
// [*,2] : рейтинг
// [*,3] : не используется

type QuoteArray = array [0..55] of array [0..3] of string; // Массив цитат

// Описание формата:
// Массив из 13 записей.
// [*,1] : тип страницы (linc, dots, currentpage, prevlinc, nextlinc)
// [*,2] : номер страницы

type PageArray = array [1..13] of array [1..2] of string; // Массив сраниц

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

// Ограничение размеров формы
procedure TMainForm.wmGetMinMaxInfo(var Msg : TMessage);
begin
  PMinMaxInfo(Msg.lParam)^.ptMinTrackSize.X := 366;
  PMinMaxInfo(Msg.lParam)^.ptMinTrackSize.Y := 450;
end;

// Запись лога
procedure WriteLog(Str: string);
begin
  Str := '[' + TimeToStr(Time) + ']  ' + Str;
  MainForm.LogListBox.AddItem(Str,MainForm);
  MainForm.LogListBox.ItemIndex := MainForm.LogListBox.Items.Capacity - 1;
  Append(LogFile);
  Writeln(LogFile,Str);
end;

// Извлечение страниц из конструкции <div class="pager"> ... </div>
function ExtractPages(S,From:string):PageArray;
var
  ptype: array[1..13] of string; // Тип страницы: linc, dots, currentpage, prevlinc, nextlinc
  pnum: array[1..13] of string; // Номер страницы
  num: integer; // Номер записи
  StartPoint: string;
begin
  WriteLog('Извлекаем номера страниц');
  if From = 'Main' then StartPoint := 'x/';
  if From = 'AbyssBest' then StartPoint := 't/';
  S := Copy(S, Pos('/sp',S)+6,Length(S));
  num:=1;
  // Пошла особая магия
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
        if  pnum[num] = '…' then ptype[num] := 'dots' else ptype[num] := 'currentpage';
        S := Copy(S, Pos('/sp',S)+6,Length(S));
      end;
    // Пишем в лог результаты
    WriteLog('№ ' + IntToStr(num) + ', type = '+ ptype[num] + ', num = '+ pnum[num]);
    ExtractPages[num, 1]:=ptype[num];
    ExtractPages[num, 2]:=pnum[num];
    num := num +1;
  end;
  WriteLog('Все страницы извлечены');
end;

// Присваем переменным начальные значения
procedure SetVariables;
begin
  Assign(LogFile,'Log.txt');
  Rewrite(LogFile);
  Close(LogFile);
  WriteLog('Загрузка переменных');
  CurrentMainQuoteNumber := 0;
  CurrentAbyssQuoteNumber := 0;
  MainNeedLoad := False;
  AbyssNeedLoad := False;
  AbyssBestNeedLoad := False;
  AbyssTopNeedLoad := False;
  MainForm.QuoteNumberLabel.Caption := '?/?';
  MainForm.MainHtmlBrowser.DefFontName := MainForm.FontSelectDialog.Font.Name;
  MainForm.MainHtmlBrowser.DefFontSize := MainForm.FontSelectDialog.Font.Size;
  MainForm.AbyssHtmlBrowser.DefFontName := MainForm.FontSelectDialog.Font.Name;
  MainForm.AbyssHtmlBrowser.DefFontSize := MainForm.FontSelectDialog.Font.Size;
  MainForm.AbyssTopHtmlBrowser.DefFontName := MainForm.FontSelectDialog.Font.Name;
  MainForm.AbyssTopHtmlBrowser.DefFontSize := MainForm.FontSelectDialog.Font.Size;
  MainForm.AbyssBestHtmlBrowser.DefFontName := MainForm.FontSelectDialog.Font.Name;
  MainForm.AbyssBestHtmlBrowser.DefFontSize := MainForm.FontSelectDialog.Font.Size;
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

// Меняем данные цитаты
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
  WriteLog('Меняем данные цитаты: ' + lCaption1 + ', '+ lCaption2 + ', '+ lCaption3);
end;

// Ищем окно для выставления фокуса, чтобы "не терять скроллинг"
procedure FindFocus;
begin
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
        WriteLog('Переход на след. цитату топа бездны с CurrentNumber ' + IntToStr(CurrentAbyssTopQuoteNumber));
        ChangeQuoteNumber;
      end;
  3:  begin
        if NOT(CurrentAbyssQuoteNumber = StrToInt(CurrentAbyssQuotesArray[0,0]))
        then begin
                CurrentAbyssQuoteNumber := CurrentAbyssQuoteNumber + 1;
                MainForm.AbyssHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentAbyssQuotesArray[CurrentAbyssQuoteNumber,0]));
                MainForm.AbyssHtmlBrowser.VScrollBar.Position := -1000; // Временный код
             end
        else
             begin
                MainForm.AbyssNextButton.Visible := True;
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
        WriteLog('Переход на пред. цитату топа бездны с CurrentNumber ' + IntToStr(CurrentAbyssTopQuoteNumber));
        ChangeQuoteNumber;
      end;
  3:  begin
        if NOT(CurrentAbyssQuoteNumber = 1)
        then begin
                CurrentAbyssQuoteNumber := CurrentAbyssQuoteNumber - 1;
                MainForm.AbyssHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentAbyssQuotesArray[CurrentAbyssQuoteNumber,0]));
                MainForm.AbyssHtmlBrowser.VScrollBar.Position := -1000; // Временный код
                MainForm.AbyssNextButton.Visible := False;
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

// Удаляем длинные слова, чтобы не сдвигать страницу
function RemoveLongWords(S: string):string;
var i,num:integer;
    S2: string;
begin
  num := 0;
  S2:='';
  for i := 0 to (Length(S)-1) do
  begin
    num := num + 1;
    if (S[i] = ' ') or (S[i] = '<') then num := 0;
    if (num < 35) then S2 := S2 + S[i];
  end;
  RemoveLongWords := S2;
end;

// Парсер цитат
function BashQuoteParser(S: string; qtype: integer):QuoteArray;
var i:Integer;
    q: QuoteArray;
begin
  i:=0;
  WriteLog('Начало разбора html');
  S := Copy(S, Pos('"pager">',S),Length(S));
  // Получаем номера страниц
  case qtype of
    0: CurrentMainPagesArray:= ExtractPages(Copy(S, 0, Pos('</div>',S)+6),'Main');
    1: CurrentAbyssBestPagesArray := ExtractPages(Copy(S, 0, Pos('</div>',S)+6),'AbyssBest');
    2: ;
    3: ;
  end;
  // Загрузка цитат
  while not (Pos('<div class="q">',S) = 0) do
  begin
      i:= i + 1;
      S := Copy(S, Pos('<div class="q">',S),Length(S));
      // Получаем номер цитаты
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
     // Получаем рейтинг цитаты
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
      q[i,0] := RemoveLongWords(Copy(S, Pos('<div>',S),Pos('</div>',S)+5));
      if (q[i,0] = '') or (Pos('http://lol.bash.org.ru/',q[i,0]) <> 0) then i:=i-1;
  end;
  WriteLog('Конец разбора html. Цитат: ' + IntToStr(i));
  q[0,0] := IntToStr(i);
  BashQuoteParser := q;
end;

// Получаем массив цитат с главной
function GetCurrentMainQuotes: QuoteArray;
begin
  //GetCurrentMainQuotes := BashQuoteParser(MainForm.TestMainMemo.Text, 0); // для тестов
  GetCurrentMainQuotes := BashQuoteParser(BashGetMainAsString, 0);
end;

// Получаем массив цитат с бездны
function GetCurrentAbyssQuotes: QuoteArray;
begin
  //GetCurrentAbyssQuotes := BashQuoteParser(MainForm.TestAbyssMemo.Text, 3); // для тестов
  GetCurrentAbyssQuotes := BashQuoteParser(BashGetAbyssAsString, 3);
end;

// Получаем массив цитат с лучшего бездны
function GetCurrentAbyssBestQuotes: QuoteArray;
begin
  //GetCurrentAbyssBestQuotes := BashQuoteParser(MainForm.TestAbyssBestMemo.Text, 1); // для тестов
  GetCurrentAbyssBestQuotes := BashQuoteParser(BashGetAbyssBestAsString, 1);
end;

// Получаем массив цитат с топа бездны
function GetCurrentAbyssTopQuotes: QuoteArray;
begin
  //GetCurrentAbyssTopQuotes := BashQuoteParser(MainForm.TestAbyssTopMemo.Text, 2); // для тестов
  GetCurrentAbyssTopQuotes := BashQuoteParser(BashGetAbyssTopAsString, 2);
end;

// Открытие Главной
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

// Открытие Бездны
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

// Открытие Лучшего Бездны
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

// Открытие Топа Бездны
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



///////////////////////////////////////////////////////
// Создание формы                                    //
///////////////////////////////////////////////////////
procedure TMainForm.FormCreate(Sender: TObject);
begin
  SetVariables;
  WriteLog('Создание формы.');
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
end;

// Функции и процедуры, невыполнимые на этапе создания формы
procedure TMainForm.FormShow(Sender: TObject);
begin
  FindFocus;
end;

// При заходе на вкладку баша передаем фокус на нужный браузер
procedure TMainForm.BashTabSheetEnter(Sender: TObject);
begin
  FindFocus;
end;



///////////////////////////////////////////////////////////////////////////////
// Переход на новую цитату при прокрутке колесом мыши
///////////////////////////////////////////////////////////////////////////////
procedure ScrollControl(hb: THTMLViewer; WheelDelta: integer);
begin
  if ((hb.VScrollBarPosition = hb.VScrollBarRange) or (hb.VScrollBarRange < 0)) and (WheelDelta < 0)
  then BashNext;

  if ((hb.VScrollBarPosition = 0) and (WheelDelta > 0))
  then BashPrevious;
end;

procedure TMainForm.MainHtmlBrowserMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  ScrollControl(MainHtmlBrowser,WheelDelta);
end;
procedure TMainForm.AbyssHtmlBrowserMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  ScrollControl(AbyssHtmlBrowser,WheelDelta);
end;

procedure TMainForm.AbyssBestHtmlBrowserMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  ScrollControl(AbyssBestHtmlBrowser,WheelDelta);
end;

procedure TMainForm.AbyssTopHtmlBrowserMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  ScrollControl(AbyssTopHtmlBrowser,WheelDelta);
end;
///////////////////////////////////////////////////////////////////////////////
//Конец блока
///////////////////////////////////////////////////////////////////////////////



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

// Задержка перед поиском фокуса
procedure TMainForm.FindFocusDelayTimerTimer(Sender: TObject);
begin
  FindFocus;
  FindFocusDelayTimer.Enabled:=False;
end;

// Смена вкладки Баша
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

// Выбираем шрифт
procedure TMainForm.FontSelectButtonClick(Sender: TObject);
begin
  if FontSelectDialog.Execute then
    begin
      MainHtmlBrowser.DefFontName := FontSelectDialog.Font.Name;
      MainHtmlBrowser.DefFontSize := FontSelectDialog.Font.Size;
      AbyssHtmlBrowser.DefFontName := FontSelectDialog.Font.Name;
      AbyssHtmlBrowser.DefFontSize := FontSelectDialog.Font.Size;
      AbyssTopHtmlBrowser.DefFontName := FontSelectDialog.Font.Name;
      AbyssTopHtmlBrowser.DefFontSize := FontSelectDialog.Font.Size;
      AbyssBestHtmlBrowser.DefFontName := FontSelectDialog.Font.Name;
      AbyssBestHtmlBrowser.DefFontSize := FontSelectDialog.Font.Size;
    end;
end;

// Меняем размер кнопки "А Дальше?!"
procedure TMainForm.FormResize(Sender: TObject);
begin
  AbyssNextButton.Left:= 0;
  AbyssNextButton.Top:= 0;
  AbyssNextButton.Width:= AbyssBashNavBarGroupControl.Width;
  AbyssNextButton.Height:= AbyssBashNavBarGroupControl.Height;
end;

// Нажата кнопка "А Дальше?!"
procedure TMainForm.AbyssNextButtonClick(Sender: TObject);
begin
  WriteLog('Нажата кнопка "А Дальше?!"');
  AbyssNextButton.Visible := False;
  CurrentAbyssQuotesArray := GetCurrentAbyssQuotes;
  CurrentAbyssQuoteNumber := 1;
  MainForm.AbyssHtmlBrowser.LoadFromStream(TStringStream.Create(CurrentAbyssQuotesArray[CurrentAbyssQuoteNumber,0]));
  ChangeQuoteNumber;
  FindFocus;
end;

end.
