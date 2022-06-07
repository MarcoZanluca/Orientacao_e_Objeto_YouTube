unit U_Try_Except_Finally;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
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
begin
  ShowMessage(FloatToStr(5 / 2));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Try
    ShowMessage(FloatToStr(5 / 2));
    raise Exception.Create('xxxxxx');
    ShowMessage(FloatToStr(5 / 3));
  Except
    ShowMessage('Deu caca')
  End;
end;

procedure TForm1.Button3Click(Sender: TObject);
var ld : double;
begin
  Try
    ld := 5 / 2;
    ShowMessage(FloatToStr(ld));
    raise Exception.Create('xxxxxx');
  Except
    On E:Exception Do
       ShowMessage('Deu caca '+E.Message)
  End;
end;

procedure TForm1.Button4Click(Sender: TObject);
var ld : double;
begin
  Try
    ld := 5 / 2;
    ShowMessage(FloatToStr(ld));
  Finally
    ShowMessage('Sempre vou passar aqui, independente do que acontecer....')
  End;
end;

procedure TForm1.Button5Click(Sender: TObject);
var ld : double;
begin
  Try
    ld := 5 / 0;
    ShowMessage(FloatToStr(ld));
  Finally
    ShowMessage('Sempre vou passar aqui, independente do que acontecer....')
  End;
end;

procedure TForm1.Button6Click(Sender: TObject);
var ld : double;
begin
  Try
    Try
      ld := 5 / 2;
      ShowMessage(FloatToStr(ld));
    Except
       On E:Exception Do
        ShowMessage('Deu caca '+E.Message)
    End;
  Finally
    ShowMessage('Sempre vou passar aqui, independente do que acontecer....')
  End;
end;

procedure TForm1.Button7Click(Sender: TObject);
var ld : double;
begin
  Try
    Try
       ld := 5 / 0;
       ShowMessage(FloatToStr(ld));
    Except
       On E:Exception Do
          ShowMessage('Deu caca '+E.Message)
    End;
  Finally
    ShowMessage('Sempre vou passar aqui, independente do que acontecer....')
  End;
end;

end.
