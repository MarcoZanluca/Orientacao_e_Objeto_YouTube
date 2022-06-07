program P_Try_Except_Finally;

uses
  Forms,
  U_Try_Except_Finally in 'U_Try_Except_Finally.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
