program P_Aula3;

uses
  Forms,
  contabancaria in 'contabancaria.pas',
  view.principal2 in 'view.principal2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
