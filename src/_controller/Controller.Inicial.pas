unit Controller.Inicial;

interface
    // Rotinas de Controle
    procedure criarNovoArquivo(nome: String; aulas: Byte);

implementation
    uses 
        System.SysUtils,
        Controller.Principal,
        Model.Horario,
        Model.FileManager;

    // Implemeta��es
    procedure criarNovoArquivo(nome: String; aulas: Byte);
    var
        arq_nome: String;
    begin
        // Criando inst�ncia de Gerenciador de Arquivos
        Controller.Principal.fm := TFileManager.Create('_docs', true);

        // Criando _docs se n�o existir
        if not fm.existDir() then fm.createDir();
        
        // Gerando nome do Arquivo
        arq_nome := 'hor-'+ FormatDateTime('dd-mm-yyyy_hh-nn-ss', Now()) + '.json';

        // Criando o arquivo
        Controller.Principal.fm.setArqPath('./_docs/'+ arq_nome);
        Controller.Principal.fm.createArq();

        // Criando inst�ncia de objeto de Hor�rio JSON
        Controller.Principal.horario := THorario.Create();
        Controller.Principal.horario.nome := nome;
        Controller.Principal.horario.aulas_pd := aulas;

        // Salvando no arquivo
        Controller.Principal.fm.write(Controller.Principal.horario.saveWithJson());
    end;

end.
