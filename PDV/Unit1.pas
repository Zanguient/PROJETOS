unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons, Pdv, PdvBD;

type

  { TForm1 }

  TForm1 = class(TForm)
    bAtivar: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ComboBox1: TComboBox;
    procedure bAtivarClick(Sender: TObject);

    procedure Ativcar1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Desativar1Click(Sender: TObject);

    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
    procedure VendeItem;
    procedure FechaVenda;
  public
    { public declarations }
  end;

var
  Form1   : TForm1;
  PPDV    : TPDV;
  PProduto: TProduto;

implementation

uses DmPDV;

{$R *.lfm}

{ TForm1 }

procedure TForm1.bAtivarClick(Sender: TObject);
begin

  if bAtivar.Caption = 'Ativar' then
     Ativcar1Click( Sender )
  else
     Desativar1Click( Sender );

end;

procedure TForm1.Ativcar1Click(Sender: TObject);
begin
  try
    Self.Enabled := False;

    PPDV.Ativar ;

    bAtivar.Caption := 'Desativar' ;

  finally
     Self.Enabled := True;
     ComboBox1.ItemIndex   := Integer(PPDV.TipoVenda) ;
  end ;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  PPDV.AbreVenda;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  VendeItem;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  FechaVenda;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  PPDV.MenuFiscal;
end;

procedure TForm1.Desativar1Click(Sender: TObject);
begin
  PPDV.Desativar ;
  bAtivar.Caption := 'Ativar' ;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  PPDV.MenuOpcoes;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  try
     PPDV.TipoVenda := TPDVTipoVenda( ComboBox1.ItemIndex ) ;
  except
     ComboBox1.ItemIndex := Integer( PPDV.TipoVenda ) ;
     raise ;
  end ;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  PPDV := TPDV.Create(PPDV);
end;

procedure TForm1.VendeItem;
begin

  try
    PPDV.AbreVenda;
    PProduto := TProduto.Create;
    PProduto := PDVDm.ConsultaProduto('');
    PPDV.VendeItem(PProduto);
  finally
    PProduto.Destroy;
  end;

end;

procedure TForm1.FechaVenda;
begin
  PPDV.FechaVenda;
end;

end.

