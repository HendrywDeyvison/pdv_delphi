unit view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, view.tdi.base, view.tdi.filial, view.base, TDI, view.tdi.home,
  Vcl.Imaging.pngimage, providers.constantes;

type
  TViewPrincipal = class(TViewBase)
    pnlTopo: TPanel;
    pnlBackground: TPanel;
    pnlMenu: TPanel;
    pnlTDI: TPanel;
    Button1: TButton;
    btn2: TButton;
    pnlLogoSistema: TPanel;
    pnlImgLogoEmpresa: TPanel;
    imgLogoEmpresaAzul: TImage;
    pnlLogoTituloSistema: TPanel;
    lblTituloEmpresa: TLabel;
    lblSloganEmpresa: TLabel;
    imgLogoEmpresaBranco: TImage;
    pnlUsuarios: TPanel;
    pnlMaisUsados: TPanel;
    pnlImgUser: TPanel;
    imgUserAzul: TImage;
    imgUserBranco: TImage;
    pnlDadosUser: TPanel;
    lblNomeUser: TLabel;
    lblPerfilUser: TLabel;
    btn3: TButton;
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure imgLogoEmpresaAzulMouseEnter(Sender: TObject);
    procedure imgLogoEmpresaBrancoMouseLeave(Sender: TObject);
    procedure imgUserAzulMouseEnter(Sender: TObject);
    procedure imgUserBrancoMouseLeave(Sender: TObject);
    procedure imgLogoEmpresaBrancoClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
  var
    FTDI: TTDI;
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

uses
  view.tdi.venda;

{$R *.dfm}

procedure TViewPrincipal.FormShow(Sender: TObject);
begin
  inherited;
  FTDI := TTDI.Create(pnlTDI, TViewHomeTDI);
  FTDI.MostrarMenuPopup := False;
end;

procedure TViewPrincipal.Button1Click(Sender: TObject);
begin
  inherited;
  FTDI.MostrarFormulario(TViewHomeTDI, False);
end;

procedure TViewPrincipal.btn2Click(Sender: TObject);
begin
  inherited;
  FTDI.MostrarFormulario(TViewFilialTDI, False);
end;

procedure TViewPrincipal.btn3Click(Sender: TObject);
begin
  inherited;
  FTDI.MostrarFormulario(TViewVendaTDI, ABRIR_VARIOS_FORMS);
end;

procedure TViewPrincipal.imgLogoEmpresaAzulMouseEnter(Sender: TObject);
begin
  inherited;
  imgLogoEmpresaAzul.Visible := False;
  imgLogoEmpresaBranco.Visible := True;
end;

procedure TViewPrincipal.imgLogoEmpresaBrancoClick(Sender: TObject);
begin
  inherited;
  FTDI.Fechar(True);
  FTDI.MostrarFormulario(TViewHomeTDI, False);
end;

procedure TViewPrincipal.imgLogoEmpresaBrancoMouseLeave(Sender: TObject);
begin
  inherited;
  imgLogoEmpresaAzul.Visible := True;
  imgLogoEmpresaBranco.Visible := False;
end;

procedure TViewPrincipal.imgUserAzulMouseEnter(Sender: TObject);
begin
  inherited;
  imgUserAzul.Visible := False;
  imgUserBranco.Visible := True;
end;

procedure TViewPrincipal.imgUserBrancoMouseLeave(Sender: TObject);
begin
  inherited;
  imgUserAzul.Visible := True;
  imgUserBranco.Visible := False;
end;

end.
