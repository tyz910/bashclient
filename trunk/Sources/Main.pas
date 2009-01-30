unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, cxClasses, dxNavBarBase, dxNavBarCollns, ExtCtrls,
  dxNavBar, StdCtrls;

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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  // Меняем размер формы на более компактный.
  MainForm.Width := 366;
  MainForm.Height := 450;

  // Переходим на BashTab
  MainPageControl.TabIndex := 0;

  // Убираем TestTab
  //TestTabSheet.TabVisible := False;
end;

end.
