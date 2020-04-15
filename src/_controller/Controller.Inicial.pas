unit Controller.Inicial;

interface
    uses Model.FileManager;

    // Vari�veis de Controle
    var
        fm: TFileManager;

    // Rotinas de Controle
    procedure criarNovoArquivo(nome: String; aulas: Byte);

implementation
    uses System.SysUtils;

    // Implemeta��es
    procedure criarNovoArquivo(nome: String; aulas: Byte);
    var
        lista : TArrayStrings;
        arq_nome: String;
    begin
        // Criando inst�ncia de Gerenciador de Arquivos
        fm := TFileManager.Create('_docs', true);

        // Criando _docs se n�o existir
        if not fm.existDir() then fm.createDir();

        // Listando arquivos da pasta
        lista := fm.find('*.json');

        // Gerando nome do novo arquivo
        if Length(lista) <> 0 then
        begin
            arq_nome := lista[High(lista)];

            // Incrementando n�mero do nome do arquivo
            arq_nome := 'hor-'+ IntToStr(StrToInt(arq_nome.Substring(4, arq_nome.Length - 9)) + 1) + '.json';
        end
        else
        begin
            arq_nome := 'hor-1000.json';
        end;

        // Criando o arquivo
        fm.setArqPath('./_docs/'+ arq_nome);
        fm.createArq();

        // Criando inst�ncia de objeto de Hor�rio JSON

    end;

end.