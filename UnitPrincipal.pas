unit UnitPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.TabControl,
  FMX.ListBox, FMX.Edit, FMX.Ani;

type
  TfrmPrincipal = class(TForm)
    Layout1: TLayout;
    img_logo: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Layout2: TLayout;
    img_background: TImage;
    Layout3: TLayout;
    rect_getstarted: TRectangle;
    Label4: TLabel;
    TabControl: TTabControl;
    tabHome: TTabItem;
    tabRegistrar: TTabItem;
    Layout4: TLayout;
    cir_back: TCircle;
    img_back: TImage;
    Layout5: TLayout;
    rect_btnFace: TRectangle;
    Label5: TLabel;
    img_face: TImage;
    rect_btnTwitter: TRectangle;
    Label6: TLabel;
    img_twitter: TImage;
    Layout6: TLayout;
    Label7: TLabel;
    Label8: TLabel;
    rect_cor_fundo: TRectangle;
    Layout7: TLayout;
    Label1: TLabel;
    Label9: TLabel;
    Layout8: TLayout;
    Layout9: TLayout;
    Layout10: TLayout;
    Layout11: TLayout;
    Label10: TLabel;
    Label11: TLabel;
    rect_btnsignup: TRectangle;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    VertScrollBox1: TVertScrollBox;
    rect_firstname: TRectangle;
    edt_firstname: TEdit;
    rect_lastname: TRectangle;
    edt_lastname: TEdit;
    rect_password: TRectangle;
    edt_password: TEdit;
    img_abrirsenha: TImage;
    rect_email: TRectangle;
    edt_email: TEdit;
    img_fecharsenha: TImage;
    Line1: TLine;
    animaBackground: TFloatAnimation;
    StyleBook1: TStyleBook;
    procedure cir_backClick(Sender: TObject);
    procedure rect_getstartedClick(Sender: TObject);
    procedure img_abrirsenhaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

procedure TfrmPrincipal.cir_backClick(Sender: TObject);
begin
  TabControl.GotoVisibleTab(tabHome.Index);
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  TabControl.TabIndex := tabHome.Index;
  animaBackground.Start;

end;

procedure TfrmPrincipal.img_abrirsenhaClick(Sender: TObject);
begin
  img_abrirsenha.Visible := True;
  img_fecharsenha.Visible := True;
  Timage(Sender).Visible := False;
  edt_password.Password := not edt_password.Password;
end;

procedure TfrmPrincipal.rect_getstartedClick(Sender: TObject);
begin
  TabControl.GotoVisibleTab(tabRegistrar.Index);
end;

end.
