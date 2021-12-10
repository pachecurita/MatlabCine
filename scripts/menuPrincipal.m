function [sala, usuario] = menuPrincipal(sala,usuario)
% Muestra el menú principal al usuario, solicita la opción al usuario para
% finalmente llamar a las funciones que realizan la opción escogida.
% Tiene como parámetros una estructura "sala" y una "usuario. Retorna esas
% mismas estructuras, pero actualizadas.

continuando = true;
while true
    if ~ continuando
        disp('Fue un gusto tenerte por aquí. Vuelve pronto.');
        break
    end


    fprintf(['' ...
    '<strong>|   MENU PRINCIPAL DEL CINE   |</strong>\n' ...
    '¿Qué le gustaría hacer?\n' ...
    '1. RESERVAR.\n' ...
    '2. VER ASIENTOS DISPONIBLES.\n' ...
    '3. MODIFICAR RESERVA.\n' ...
    '4. ANULAR RESERVA.\n' ...
    '5. RECAUDACIÓN.\n' ...
    '6. SALIR.\n' ...
    ])
    

    opcion = input('\nIngrese el numero de la opción que desea realizar:\n', 's');
    clc;
    switch opcion
        case '1'
            [continuando, sala, usuario] = reservar(sala,usuario);
        case '2'
            [continuando, sala] = verReservas(sala);
        case '3'
            [continuando, sala, usuario] = modificarReserva(sala,usuario);
        case '4'
            [continuando, sala, usuario] = anularReserva(sala,usuario);
        case '5'
            [continuando, sala] = recaudacion(sala);
        case '6'
            continuando = false;
        otherwise
            input('Opción no válida. Enter para volver a intentarlo.');
    end
end