program P_Aula1;

uses
  Forms,
  U_Aula1 in 'U_Aula1.pas' {Form1},
  pessoa in 'pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
