unit Model.Materia;

interface
    uses Model.Entidade;

    type
        TMateria = class (TEntidade)
            private
                // Atributos
                Fnome: String;
            public
                // Propriedades
                property nome: String read Fnome write Fnome;
        end;

implementation

end.
