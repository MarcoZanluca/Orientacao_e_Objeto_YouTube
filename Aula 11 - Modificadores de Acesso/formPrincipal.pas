unit formPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pessoa;

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
  MODIFIACODRES DE ACESSO:
  Private
  Public
  Protected
  Published
  Strict Private
  Strict Protected
}

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  lPessoa: TPessoa;
  lAmigo: TClienteAmigo;
begin
  lPessoa := TPessoa.Create;
  lAmigo := TClienteAmigo.Create;
  try
    lAmigo.Nome := 'Marco';
    lAmigo.SobreNome := 'Zanluca';

    ShowMessage(lAmigo.NomeCompleto);
  finally
    lPessoa.Free;
  end;
end;

end.
