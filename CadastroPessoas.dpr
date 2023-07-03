program CadastroPessoas;

uses
  Vcl.Forms,
  Cadastro in 'Cadastro.pas' {Inicio},
  uFormat in 'uFormat.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TInicio, Inicio);
  Application.Run;
end.
