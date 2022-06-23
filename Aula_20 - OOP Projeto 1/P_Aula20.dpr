program P_Aula20;

uses
  Forms,
  formPrincipal in 'formPrincipal.pas' {Form1},
  pessoa in 'pessoa.pas',
  vendedor in 'vendedor.pas',
  administrativo in 'administrativo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
