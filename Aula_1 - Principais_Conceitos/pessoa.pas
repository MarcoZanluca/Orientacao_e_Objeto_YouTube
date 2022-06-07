unit pessoa;

interface

type
  TPessoa = class
   private
     FCPF : String;
   public
     nome : String;
     property CPF : String read FCPF write FCPF;
  end;

implementation

end.
