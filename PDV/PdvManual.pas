unit PdvManual;

{$MODE Delphi}

interface

uses
  Classes, SysUtils, PdvClass;

type

  { TPDVManual }

  TPDVManual = class( TPDVClass )
    private
    public
      Constructor create( AOwner : TComponent  )  ;
      Destructor Destroy  ; override ;

      procedure Ativar ; override ;
      procedure Desativar ; override ;

      procedure AbreVenda; override;
      procedure MenuOpcoes; override;
  end;


implementation

{ TPDVManual }

constructor TPDVManual.create(AOwner: TComponent);
begin
  inherited create( AOwner ) ;
end;

destructor TPDVManual.Destroy;
begin
  inherited Destroy;
end;

procedure TPDVManual.Ativar;
begin
  inherited Ativar;
end;

procedure TPDVManual.Desativar;
begin
  inherited Desativar;
end;

procedure TPDVManual.AbreVenda;
begin

end;

procedure TPDVManual.MenuOpcoes;
begin

end;

end.

