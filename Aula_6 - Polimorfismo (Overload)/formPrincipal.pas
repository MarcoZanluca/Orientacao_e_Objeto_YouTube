unit formPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cliente, pessoa, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  pessoa: TPessoa;
  cliente: TCliente;

begin
  Memo1.Clear;
  Pessoa := TPessoa.Create;
  Cliente := TCliente.Create;
  try
    pessoa.Nome := 'Marco';
    pessoa.DataNascimento := '10/07/2005';
    pessoa.Email := 'marcoazanluca@gmail.com';

    Memo1.Lines.Add('Nome : ' + pessoa.Nome);
    Memo1.Lines.Add('Data de Nascimento : ' + pessoa.DataNascimento);
    Memo1.Lines.Add('Email : ' + pessoa.Email);
    Memo1.Lines.Add('Idade : ' + IntToStr(pessoa.Idade));
    Memo1.Lines.Add('Receber int : ' + cliente.Receber(1));
    Memo1.Lines.Add('Receber : ' + cliente.Receber(10.50));
    Memo1.Lines.Add('ValorCredito : ' + CurrToStr(cliente.ValorCredito));
  finally
    pessoa.Free;
    cliente.Free;
  end;
end;

end.
