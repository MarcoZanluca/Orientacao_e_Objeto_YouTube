program P_Aula6;

uses
  Forms,
  formPrincipal in 'formPrincipal.pas' {Form1},
  cliente in 'cliente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
