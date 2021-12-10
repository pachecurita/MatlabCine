function [usuario, sala, conReserva] = imprimirDatosUsuario(usuario, idUsuario, ...
                                                            sala, tipo)
% Función que imprime los datos de una reserva del usuario para luego
% preguntar sobre la resera que desea anular o modificar.
% Recibe las estructuras "usuario" y "sala", junto a el idUsuario, que
% identifica el usuario que está realizando la acción y el "tipo", que
% indica si se trata de una reserva o una modificación de asientos.


if length(usuario(idUsuario).salas) >= 1
    fprintf('Usted tiene las siguientes reservas realizadas:\n');
    for i=1:length(usuario(idUsuario).salas)
        fprintf('%d. Número sala: %d |', i, usuario(idUsuario).salas(i));
        fprintf(' Fila: %d |', usuario(idUsuario).filas(i));
        fprintf(' Columna: %d\n', usuario(idUsuario).columnas(i));
        cantSalas = i;
    end
    

    switch tipo
        case 'anular'
            while true
                op = input('Escoja la reserva que desea anular:\n');
                clc;
                if op <= 0 || op >cantSalas
                    fprintf('Reserva inválida.\n')
                else
                    break
                end
            end
        case 'modificar'
            while true
                op = input('Escoja la reserva que desea modificar:\n');
                clc;
                if op <= 0 || op >cantSalas
                    fprintf('Reserva inválida.\n')
                else
                    break
                end
            end
    end
    
    for i=1:length(usuario(idUsuario).salas)
        if op == i
            numSala = usuario(idUsuario).salas(i);
            usuario(idUsuario).salas(i) = [];
            numFila = usuario(idUsuario).filas(i);
            usuario(idUsuario).filas(i) = [];
            numColumna = usuario(idUsuario).columnas(i);
            usuario(idUsuario).columnas(i) = [];
    
            break
        end
    end
    [sala, usuario] = reservarPorFilaColumna(sala, numSala, numFila, numColumna, ...
                                             usuario, idUsuario, 'anular');
    conReserva = true;
else
    conReserva = false;
end