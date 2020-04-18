unit Model.Entidade;

interface
    uses
        System.Json,
        REST.Json;

    type
        TEntidade = class abstract
            private
                // Atributos
                Fid: Word;
            public
                // Propriedades
                property id: Word read Fid write Fid;

                // M�todos Especiais
                function toJsonObject(): TJsonObject;
                function toJsonString(): String;
        end;

implementation
// TEntidade (Implementa��es)
    // Fun��o para Converter Objeto em JsonObject
    function TEntidade.toJsonObject(): TJsonObject;
    begin
        Result := TJson.ObjectToJsonObject(Self);
    end;

    // Fun��o para Converter Objeto em JsonObject
    function TEntidade.toJsonString(): String;
    begin
        Result := TJson.ObjectToJsonString(Self);
    end;

end.
