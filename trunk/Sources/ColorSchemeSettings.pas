unit ColorSchemeSettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExControls, JvXPCore, JvXPButtons, JvExStdCtrls,
  JvCombobox, JvEdit, ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel,
  JvLabel;

type
  TColorSchemeForm = class(TForm)
    JvXPButton1: TJvXPButton;
    JvXPButton2: TJvXPButton;
    JvXPButton3: TJvXPButton;
    JvXPButton4: TJvXPButton;
    JvXPButton5: TJvXPButton;
    JvXPButton6: TJvXPButton;
    JvXPButton7: TJvXPButton;
    JvXPButton8: TJvXPButton;
    JvXPButton9: TJvXPButton;
    JvXPButton10: TJvXPButton;
    JvEdit1: TJvEdit;
    JvComboBox1: TJvComboBox;
    JvXPButton11: TJvXPButton;
    JvPanel1: TJvPanel;
    JvLabel1: TJvLabel;
    JvPanel2: TJvPanel;
    JvPanel3: TJvPanel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    jvlbl1: TJvLabel;
    jvlbl2: TJvLabel;
    jvlbl3: TJvLabel;
    procedure JvPanel1Click(Sender: TObject);
    procedure JvPanel2Click(Sender: TObject);
    procedure JvPanel3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ColorSchemeForm: TColorSchemeForm;

implementation

{$R *.dfm}

procedure TColorSchemeForm.JvPanel1Click(Sender: TObject);
begin
  ColorSchemeForm.Color := JvPanel1.Color;
end;

procedure TColorSchemeForm.JvPanel2Click(Sender: TObject);
begin
  ColorSchemeForm.Color := JvPanel2.Color;
end;

procedure TColorSchemeForm.JvPanel3Click(Sender: TObject);
begin
  ColorSchemeForm.Color := JvPanel3.Color;
end;

end.
