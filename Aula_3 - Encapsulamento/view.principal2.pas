unit view.principal2;

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
  , contabancaria;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
   lConta, lConta2: TContaBancaria;
   lsSaldoTexto, lsSaldoTexto2: String;
begin
  lConta := TContaBancaria.Create;
  lConta2 := TContaBancaria.Create;
  try
    lConta.Nome := 'Danilo';
    lConta.Depositar(50);

    lConta2.Nome := 'Samuel';
    lConta2.Depositar(150);
    lConta2.Sacar(15);

    Memo1.Lines.Add(lConta.Nome);
    lsSaldoTexto := FloatToStr(lConta.Saldo);
    Memo1.Lines.Add(lsSaldoTexto);

    Memo1.Lines.Add(lConta2.Nome);
    lsSaldoTexto2 := FloatToStr(lConta2.Saldo);
    Memo1.Lines.Add(lsSaldoTexto2);
  finally
    //lConta.DiposeOf;
  end;

end;

end.
