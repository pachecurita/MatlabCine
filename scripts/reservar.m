function [continuando, sala, usuario] = reservar(sala,usuario)
% Muestra el menú reservar al usuario y recibe la opción a realizar.
% Recibe 2 parámetros:
%    usuario -> Estructura con los datos de los usuarios.
%    sala -> Estructura con la matriz que guarda los asientos disponibles.

seguirReservando = true;
[usuario, idUsuario] = buscarUsuario(usuario);

while true

    if seguirReservando == false
        continuando = true;
        break

    end

    fprintf(['<strong>|   MENU RESERVAR   |</strong>\n' ...
    '¿En qué sala le guardaría reservar? Elija el número de la sala:\n' ...
    '1. Reservar en SALA 1\n' ...
    '2. Reservar en SALA 2\n' ...
    '3. Reservar en SALA 3\n' ...
    '4. Reservar en SALA 4\n' ...
    '5. Reservar en SALA 5\n' ...
    '6. Volver al MENÚ PRINCIPAL.\n' ...
    '7. Salir del programa.\n\n'])

    opcion = input('\nIngrese la opción que desea realizar:\n', 's');
    switch opcion
        case '1'
            numSala = 1;
            [seguirReservando, sala, usuario] = ...
            reservarPorNumSala(usuario, idUsuario, sala, numSala);
        case '2'
            numSala = 2;
            [seguirReservando, sala, usuario] = ...
            reservarPorNumSala(usuario, idUsuario, sala, numSala);
        case '3'
            numSala = 3;
            [seguirReservando, sala, usuario] = ...
            reservarPorNumSala(usuario, idUsuario, sala, numSala);
        case '4'
            numSala = 4;
            [seguirReservando, sala, usuario] = ...
            reservarPorNumSala(usuario, idUsuario, sala, numSala);
        case '5'
            numSala = 5;
            [seguirReservando, sala, usuario] = ...
            reservarPorNumSala(usuario, idUsuario, sala, numSala);
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