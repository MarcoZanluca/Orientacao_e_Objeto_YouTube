unit view.principal;

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
    pessoa.Id := 1;
    pessoa.Nome := 'Marco';
    pessoa. Tipo := 'F';
    pessoa.Email := 'marco@gmail.com';
    ShowMessage(IntToStr(pessoa.Id) + ' - ' + pessoa.nome + ' - ' + pessoa.Tipo + ' - ' + pessoa.Email);
  finally
    pessoa.Free;
  end;
end;

end.
