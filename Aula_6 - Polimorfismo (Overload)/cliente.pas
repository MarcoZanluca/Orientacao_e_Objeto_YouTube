unit cliente;

interface

uses
  SysUtils
  , pessoa;

type
  TCliente = class (TPessoa)
   private
     FValorCredito: Currency;
   public
     property ValorCredito: Currency read FValorCredito;
     function Receber(Value: Integer) : String; overload;
     function Receber(Value: Currency) : String; overload;
  end;

implementation

{ TCliente }

function TCliente.Receber(Value: Integer): String;
begin
  Result := IntToStr(Value)
end;

function TCliente.Receber(Value: Currency): String;
begin
  FValorCredito := Value + (Value * 0.10);
  Result := CurrToStR(Value);
end;

end.
