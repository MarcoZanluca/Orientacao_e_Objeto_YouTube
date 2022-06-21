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
    constructor Create;
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

constructor TCliente.Create;
begin
  Nome := 'Alessandro';
end;

function TCliente.RetornaDados: String;
begin
  inherited;
  Result := Dados + ', CPF: ' + FCPF;
end;

end.
