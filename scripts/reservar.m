function [continuando, sala, usuario] = reservar(sala,usuario)
% Muestra el menú al usuario y recibe la opción a realizar.
% Recibe 2 parámetros:
%    usuario -> Estructura con los datos de los usuarios.
%    sala -> Estructura con la matriz que guarda los asientos disponibles.

while true
    imprimirMenuReservar()
    opcion = input('\nIngrese la opción que desea realizar:\n', 's');
    switch opcion
        case '1'
            numSala = 1;
            [sala, usuario] = reservarPorNumSala(usuario,sala, numSala);
        case '2'
            numSala = 2;
            [sala, usuario] = reservarPorNumSala(usuario,sala, numSala);
        case '3'
            numSala = 3;
            [sala, usuario] = reservarPorNumSala(usuario,sala, numSala);
        case '4'
            numSala = 4;
            [sala, usuario] = reservarPorNumSala(usuario,sala, numSala);
        case '5'
            numSala = 5;
            [sala, usuario] = reservarPorNumSala(usuario,sala, numSala);
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