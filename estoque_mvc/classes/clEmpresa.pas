unit clEmpresa;

interface

uses clPessoaJ, clEndereco;

type
  TEmpresa = class(TPessoaJ)
  private
    // m�todos privados
    function getCodigo: String;
    procedure setCodigo(const Value: String);

  protected
    // declara��o de atributos
    _codigo: String;
    
  public
    // m�todo contrutor definido por n�s
    constructor Create;

    // declara��o das propriedades da classe, encapsulamento de atributos
    property Codigo: String read getCodigo write setCodigo;

    // m�todos p�blicos
    function Validar(): Boolean;

  end;

implementation

uses SysUtils, clPessoa, clUtil, Math, Dialogs;

{ TEmpresa }

constructor TEmpresa.Create;
begin
  _endereco := TEndereco.Create;
end;

function TEmpresa.getCodigo: String;
begin
  Result := _codigo;
end;

procedure TEmpresa.setCodigo(const Value: String);
begin
  _codigo := Trim(Value);
end;

function TEmpresa.Validar: Boolean;
begin
  // Na valida��o de dados podemos colocar qualquer atributo para ser validado
  // codigo abaixo deve ser customizado por cada leitor!

  Result := True;
end;

end.
