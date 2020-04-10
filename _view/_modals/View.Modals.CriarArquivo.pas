unit View.Modals.CriarArquivo;

interface
    uses
        Winapi.Windows,
        Winapi.Messages,
        System.SysUtils,
        System.Variants,
        System.Classes,
        Vcl.Graphics,
        Vcl.Controls,
        Vcl.Forms,
        Vcl.Dialogs,
        Vcl.ExtCtrls,
        Vcl.StdCtrls,
        Vcl.Imaging.pngimage,
        View.Utils,
        Controller.Inicial;

    type
        TCriarArquivo = class(TForm)
            p_form: TPanel;
            btn_criar: TButton;
            tf_nome: TEdit;
            lb_nome: TLabel;
    p_field: TPanel;
    tf_n_aulas: TEdit;
    lb_n_aulas: TLabel;
    procedure btn_criarClick(Sender: TObject);
        public
            constructor Create(AOwner: TComponent); override;
        end;

implementation

    {$R *.dfm}

// TCriarArquivo (Implementações)
    // Sobescrevendo Construtor
    constructor TCriarArquivo.Create(AOwner: TComponent);
    begin
        inherited Create(AOwner);

        // Definindo Cores
        lb_nome.Font.Color := View.Utils.vuc(dark);
        lb_n_aulas.Font.Color := View.Utils.vuc(dark);
    end;

// Eventos
    // Criar Novo Arquivo de Horário
    procedure TCriarArquivo.btn_criarClick(Sender: TObject);
    begin
        // Checando se campos estão vazios
        if (tf_nome.Text = '') or (tf_n_aulas.Text = '') then
        begin
            ShowMessage('Preencha todos os campos, por favor.');
        end
        else
        begin
            // Criando novo arquivo
            Controller.Inicial.criarNovoArquivo(tf_nome.Text, StrToInt(tf_n_aulas.Text));
            Self.Free();
        end;
    end;
end.
