program bClient;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  ColorSchemeSettings in 'ColorSchemeSettings.pas' {ColorSchemeForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TColorSchemeForm, ColorSchemeForm);
  Application.Run;
end.
