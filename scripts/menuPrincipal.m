function [sala, usuario] = menuPrincipal(sala,usuario)
% Funcion menuPrincipal(sala, usuario):
% Muestra el menú principal al usuario, espera una acción y la realiza.
%
% menuPrincipal(usuario, asiento, sala) no retorna ningún valor, pero
% recibe como parámetros:
%
%    usuario -> struct() -> Guarda la información de los usuarios.
%    sala -> struct() -> Guarda la información de las 5 salas.

%% Inicio del ciclo
continuando = true;
while true
    %clc;
    imprimirMenuPrincipal()
    
    if ~ continuando  % SALIDA DEL PROGRAMA
        %clc;
        disp('Fue un gusto tenerte por aquí. Vuelve pronto.');
        break
    end
    
    opcion = input('\nIngrese el numero de la opción que desea realizar:\n', 's');
    switch opcion
        case '1'
            [continuando, sala, usuario] = menuReservar(sala,usuario);
        case '2'
            %continuando = menuVisualizar();
        case '3'
            %continuando = menuVisualizar();
        case '4'
            %continuando = menuVisualizar();
        case '5'
            %continuando = menuVisualizar();
        case '6'
            continuando = false;
        otherwise
            input('Opción no válida. Enter para volver a intentarlo.');
    end
end