unit PdvBD;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  TProduto = class
    private
      vCodigo   : Integer;
      vCod_EAN  : String;
      vDescricao: String;
    public
      property Codigo   : Integer read vCodigo    write vCodigo;
      property Cod_EAN  : String  read vCod_EAN   write vCod_EAN;
      property Descricao: String  read vDescricao write vDescricao;
  end;

  TClienteVenda = class
    private
      vNome_RzScl: String;
      vCpf_Cnpj  : String;
      vIE        : String;
      vSuframa   : String;
      vEndereco  : String;
      vNumero    : String;
      vBairro    : String;
      vCEP       : String;
      vUF        : String;
      vMunicipio : String;
      vTelefone1 : String;
      vTelefone2 : String;
      vCelular   : String;
      vEmail     : String;
      vTipoPessoa: Char;  //F-Fisica | J-Juridica
      vPais      : String;
    public
      property Nome_RzSocial : String  read  vNome_RzScl  write  vNome_RzScl;
      property Cpf_Cnpj      : String  read  vCpf_Cnpj    write  vCpf_Cnpj;
      property IE            : String  read  vIE          write  vIE;
      property Suframa       : String  read  vSuframa     write  vSuframa;
      property Endereco      : String  read  vEndereco    write  vEndereco;
      property Numero        : String  read  vNumero      write  vNumero;
      property Bairro        : String  read  vBairro      write  vBairro;
      property CEP           : String  read  vCEP         write  vCEP;
      property UF            : String  read  vUF          write  vUF;
      property Municipio     : String  read  vMunicipio   write  vMunicipio;
      property Telefone1     : String  read  vTelefone1   write  vTelefone1;
      property Telefone2     : String  read  vTelefone2   write  vTelefone2;
      property Celular       : String  read  vCelular     write  vCelular;
      property Email         : String  read  vEmail       write  vEmail;
      property TipoPessoa    : Char    read  vTipoPessoa  write  vTipoPessoa;
      property Pais          : String  read  vPais        write  vPais;
  end;


implementation

end.

