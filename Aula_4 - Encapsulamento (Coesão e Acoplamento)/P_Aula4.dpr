program P_Aula4;

uses
  Forms,
  view.principal4 in 'view.principal4.pas' {Form1},
  funcoesdata in 'funcoesdata.pas',
  utils in 'utils.pas',
  pessoa in 'pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
