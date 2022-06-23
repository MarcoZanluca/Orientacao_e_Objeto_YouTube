program P_Aula10;

uses
  Forms,
  formPrincipal in 'formPrincipal.pas' {Form1},
  endereco in '..\Aula 10 - Construtores e Destrutores\endereco.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
