unit PdvConst;

{$MODE Delphi}

interface

uses
  Classes, SysUtils;

type

  TPDVEstado = (estNaoInicializada, { Porta Serial ainda nao foi aberta }
                estDesconhecido, {Porta aberta, mas estado ainda nao definido}
                estLivre, { Impressora Livre, sem nenhum cupom aberto,
                              pronta para nova venda, Reducao Z e Leitura X ok,
                              pode ou nao já ter ocorrido 1ª venda no dia...}
                estVenda, { Cupom de Venda Aberto com ou sem venda do 1º Item}
                estPagamento, { Iniciado Fechamento de Cupom com Formas Pagto
                                  pode ou nao ter efetuado o 1º pagto. Nao pode
                                  mais vender itens, ou alterar Subtotal}
                estRelatorio, { Imprimindo Cupom Fiscal Vinculado ou
                                  Relatorio Gerencial }
                estBloqueada, { Reduçao Z já emitida, bloqueada até as 00:00 }
                estRequerZ, {Reducao Z dia anterior nao emitida. Emita agora }
                estRequerX,  {Esta impressora requer Leitura X todo inicio de
                               dia. Imprima uma Leitura X para poder vender}
                estNaoFiscal  { Comprovante Nao Fiscal Aberto }
                  ) ;

implementation

end.

