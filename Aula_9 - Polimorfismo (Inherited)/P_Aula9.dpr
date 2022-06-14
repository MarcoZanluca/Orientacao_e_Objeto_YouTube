program P_Aula9;

uses
  Forms,
  formPrincipal in 'formPrincipal.pas' {Form1},
  pessoa in 'pessoa.pas',
  cliente in 'cliente.pas',
  usuario in 'usuario.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
