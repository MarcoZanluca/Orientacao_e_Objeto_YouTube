unit formPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Aula1, StdCtrls ;

type
  TForm1 = class(TForm)
    Aula1: TButton;
    procedure Aula1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Aula1Click(Sender: TObject);
var aula1: TAula1;
begin
  aula1 := TAula1.Create(nil);
  try
    aula1.ShowModal;
  finally
    FreeAndNil(aula1);
  end;
end;

end.
