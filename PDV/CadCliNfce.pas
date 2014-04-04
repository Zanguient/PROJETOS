unit CadCliNfce;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, DividerBevel, Forms, Controls, Graphics, Dialogs,
  StdCtrls, MaskEdit, ExtCtrls, ShellCtrls, PopupNotifier, Arrow;

type

  { TFrmCadCliNfce }

  TFrmCadCliNfce = class(TForm)
    CBoxUF: TComboBox;
    EdtIE: TEdit;
    EdtMunicipio: TEdit;
    EdtEmail: TEdit;
    EdtBairro: TEdit;
    EdtCpfCnpj: TMaskEdit;
    EdtEndereco: TEdit;
    EdtNmRz: TEdit;
    EdtNumero: TEdit;
    imageF1: TImage;
    imageF2: TImage;
    imageF3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    labelF1: TLabel;
    labelF2: TLabel;
    labelF3: TLabel;
    LblCpfCnpj: TLabel;
    LblEndereco: TLabel;
    LblNmRz: TLabel;
    LblNumero: TLabel;
    EdtCEP: TMaskEdit;
    EdtFone: TMaskEdit;
    EdtCelular: TMaskEdit;
    panelBotoes: TPanel;
    panelF1: TPanel;
    panelF2: TPanel;
    panelF3: TPanel;
    panPeriodo: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure panelBotoesClick(Sender: TObject);
    procedure panelF1MouseEnter(Sender: TObject);
    procedure panelF1MouseLeave(Sender: TObject);
    procedure panelF2MouseEnter(Sender: TObject);
    procedure panelF2MouseLeave(Sender: TObject);
    procedure panelF3MouseEnter(Sender: TObject);
    procedure panelF3MouseLeave(Sender: TObject);
  private
    { private declarations }
    procedure Confirma;
    procedure Fechar;
  public
    { public declarations }
    PTipPessoa: Char;
  end;

var
  FrmCadCliNfce: TFrmCadCliNfce;

implementation

{$R *.lfm}

{ TFrmCadCliNfce }

procedure TFrmCadCliNfce.FormCreate(Sender: TObject);
begin

end;

procedure TFrmCadCliNfce.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    27: Fechar;
    34: Confirma;
  end;
end;

procedure TFrmCadCliNfce.FormShow(Sender: TObject);
begin
  case PTipPessoa of
    'F': begin
           LblNmRz.Caption    := 'NOME:';
           LblCpfCnpj.Caption := 'CPF:';
           EdtIE.Enabled      := False;
         end;
    'J': begin
           LblNmRz.Caption    := 'RAZAO SOCIAL:';
           LblCpfCnpj.Caption := 'CNPJ:';
           EdtIE.Enabled      := True;
         end;
  end;
end;

procedure TFrmCadCliNfce.panelBotoesClick(Sender: TObject);
begin

end;

procedure TFrmCadCliNfce.panelF1MouseEnter(Sender: TObject);
begin
  panelF1.BevelOuter := bvRaised;
  panelF1.BevelWidth := 2;
end;

procedure TFrmCadCliNfce.panelF1MouseLeave(Sender: TObject);
begin
  panelF1.BevelOuter := bvNone;
end;

procedure TFrmCadCliNfce.panelF2MouseEnter(Sender: TObject);
begin
  panelF2.BevelOuter := bvRaised;
  panelF2.BevelWidth := 2;
end;

procedure TFrmCadCliNfce.panelF2MouseLeave(Sender: TObject);
begin
  panelF2.BevelOuter := bvNone;
end;

procedure TFrmCadCliNfce.panelF3MouseEnter(Sender: TObject);
begin
  panelF3.BevelOuter := bvRaised;
  panelF3.BevelWidth := 2;
end;

procedure TFrmCadCliNfce.panelF3MouseLeave(Sender: TObject);
begin
  panelF3.BevelOuter := bvNone;
end;

procedure TFrmCadCliNfce.Confirma;
begin
  ModalResult := mrOK;
  Exit;
end;

procedure TFrmCadCliNfce.Fechar;
begin
  EdtNmRz.Text      := '';
  EdtCpfCnpj.Text   := '';
  EdtIE.Text        := '';
  EdtCEP.Text       := '';
  EdtEndereco.Text  := '';
  EdtNumero.Text    := '';
  EdtBairro.Text    := '';
  CBoxUF.Text       := '';
  EdtMunicipio.Text := '';
  EdtFone.Text      := '';
  EdtCelular.Text   := '';
  EdtEmail.Text     := '';
  ModalResult       := mrCancel;
  Exit;
end;

end.

