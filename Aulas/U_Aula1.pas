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
  TAula1 = class(TForm)
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
  Aula1: TAula1;

implementation

{$R *.dfm}

procedure TAula1.Button1Click(Sender: TObject);
var
   pessoa: TPessoa;
begin
  pessoa:= TPessoa.Create;
  try
    pessoa.nome := 'Marco';
    ShowMessage(pessoa.nome);
  finally
    pessoa.Free;
  end;
end;

end.
