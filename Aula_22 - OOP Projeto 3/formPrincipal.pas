unit formPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pessoa, administrativo, vendedor;

type
  TEnumFuncao = (tpAdmin, tpVendedor, tpFuncionario);

type
  TForm1 = class(TForm)
    Label1: TLabel;
    cbFuncao: TComboBox;
    Label2: TLabel;
    edtNome: TEdit;
    Label3: TLabel;
    edtSalario: TEdit;
    Label4: TLabel;
    edtBonus: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure fnc_IncluirAdmin;
    procedure fnc_IncluirVendedor;
    procedure fnc_IncluirFuncionario;
    { Private declarations }
  public
    { Public declarations }
    Funcionario: Array[1..100] of TPessoa;
    QtdFunc: Integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  try
    case TEnumFuncao(cbFuncao.ItemIndex) of
      tpAdmin:
        begin
          fnc_IncluirAdmin;
        end;
      tpVendedor:
        begin
          fnc_IncluirVendedor;
        end;
      tpFuncionario:
        begin
          fnc_IncluirFuncionario;
        end;
    end;
    Inc(QtdFunc);
  except
    raise Exception.Create('Erro ao Cadastrar Funcionário');
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  QtdFunc := 0;

end;

procedure TForm1.fnc_IncluirAdmin;
begin
  Funcionario[QtdFunc] := TAdmin.Create;
  TAdmin(Funcionario[QtdFunc]).Bonus := StrToCurr(edtBonus.Text);
  TAdmin(Funcionario[QtdFunc]).Nome := edtNome.Text;
  TAdmin(Funcionario[QtdFunc]).Salario := StrToCurr(edtSalario.Text);
end;

procedure TForm1.fnc_IncluirVendedor;
begin
  Funcionario[QtdFunc] := TAdmin.Create;
  TVendedor(Funcionario[QtdFunc]).Comissao := StrToCurr(edtBonus.Text);
  TVendedor(Funcionario[QtdFunc]).Nome := edtNome.Text;
  TVendedor(Funcionario[QtdFunc]).Salario := StrToCurr(edtSalario.Text);
end;

procedure TForm1.fnc_IncluirFuncionario;
begin
  Funcionario[QtdFunc] := TPessoa.Create;
  Funcionario[QtdFunc].Nome := edtNome.Text;
  Funcionario[QtdFunc].Salario := StrToCurr(edtSalario.Text);
end;

end.
