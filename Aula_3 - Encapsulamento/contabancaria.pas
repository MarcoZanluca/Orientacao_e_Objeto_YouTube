unit contabancaria;

interface

type
  TContaBancaria = class
   private
     FNome: String;
     FSaldo: Double;
     function GetSaldo: Double;
   public
     property Nome: String read FNome write FNome;
     property Saldo: Double read GetSaldo;
     procedure Depositar(Value: Double);
     procedure Sacar(Value: Double);
    end;

implementation

{ TContaBancaria }

procedure TContaBancaria.Depositar(Value: Double);
begin
  FSaldo := FSaldo + Value + (Value * 0.10);
end;

function TContaBancaria.GetSaldo: Double;
begin
  Result := FSaldo;
end;
procedure TContaBancaria.Sacar(Value: Double);
begin
  FSaldo := FSaldo - Value;
end;

end.
