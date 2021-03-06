unit Model.Lotacao;

interface
    uses
        Model.Entidade;

    type
        TLotacao = class (TEntidade)
            private
                // Atributos
                Fch: Byte;
                Ftur_id: Word;
                Fprof_id: Word;
                Fmat_id: Word;
            public
                // Propriedades
                property ch: Byte read Fch write Fch;
                property tur_id: Word read Ftur_id write Ftur_id;
                property prof_id: Word read Fprof_id write Fprof_id;
                property mat_id: Word read Fmat_id write Fmat_id;
        end;

implementation

end.
