unit View.Utils;

interface
    uses Winapi.Windows;

    type
        TVuc = (black, dark, gray, dred, red, lred, dwhite, white, lwhite);

    // Rotinas Utilit�rias
    function vuc(color: TVuc): Cardinal;

implementation
    function vuc(color: TVuc): Cardinal;
    begin
        case color of
            black: exit(0);
            dark: exit(RGB(48, 41, 42));
            gray: exit(RGB(69, 59, 61));
            dred: exit(RGB(138, 51, 51));
            red: exit(RGB(219, 53, 53));
            lred: exit(RGB(242, 102, 102));
            dwhite: exit(RGB(227, 216, 216));
            white: exit(RGB(240, 230, 232));
            lwhite: exit(RGB(255, 255, 255));
        else
            exit(RGB(219, 53, 53));
        end;
    end;

end.
