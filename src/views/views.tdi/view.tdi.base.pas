unit view.tdi.base;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base, Vcl.ExtCtrls;

type
  TViewBaseTDI = class(TViewBase)
    pnlBackground: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewBaseTDI: TViewBaseTDI;

implementation

{$R *.dfm}

end.
