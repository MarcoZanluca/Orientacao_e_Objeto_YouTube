program P_Aula2;

uses
  Forms,
  view.principal in '..\Aula_3 - Encapsulamento\view.principal.pas' {Form1},
  pessoa in '..\Aula_1 - Principais_Conceitos\pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
