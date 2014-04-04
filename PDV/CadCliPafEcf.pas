unit CadCliPafEcf;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, maskedit;

type

  { TFrmCadCliPafEcf }

  TFrmCadCliPafEcf = class(TForm)
    EdtCpfCnpj: TMaskEdit;
    EdtEndereco: TEdit;
    EdtNmRz: TEdit;
    imageF1: TImage;
    imageF2: TImage;
    imageF3: TImage;
    labelF1: TLabel;
    labelF2: TLabel;
    labelF3: TLabel;
    LblCpfCnpj: TLabel;
    LblEndereco: TLabel;
    LblNmRz: TLabel;
    panelBotoes: TPanel;
    panelF1: TPanel;
    panelF2: TPanel;
    panelF3: TPanel;
    panPeriodo: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
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
  FrmCadCliPafEcf: TFrmCadCliPafEcf;

implementation

{$R *.lfm}

{ TFrmCadCliPafEcf }

procedure TFrmCadCliPafEcf.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    27: Fechar;
    34: Confirma;
  end;

end;

procedure TFrmCadCliPafEcf.FormShow(Sender: TObject);
begin
  case PTipPessoa of
    'F': begin
           LblNmRz.Caption    := 'NOME:';
           LblCpfCnpj.Caption := 'CPF:';
         end;
    'J': begin
           LblNmRz.Caption    := 'RAZAO SOCIAL:';
           LblCpfCnpj.Caption := 'CNPJ:';
         end;
  end;
end;

procedure TFrmCadCliPafEcf.panelF1MouseEnter(Sender: TObject);
begin
  panelF1.BevelOuter := bvRaised;
  panelF1.BevelWidth := 2;
end;

procedure TFrmCadCliPafEcf.panelF1MouseLeave(Sender: TObject);
begin
  panelF1.BevelOuter := bvNone;
end;

procedure TFrmCadCliPafEcf.panelF2MouseEnter(Sender: TObject);
begin
  panelF2.BevelOuter := bvRaised;
  panelF2.BevelWidth := 2;
end;

procedure TFrmCadCliPafEcf.panelF2MouseLeave(Sender: TObject);
begin
  panelF2.BevelOuter := bvNone;
end;

procedure TFrmCadCliPafEcf.panelF3MouseEnter(Sender: TObject);
begin
  panelF3.BevelOuter := bvRaised;
  panelF3.BevelWidth := 2;
end;

procedure TFrmCadCliPafEcf.panelF3MouseLeave(Sender: TObject);
begin
  panelF3.BevelOuter := bvNone;
end;

procedure TFrmCadCliPafEcf.Confirma;
begin
  ModalResult := mrOK;
  Exit;
end;

procedure TFrmCadCliPafEcf.Fechar;
begin
  EdtNmRz.Text    := '';
  EdtCpfCnpj.Text := '';
  EdtEndereco.Text:= '';
  ModalResult := mrCancel;
  Exit;
end;

procedure TFrmCadCliPafEcf.FormCreate(Sender: TObject);
begin

end;

end.

