unit cliente;

interface

uses
  pessoa
  , SysUtils;

type
  TCliente = class(Tpessoa)
  private
    FCPF: String;
  public
    property CPF: String read FCPF write FCPF;
    function RetornaDados: String; override;
    function Contrato: String; override;
end;

implementation

{ TCliente }

function TCliente.Contrato: String;
begin
  Result := 'TCliente Contrato';
end;

function TCliente.RetornaDados: String;
begin
  inherited;
  Result := 'Nome: ' + Self.Nome +
            ', Data Nascimento: ' + Self.DataNascimento +
            ', Idade: ' + IntToStr(Self.Idade) +
            ', CPF: ' + FCPF;
end;

end.
