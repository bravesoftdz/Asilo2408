unit USuport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, Buttons;

type
  TSuporte = class(TForm)
    Image1: TImage;
    Baixo: TPanel;
    Como: TMemo;
    Contato: TMemo;
    SMTP: TMemo;
    URL: TEdit;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Suporte: TSuporte;

implementation

{$R *.dfm}

procedure TSuporte.BitBtn1Click(Sender: TObject);
begin
Como.Visible := true;
Contato.Visible := false;
SMTP.Visible := false;
URL.Visible := false;
end;

procedure TSuporte.BitBtn2Click(Sender: TObject);
begin
Contato.Visible := true;
Como.Visible := false;
SMTP.Visible := false;
URL.Visible := false;
end;

procedure TSuporte.BitBtn3Click(Sender: TObject);
begin
SMTP.Visible := true;
Url.Text := 'https://support.google.com/a/answer/176600?hl=pt-BR';
URL.Visible := true;
Como.Visible := false;
Contato.Visible := false;
end;

end.
