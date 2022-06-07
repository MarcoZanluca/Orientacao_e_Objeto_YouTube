unit U_Aula1;

interface

uses
  Windows
  , Messages
  , SysUtils
  , Variants
  , Classes
  , Graphics
  , Controls
  , Forms
  , Dialogs
  , StdCtrls
  , pessoa;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

{
- Abstração
- Encapsulamento
- Herança
- Polismorfismo
}

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
   pessoa: TPessoa;
begin
  pessoa:= TPessoa.Create;
  try
    pessoa.nome := 'Marco';
    pessoa.CPF := '123.456.789-10';
    ShowMessage(pessoa.nome);
    ShowMessage(pessoa.CPF);
    //pessoa.cpf := 'ddddd';

  finally
    pessoa.Free;
  end;
end;

end.
