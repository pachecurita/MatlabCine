function [sala, usuario] = menuPrincipal(sala,usuario)
% Muestra el menú principal al usuario, espera una acción y la realiza.
% menuPrincipal(usuario, asiento, sala) no retorna ningún valor, pero
% recibe como parámetros:
%    usuario -> struct() -> Guarda la información de los usuarios.
%    sala -> struct() -> Guarda la información de las 5 salas.
continuando = true;
while true
    if ~ continuando %Exit
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
            %[continuando, sala, usuario] = verReservas(sala,usuario);
        case '3'
            %[continuando, sala, usuario] = modificarReservas(sala,usuario);
        case '4'
            %[continuando, sala, usuario] = anularReservas(sala,usuario);
        case '5'
            %[continuando, sala, usuario] = recaudacion(sala,usuario);
        case '6'
            continuando = false;
        otherwise
            input('Opción no válida. Enter para volver a intentarlo.');
    end
end

%% FUNCIÓN TERMINADA BORRAR DSP