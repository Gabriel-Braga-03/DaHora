unit Model.Aula;

interface
    uses Model.Entidade;

    type
        TAula = class (Tentidade)
            private
                // Atributos
                Fordem: Byte;
                Fds: Byte;
                Flot_id: Word;
            public
                // Propriedades
                property ordem: Byte read Fordem write Fordem;
                property ds: Byte read Fds write Fds;
                property lot_id: Word read Flot_id write Flot_id;
        end;

implementation

end.
