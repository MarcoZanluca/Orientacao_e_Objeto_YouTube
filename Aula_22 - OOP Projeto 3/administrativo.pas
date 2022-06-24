unit administrativo;

interface

uses
  pessoa;

type
  TAdmin = class(TPessoa)
  private
    FBonus: Currency;
    procedure SetBonus(const Value: Currency);
  published
  public
    property Bonus: Currency read FBonus write SetBonus;
    function calcularSalario: Currency; override;
  end;

implementation

{ TAdmin }

function TAdmin.calcularSalario: Currency;
begin
 Result := Salario + Bonus;
end;

procedure TAdmin.SetBonus(const Value: Currency);
begin
  FBonus := Value;
end;

end.
