unit cliente;

interface

uses
  pessoa
  , endereco
  , SysUtils;

type
  TCliente = class(Tpessoa)
  private
    FCPF: String;
    FEndereco: TEndereco;
  public
    constructor Create; overload;
    constructor Create(Value: String); overload;
    constructor Create(Value: TPessoa); overload;
    destructor Destroy; override;
    property CPF: String read FCPF write FCPF;
    property Endereco: TEndereco read FEndereco write FEndereco;
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
  FEndereco := TEndereco.Create;
end;

constructor TCliente.Create(Value: String);
begin
  Nome := Value;
end;

constructor TCliente.Create(Value: TPessoa);
begin
  Nome := Value.Nome;
  DataNascimento := Value.DataNascimento;
end;

destructor TCliente.Destroy;
begin
  FEndereco.Free;
end;

function TCliente.RetornaDados: String;
begin
  inherited;
  Result := Dados + ', CPF: ' + FCPF;
end;

end.
