unit MnFisPafEcf;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, maskedit;

type

  { TFrmMnFisPafEcf }

  TFrmMnFisPafEcf = class(TForm)
    labelF1: TLabel;
    labelF2: TLabel;
    labelF3: TLabel;
    labelF4: TLabel;
    panelBotoes: TPanel;
    panelF1: TPanel;
    panelF2: TPanel;
    panelF3: TPanel;
    panelF4: TPanel;
    panPeriodo: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure Label1Click(Sender: TObject);
    procedure labelF3Click(Sender: TObject);
    procedure LblNmRzClick(Sender: TObject);
    procedure panelF1MouseEnter(Sender: TObject);
    procedure panelF1MouseLeave(Sender: TObject);
    procedure panelF2Click(Sender: TObject);
    procedure panelF2MouseEnter(Sender: TObject);
    procedure panelF2MouseLeave(Sender: TObject);
    procedure panelF3MouseEnter(Sender: TObject);
    procedure panelF3MouseLeave(Sender: TObject);
    procedure panelF4MouseEnter(Sender: TObject);
    procedure panelF4MouseLeave(Sender: TObject);
    procedure panPeriodoClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    POpcTec: String[2];
  end;

var
  FrmMnFisPafEcf: TFrmMnFisPafEcf;

implementation

{$R *.lfm}

{ TFrmMnFisPafEcf }

procedure TFrmMnFisPafEcf.FormCreate(Sender: TObject);
begin

end;

procedure TFrmMnFisPafEcf.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift <> [] then
    Exit;
  case Key of
    27: ModalResult := mrCancel;
  end;
end;

procedure TFrmMnFisPafEcf.FormKeyPress(Sender: TObject; var Key: char);
begin
  if not (Key in ['0'..'9']) then
    Abort;

  if Length(Trim(POpcTec)) = 2 then
    POpcTec := '';

  POpcTec := POpcTec + Key;

  if Length(Trim(POpcTec)) = 2 then
    if Pos(POpcTec,'01;02;03;04;05;06;07;08;09;10;11;12;13;14') <> 0 then
     { if ((POpcFis='01') and Label01.Enabled) or ((POpcFis='02') and Label02.Enabled) or
         ((POpcFis='03') and Label03.Enabled) or ((POpcFis='04') and Label04.Enabled) or
         ((POpcFis='05') and Label05.Enabled) or ((POpcFis='06') and Label06.Enabled) or
         ((POpcFis='07') and Label07.Enabled) or ((POpcFis='08') and Label08.Enabled) or
         ((POpcFis='09') and Label09.Enabled) or ((POpcFis='10') and Label10.Enabled) or
         ((POpcFis='11') and Label11.Enabled) or ((POpcFis='12') and Label12.Enabled) or
         ((POpcFis='13') and Label13.Enabled) or ((POpcFis='14') and Label14.Enabled) then   }
        ModalResult := mrOk
      {else
        begin
          MessageBox(Handle,'Opção não disponível','Erro',MB_ICONERROR+MB_OK);
          POpcFis := '';
        end
    else
      begin
        MessageBox(Handle,'Opção inválida','Erro',MB_ICONERROR+MB_OK);
        POpcFis := '';
      end}
end;

procedure TFrmMnFisPafEcf.Label1Click(Sender: TObject);
begin

end;

procedure TFrmMnFisPafEcf.labelF3Click(Sender: TObject);
begin

end;

procedure TFrmMnFisPafEcf.LblNmRzClick(Sender: TObject);
begin

end;

procedure TFrmMnFisPafEcf.panelF1MouseEnter(Sender: TObject);
begin
  panelF1.BevelOuter := bvRaised;
  panelF1.BevelWidth := 2;
end;

procedure TFrmMnFisPafEcf.panelF1MouseLeave(Sender: TObject);
begin
  panelF1.BevelOuter := bvNone;
end;

procedure TFrmMnFisPafEcf.panelF2Click(Sender: TObject);
begin

end;

procedure TFrmMnFisPafEcf.panelF2MouseEnter(Sender: TObject);
begin
  panelF2.BevelOuter := bvRaised;
  panelF2.BevelWidth := 2;
end;

procedure TFrmMnFisPafEcf.panelF2MouseLeave(Sender: TObject);
begin
  panelF2.BevelOuter := bvNone;
end;

procedure TFrmMnFisPafEcf.panelF3MouseEnter(Sender: TObject);
begin
  panelF3.BevelOuter := bvRaised;
  panelF3.BevelWidth := 2;
end;

procedure TFrmMnFisPafEcf.panelF3MouseLeave(Sender: TObject);
begin
  panelF3.BevelOuter := bvNone;
end;

procedure TFrmMnFisPafEcf.panelF4MouseEnter(Sender: TObject);
begin
  panelF4.BevelOuter := bvRaised;
  panelF4.BevelWidth := 2;
end;

procedure TFrmMnFisPafEcf.panelF4MouseLeave(Sender: TObject);
begin
  panelF4.BevelOuter := bvNone;
end;

procedure TFrmMnFisPafEcf.panPeriodoClick(Sender: TObject);
begin

end;

end.

