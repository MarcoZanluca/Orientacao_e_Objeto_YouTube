unit formPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cliente, pessoa;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Memo1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
lCliente1, lCliente2, lCliente3: TCliente;
begin
  lCliente1 := TCliente.Create;
  lCliente2 := TCliente.Create;
  lCliente3 := TCliente.Create;
  try

  finally
    lCliente1.Free;
    lCliente2.Free;
    lCliente3.Free;
  end;
end;

end.
