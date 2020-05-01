unit Model.Horario;

interface
    uses
        Model.Turma,
        Model.Professor,
        Model.Materia,
        Model.Lotacao,
        Model.Aula,
        REST.Json;

    type
        // Tipos de Arrays
        TArrayOfTurma = array of TTurma;
        TArrayOfProfessor = array of TProfessor;
        TArrayOfMateria = array of TMateria;
        TArrayOfLotacao = array of TLotacao;
        TArrayOfAula = array of TAula;

        THorario = class
        private
            // Atributos
            Fnome: String;
            Faulas_pd: Byte;
            Fturmas: TArrayOfTurma;
            Fprofessores: TArrayOfProfessor;
            Fmaterias: TArrayOfMateria;
            Flotacoes: TArrayOfLotacao;
            Faulas: TArrayOfAula;
        public
            // Propriedades
            property nome: String read Fnome write Fnome;
            property aulas_pd: Byte read Faulas_pd write Faulas_pd;
            property turmas: TArrayOfTurma read Fturmas write Fturmas;
            property professores: TArrayOfProfessor read Fprofessores write Fprofessores;
            property materias: TArrayOfMateria read Fmaterias write Fmaterias;
            property lotacoes: TArrayOfLotacao read Flotacoes write Flotacoes;
            property aulas: TArrayOfAula read Faulas write Faulas;

            // M�todos Especiais
            function saveWithJson(): String;

            // M�todos CRUD (Turmas)
            // -- Create --
            procedure addTurma(serie: Byte; complemento: String);

            // -- Read --
            {function takeTurmaById(id: Word): TTurma;
            funct   }
        end;

implementation
// THorario (Implementa��es)
    // Fun��o para salvar como Json
    function THorario.saveWithJson(): String;
    begin
        Result := TJson.ObjectToJsonObject(Self).Format();
    end;

    // **CRUD*** Turma
    // CREATE (Add)
    procedure Thorario.addTurma(serie: Byte; complemento: String);
    var
        new_id: Word;
    begin
        // Gerando id
        if Length(Self.turmas) > 0 then new_id := Self.turmas[High(Self.turmas)].id + 1 else new_id := 1;

        // Aumentando tamanho do array
        SetLength(Self.Fturmas, Length(Self.turmas) + 1);

        // Inserindo
        Self.turmas[High(Self.turmas)] := TTurma.Create(new_id, serie, complemento);
    end;

end.
