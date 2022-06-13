unit view.principal4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, funcoesdata, utils, pessoa;

type
  TForm1 = class(TForm)
    Button1: TButton;
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
begin
  pessoa := TPessoa.Create;
  try
    pessoa.Nome := 'Thiago';
    ShowMessage( FormatDateTime('YYYY/MM/DD', StrToDateTime('15/10/1992')) );
    pessoa.DataNascimento := '15/10/1992' ;
    ShowMessage (pessoa.Nome + ' - ' + IntToStr(pessoa.Idade.Funcoes.CalculaIdade(pessoa.DataNascimento)));
  finally

  end;
end;

end.
