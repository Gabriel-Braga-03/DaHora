program Dahora;

uses
  Vcl.Forms,
  View.Inicial in '_view\View.Inicial.pas' {Inicial},
  View.Frames.LinkPrime in '_view\_frames\View.Frames.LinkPrime.pas' {LinkPrime: TFrame},
  View.Modals.CriarArquivo in '_view\_modals\View.Modals.CriarArquivo.pas' {CriarArquivo},
  View.Utils in '_view\View.Utils.pas',
  Controller.Inicial in '_controller\Controller.Inicial.pas',
  Model.FileManager in '_model\Model.FileManager.pas',
  Model.Horario in '_model\Model.Horario.pas',
  Model.Turma in '_model\Model.Turma.pas',
  Model.Entidade in '_model\Model.Entidade.pas',
  Model.Materia in '_model\Model.Materia.pas',
  Model.Professor in '_model\Model.Professor.pas',
  Model.Lotacao in '_model\Model.Lotacao.pas',
  Model.Aula in '_model\Model.Aula.pas';

{$R *.res}

begin
    Application.Initialize();
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(TInicial, Inicial);
  Application.Run();
end.
