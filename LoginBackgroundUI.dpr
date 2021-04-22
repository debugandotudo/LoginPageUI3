program LoginBackgroundUI;

uses
  System.StartUpCopy,
  FMX.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {frmPrincipal},
  UnitSplash in 'UnitSplash.pas' {frmSplash};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmSplash, frmSplash);
  Application.Run;
end.
