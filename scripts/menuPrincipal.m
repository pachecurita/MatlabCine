function [sala, usuario] = menuPrincipal(sala,usuario)
% Muestra el menú principal al usuario, espera una acción y la realiza.
% Tiene como parámetros:
%    usuario -> struct() -> Guarda la información de los usuarios.
%    sala -> struct() -> Guarda la información de c/u de las salas.
% Retorna la información en variables de las salas y usuarios.
continuando = true;
while true
    if ~ continuando
        disp('Fue un gusto tenerte por aquí. Vuelve pronto.');
        break
    end


    fprintf(['' ...
    '<strong>|   MENU PRINCIPAL DEL CINE   |</strong>\n' ...
    '¿Qué le gustaría hacer?\n' ...
    '1. Reservar asiento de una sala.\n' ...
    '2. Visualizar asientos disponibles por sala.\n' ...
    '3. Modificar la reserva de un asiento.\n' ...
    '4. Anular la reserva de un asiento.\n' ...
    '5. Ver la recaudación total del cine.\n' ...
    '6. Salir del programa.\n' ...
    ])
    

    opcion = input('\nIngrese el numero de la opción que desea realizar:\n', 's');
    switch opcion
        case '1'
            [continuando, sala, usuario] = reservar(sala,usuario);
        case '2'
            [continuando, sala] = verReservas(sala);
        case '3'
            %[continuando, sala, usuario] = modificarReservas(sala,usuario);
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

%% FUNCIÓN TERMINADA BORRAR DSP