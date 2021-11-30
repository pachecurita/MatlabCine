function [continuando, sala, usuario] = menuReservar(sala,usuario)
%menuReservar Muestra el menú al usuario y recibe la opción a realizar.
%
% menuReservar(usuario, asiento, sala) no retorna ningún valor, pero
% recibe como parámetros:
%
%    usuario -> lista -> Guarda la info del usuario que realiza una/s reservas.
%    asiento -> lista -> Guarda los asientos disponibles.
%    sala -> lista -> Guarda cada una de las salas.

%% Mostrar Menú:
%clc;
imprimirMenuReservar()

while true
    opcion = input('\nIngrese la opción que desea realizar:\n', 's');
    switch opcion
        case '1'
            numSala = 1;
            % [usuario, sala] = reservarEnSala(numSala + todos esos argumentos de abajo);

%             numeroSala = elegirSala(); %NO FINALIZADO
%             asientoElegido = visualizarElegirAsiento(sala, numeroSala, asiento); % NO FINALIZADO
%             usuarioAsignadoConAsiento = asignarAsientoAUsuario(usuario,asientoElegido, sala); % NO FIN
%             fprintf('%', usuarioAsignadoConAsiento); % NO FINALIZADO
            
            [usuario, idUsuario] = buscarUsuario(usuario); %si el usuario esta devolver el usuario e idUsuario, si no está, agregarlo y luego devolver el idUsuario.
            imprimirMatrizSala(sala,numSala);
            [fila, columna] = solicitarFilaColumna(); % se solicita la fila y columna que quiere reservar
            [sala, usuario] = reservarAsientoPorFilaColumna(sala,numSala,fila,columna,usuario,idUsuario);
            imprimirMatrizSala(sala,numSala);

        case '2'
            %
        case '3'
            %        
        case '4'
            %        
        case '5'
            %
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