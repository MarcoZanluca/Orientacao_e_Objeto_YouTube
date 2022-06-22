program P_Aula11;

uses
  Forms,
  formPrincipal in 'formPrincipal.pas' {Form1},
  pessoa in 'pessoa.pas',
  cliente in 'cliente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
