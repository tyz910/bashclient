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
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BashTabSheetEnter(Sender: TObject);
    procedure MainHtmlBrowserMouseWheel(Sender: TObject;
      Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
      var Handled: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MainHtmlBrowserKeyPress(Sender: TObject; var Key: Char);
    procedure LogListBoxKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

// ������ ����
procedure WriteLog(Str: string);
begin
  Str := '[' + TimeToStr(Time) + ']  ' + Str;
  MainForm.LogListBox.AddItem(Str,MainForm);
end;

// ��������-�������� �������
procedure OpenCloseTestTab;
begin
  if MainForm.TestTabSheet.TabVisible = False
  then begin
          WriteLog('TestTab ������ - ��������� � ��������� �� ���');
          MainForm.TestTabSheet.TabVisible := True;
          WriteLog('��������� �� TestTab.');
          // ����������� ������� �� �������
          WriteLog('��������� �� LogTab.');
          MainForm.TestPageControl.TabIndex := 0;
       end
  else begin
          WriteLog('TestTab ������ - ��������� � ��������� �� ������� ����');
          MainForm.TestTabSheet.TabVisible := False;
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
  WriteLog('����� ������');
  ShowMessage('�����. ����� ���������� �� ����� ������');
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
  //TestTabSheet.TabVisible := False;

  // ��������� ���
  // ��������� ������ � ����� � ������� � ���������������
  MainHtmlBrowser.LoadFromStream(TStringStream.Create(Memo1.Text));
  //MainHtmlBrowser.LoadTextFromString(Memo1.Text);
  WriteLog('����������� �������� ������');

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
end;

/////////////////////////////////////////////////////////////////
// ���� ��������� ������                                       //
/////////////////////////////////////////////////////////////////

procedure TMainForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  HotKeyMaster(Key);
end;

procedure TMainForm.MainHtmlBrowserKeyPress(Sender: TObject;
  var Key: Char);
begin
  HotKeyMaster(Key);
end;

procedure TMainForm.LogListBoxKeyPress(Sender: TObject; var Key: Char);
begin
  HotKeyMaster(Key);
end;

/////////////////////////////////////////////////////////////////
// ����� ����� ��������� ������                                //
/////////////////////////////////////////////////////////////////

end.
