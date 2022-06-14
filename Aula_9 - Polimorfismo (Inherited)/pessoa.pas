unit pessoa;

interface

uses
  SysUtils;

type
  TPessoa = class
   private
    FDataNascimento: String;
    FNome: String;
   public
     property Nome: String read FNome write FNome;
     property DataNascimento: String read FDataNascimento write FDataNascimento;
     function Idade : Integer;
     function RetornaDados: String; virtual;
     function Contrato: String; virtual; abstract;
  end;

implementation

{ TPessoa }

function TPessoa.Idade: Integer;
begin
    Result := Trunc((now - StrToDate(FDataNascimento)) / 365.25);
end;

function TPessoa.RetornaDados: String;
begin
  Result := 'Nome: ' + FNome +
            ', Data Nascimento: ' + FDataNascimento +
            ', Idade: ' + IntToStr(Self.Idade);
end;

end.
