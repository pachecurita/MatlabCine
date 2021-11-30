function [sala, usuario] = menuPrincipal(sala,usuario)
% Funcion menuPrincipal(sala, usuario):
% Muestra el menú principal al usuario, espera una acción y la realiza.
% menuPrincipal(usuario, asiento, sala) no retorna ningún valor, pero
% recibe como parámetros:
%    usuario -> struct() -> Guarda la información de los usuarios.
%    sala -> struct() -> Guarda la información de las 5 salas.

continuando = true;
while true

    if ~ continuando % Salida del ciclo
        disp('Fue un gusto tenerte por aquí. Vuelve pronto.');
        break
    end

    imprimirMenuPrincipal()
    
    opcion = input('\nIngrese el numero de la opción que desea realizar:\n', 's');
    switch opcion
        case '1'
            [continuando, sala, usuario] = menuReservar(sala,usuario);
        case '2'
            %[continuando, sala, usuario] = menuVerReservas(sala,usuario);
        case '3'
            %[continuando, sala, usuario] = menuModificarReserva(sala,usuario);
        case '4'
            %[continuando, sala, usuario] = menuAnularReserva(sala,usuario);
        case '5'
            %[continuando, sala, usuario] = menuRecaudacion(sala,usuario);
        case '6'
            continuando = false;
        otherwise
            input('Opción no válida. Enter para volver a intentarlo.');
    end
end