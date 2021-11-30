function [continuando, sala, usuario] = menuReservar(sala,usuario)
%menuReservar Muestra el menú al usuario y recibe la opción a realizar.
% menuReservar(usuario, asiento, sala) no retorna ningún valor, pero
% recibe como parámetros:
%    usuario -> lista -> Guarda la info del usuario que realiza una/s reservas.
%    asiento -> lista -> Guarda los asientos disponibles.
%    sala -> lista -> Guarda cada una de las salas.

while true
    imprimirMenuReservar()
    opcion = input('\nIngrese la opción que desea realizar:\n', 's');
    switch opcion
        case '1'
            numSala = 1;
            [sala, usuario] = reservar(usuario,sala, numSala);
        case '2'
            numSala = 2;
            [sala, usuario] = reservar(usuario,sala, numSala);
        case '3'
            numSala = 3;
            [sala, usuario] = reservar(usuario,sala, numSala);
        case '4'
            numSala = 4;
            [sala, usuario] = reservar(usuario,sala, numSala);
        case '5'
            numSala = 5;
            [sala, usuario] = reservar(usuario,sala, numSala);
        case '6'
            continuando = true;
            return
        case '7'
            continuando = false;
            return
        otherwise
            input('Opción no válida. Enter para volver a intentarlo.');
    end
end