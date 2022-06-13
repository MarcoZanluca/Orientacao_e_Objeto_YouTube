unit utils;

interface

uses
  funcoesdata;

type
  TUtils = class
   function Funcoes : TFuncoesData;
  end;

implementation

{ TUtils }

function TUtils.Funcoes: TFuncoesData;
begin
  Result := TFuncoesData.Create;
end;

end.
