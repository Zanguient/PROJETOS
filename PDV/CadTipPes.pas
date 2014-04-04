unit CadTipPes;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, maskedit, ACBrECF;

type

  { TFrmCadTipPes }

  TFrmCadTipPes = class(TForm)
    ComboBox1: TComboBox;
    imageF1: TImage;
    imageF2: TImage;
    Label4: TLabel;
    labelF1: TLabel;
    labelF2: TLabel;
    panelBotoes: TPanel;
    panelF1: TPanel;
    panelF2: TPanel;
    panPeriodo: TPanel;
    procedure labelF1Click(Sender: TObject);
    procedure panelBotoesClick(Sender: TObject);
    procedure panelF1Click(Sender: TObject);
    procedure panelF1MouseEnter(Sender: TObject);
    procedure panelF1MouseLeave(Sender: TObject);
    procedure panelF2Click(Sender: TObject);
    procedure panelF2MouseEnter(Sender: TObject);
    procedure panelF2MouseLeave(Sender: TObject);
  private
    { private declarations }
    procedure Confirma;
  public
    { public declarations }
  end;

var
  FrmCadTipPes: TFrmCadTipPes;

implementation

{$R *.lfm}

{ TFrmCadTipPes }

procedure TFrmCadTipPes.panelF2Click(Sender: TObject);
begin

end;

procedure TFrmCadTipPes.panelF2MouseEnter(Sender: TObject);
begin
  panelF2.BevelOuter := bvRaised;
  panelF2.BevelWidth := 2;
end;

procedure TFrmCadTipPes.panelF2MouseLeave(Sender: TObject);
begin
  panelF2.BevelOuter := bvNone;
end;

procedure TFrmCadTipPes.Confirma;
begin
  ModalResult := mrOK;
  Exit;
end;

procedure TFrmCadTipPes.panelF1Click(Sender: TObject);
begin
  Confirma;
end;

procedure TFrmCadTipPes.panelF1MouseEnter(Sender: TObject);
begin
  panelF1.BevelOuter := bvRaised;
  panelF1.BevelWidth := 2;
end;

procedure TFrmCadTipPes.panelF1MouseLeave(Sender: TObject);
begin
  panelF1.BevelOuter := bvNone;
end;

procedure TFrmCadTipPes.labelF1Click(Sender: TObject);
begin

end;

procedure TFrmCadTipPes.panelBotoesClick(Sender: TObject);
begin

end;

end.

