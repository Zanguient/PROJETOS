unit PdvClass;

{$MODE Delphi}

interface

uses
  Classes, SysUtils, PdvConst, PdvBD;

type

  { TPDVClass }

  TPDVClass = class
    private
      procedure SetAtivo(AValue: Boolean);
    protected
      fpOwner  : TComponent ;   { Componente PDV }
      fpAtivo  : Boolean ;
      fpEstado : TPDVEstado;
      fpCliente: TClienteVenda ;
      fpVendaAberta: Boolean;
    public
      constructor create( AOwner : TComponent ) ;
      Destructor Destroy  ; override ;

      Property Ativo  : Boolean read fpAtivo write SetAtivo ;
      procedure Ativar ; virtual ;
      procedure Desativar ; virtual ;

      procedure AbreVenda; virtual ;
      procedure VendeItem(PProduto: TProduto); virtual;
      procedure FechaVenda; virtual;
      procedure MenuOpcoes; virtual;
      procedure MenuFiscal; virtual;
  end;


implementation
uses Pdv;

{ TPDVClass }

procedure TPDVClass.SetAtivo(AValue: Boolean);
begin
  if AValue then
    Ativar
  else
    Desativar ;
end;

constructor TPDVClass.create(AOwner: TComponent);
begin
 //{ TODO : Verificar EACBECFERRO }
 // if not (AOwner is TPDV) then
 //   raise EACBrECFErro.create( ACBrStr(cACBrECFClassCreateException) );

  fpOwner  := AOwner ;
  { Criando ponteiro interno para as Propriedade Cliente de PDV,
    para permitir as Classes Filhas o acesso a essas propriedades do Componente}
  fpCliente     := (AOwner as TPDV).Cliente ;
  fpVendaAberta := (AOwner as TPDV).VendaAberta;

  { Variaveis Protected fp___ acessiveis pelas Classes filhas }
  fpAtivo  := false ;
  fpEstado := estNaoInicializada ;

end;

destructor TPDVClass.Destroy;
begin
  Desativar;
  fpCliente     := nil; { Apenas remove referencia (ponteiros internos) }
  fpVendaAberta := False;

  inherited Destroy ;
end;

procedure TPDVClass.Ativar;
begin
  if fpAtivo then Exit ;

  fpEstado := estDesconhecido ;
  fpAtivo  := true ;
end;

procedure TPDVClass.Desativar;
begin

  fpEstado := estNaoInicializada ;

  if not fpAtivo then Exit ;

  fpAtivo := false ;
end;

procedure TPDVClass.AbreVenda;
begin

end;

procedure TPDVClass.VendeItem(PProduto: TProduto);
begin

end;

procedure TPDVClass.FechaVenda;
begin

end;

procedure TPDVClass.MenuOpcoes;
begin

end;

procedure TPDVClass.MenuFiscal;
begin

end;

end.

