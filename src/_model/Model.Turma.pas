unit Model.Turma;

interface
    uses Model.Entidade;

    type
        TTurma = class (TEntidade)
            private
                // Atributos
                Fserie: Byte;
                Fcomplemento: String;
            public
                // Propriedades
                property serie: Byte read Fserie write Fserie;
                property complemento: String read Fcomplemento write Fcomplemento;
        end;

implementation

end.
