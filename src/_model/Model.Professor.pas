unit Model.Professor;

interface
    uses Model.Entidade;

    type
        TProfessor = class (TEntidade)
            private
                // Atributos
                Fnome: String;
            public
                // Propriedades
                property nome: String read Fnome write Fnome;
        end;

implementation

end.
