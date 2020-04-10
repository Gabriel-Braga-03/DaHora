unit View.Frames.LinkPrime;

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
        View.Utils;

    type
        TLinkPrime = class(TFrame)
            p_icon: TPanel;
            p_nome: TPanel;
            lb_nome: TLabel;
            img_icon: TImage;
            procedure lb_nomeMouseEnter(Sender: TObject);
            procedure lb_nomeMouseLeave(Sender: TObject);
        public
            constructor Create(AOwner: TComponent); override;
        end;

implementation
{$R *.dfm}
// TLinkPrime (Implementações)
    // Sobescrevendo Método Construtor
    constructor TLinkPrime.Create(AOwner: TComponent);
    begin
        inherited Create(AOwner);

        // Definindo Cores
        p_nome.Color := View.Utils.vuc(white);
        lb_nome.Font.Color := View.Utils.vuc(red);
    end;

// Eventos
    // Mouse Entra
    procedure TLinkPrime.lb_nomeMouseEnter(Sender: TObject);
    begin
        p_nome.Color := View.Utils.vuc(red);
        lb_nome.Font.Color := View.Utils.vuc(white);
    end;

    // Mouse Sai
    procedure TLinkPrime.lb_nomeMouseLeave(Sender: TObject);
    begin
        p_nome.Color := View.Utils.vuc(white);
        lb_nome.Font.Color := View.Utils.vuc(red);
    end;

end.
