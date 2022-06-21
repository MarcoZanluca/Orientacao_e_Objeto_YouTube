unit formPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cliente, pessoa, usuario;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
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
  pessoa: TPessoa;
  cliente: TCliente;
  usuario: TUsuario;
begin
  Memo1.Clear;
  Memo2.Clear;
  pessoa := TPessoa.Create;
  cliente := TCliente.Create;
  usuario := TUsuario.Create;
  try
    pessoa.Nome := 'Marco';
    pessoa.DataNascimento := '10/07/2005';

    cliente.Nome := 'João';
    cliente.CPF := '123.456.789-10';
    cliente.DataNascimento := '20/01/1970';

    Memo1.Lines.Add('============Pessoa============');
    Memo1.Lines.Add('Nome : ' + pessoa.Nome);
    Memo1.Lines.Add('Data Nascimento : ' + pessoa.DataNascimento);
    Memo1.Lines.Add('Idade : ' + IntToStr(pessoa.Idade));
    Memo1.Lines.Add('============================');
    Memo1.Lines.Add('');
    Memo1.Lines.Add('============Cliente============');
    Memo1.Lines.Add('Nome : ' + cliente.Nome);
    Memo1.Lines.Add('Data Nascimento : ' + cliente.DataNascimento);
    Memo1.Lines.Add('Idade : ' + IntToStr(cliente.Idade));
    Memo1.Lines.Add('CPF : ' + (cliente.CPF));
    Memo1.Lines.Add('Contrato: ' + cliente.Contrato);
    Memo1.Lines.Add('============================');

    Memo1.Lines.Add('Usuário: ' + usuario.Contrato);


//    Memo2.Lines.Add('============Pessoa============');
//    Memo2.Lines.Add(pessoa.RetornaDados);
//    Memo2.Lines.Add('============================');
//    Memo1.Lines.Add('');
    Memo2.Lines.Add('============Cliente============');
    Memo2.Lines.Add(cliente.RetornaDados);
    Memo2.Lines.Add('============================');
  finally
    pessoa.Free;
    cliente.Free;
  end;
end;
end.
