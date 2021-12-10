function [continuando, sala, usuario] = reservar(sala,usuario)
% Función que se encarga de mostrar el menú de reserva para luego consultar
% en qué sala le gustaría reservar al usuario. En base a eso se llama a las
% funciones que se encargan de reservar los asientos escogidos por el
% usuario. Recibe como parámetro una estructura "sala" y una "usuario" para
% retornar esas mismas estructuras actualizadas y una variable
% "continuando" que indica si el usuario desea seguir en el programa o no.

seguirReservando = true;
[usuario, idUsuario] = registrarUsuario(usuario);

while true

    if seguirReservando == false
        continuando = true;
        break
    end

    fprintf(['<strong>|   MENU RESERVAR   |</strong>\n' ...
    '<strong>¡Hola, %s %s!</strong> ¿En qué sala le guardaría reservar? ' ...
    'Elija el número de la sala:\n' ...
    '1. Reservar en SALA 1\n' ...
    '2. Reservar en SALA 2\n' ...
    '3. Reservar en SALA 3\n' ...
    '4. Reservar en SALA 4\n' ...
    '5. Reservar en SALA 5\n' ...
    '6. Volver al MENÚ PRINCIPAL.\n' ...
    '7. Salir del programa.\n\n'], usuario(idUsuario).nombre, usuario(idUsuario).apellido);

    opcion = input('\nIngrese la opción que desea realizar:\n', 's');
    clc;
    switch opcion
        case '1'
            numSala = 1;
            [seguirReservando, sala, usuario] = ...
            reservarPorNumSala(usuario, idUsuario, sala, numSala, 'reservar');
        case '2'
            numSala = 2;
            [seguirReservando, sala, usuario] = ...
            reservarPorNumSala(usuario, idUsuario, sala, numSala, 'reservar');
        case '3'
            numSala = 3;
            [seguirReservando, sala, usuario] = ...
            reservarPorNumSala(usuario, idUsuario, sala, numSala, 'reservar');
        case '4'
            numSala = 4;
            [seguirReservando, sala, usuario] = ...
            reservarPorNumSala(usuario, idUsuario, sala, numSala, 'reservar');
        case '5'
            numSala = 5;
            [seguirReservando, sala, usuario] = ...
            reservarPorNumSala(usuario, idUsuario, sala, numSala, 'reservar');
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