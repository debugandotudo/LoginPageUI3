unit UnitSplash;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts, FMX.Ani;

type
  TfrmSplash = class(TForm)
    Layout1: TLayout;
    img_logo: TImage;
    Label2: TLabel;
    FloatAnimation1: TFloatAnimation;
    Timer1: TTimer;
    Line1: TLine;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FloatAnimation1Finish(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.fmx}

uses UnitPrincipal;

procedure TfrmSplash.FloatAnimation1Finish(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TfrmSplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
  frmSplash := nil;
end;

procedure TfrmSplash.FormShow(Sender: TObject);
begin
  Layout1.Opacity := 0;
  FloatAnimation1.Start;
end;

procedure TfrmSplash.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;

  if not Assigned(frmPrincipal) then
    Application.CreateForm(TfrmPrincipal,frmPrincipal);

  Application.MainForm := frmPrincipal;
  frmPrincipal.Show;

  frmSplash.Close;

end;

end.
