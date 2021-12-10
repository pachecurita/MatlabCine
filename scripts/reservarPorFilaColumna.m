function [sala, usuario] = ... 
    reservarPorFilaColumna(sala, numeroSala, fila,columna, ...
                                  usuario, idUsuario, tipo)
% Esta función reserva/asigna según la fila y columna que ingreso el usuario
% el asiento correspondiente en la estructura sala y actualiza los datos en
% la estructura usuario.
% Recibe dos estructuras "sala" y "usuario, tres int "fila", "columna" e
% "IdUsuario" y un string "tipo" para especificar si se trata de una
% anulación o una reserva.

switch tipo
    case 'reservar'
        for i=1:size(sala(numeroSala).asientos,1)
            for j=1:size(sala(numeroSala).asientos,2)
                if i == fila && j == columna && sala(numeroSala).asientos(i,j) == 0
                    fprintf('El asiento F%dC%d se encuenta ocupado.', i,j);
                    input('');
            
                elseif i == fila && j == columna && sala(numeroSala).asientos(i,j) == 1
                    sala(numeroSala).asientos(i,j) = 0;
                    usuario(idUsuario).salas = [[usuario(idUsuario).salas]; numeroSala];
                    usuario(idUsuario).filas = [[usuario(idUsuario).filas]; fila];
                    usuario(idUsuario).columnas = [[usuario(idUsuario).columnas]; columna];
                    sala(numeroSala).recaudacion = sala(numeroSala).recaudacion + 7500;
                    sala(numeroSala).asientosDisponibles = sala(numeroSala).asientosDisponibles - 1;
                    sala(numeroSala).asientosOcupados = sala(numeroSala).asientosOcupados + 1;
                    fprintf('El asiento F%dC%d ha sido reservado exitosamente.', i,j);
                    input(' ENTER para continuar.');
                end
            end
        end
     
    case 'anular'
        for i=1:size(sala(numeroSala).asientos,1)
            for j=1:size(sala(numeroSala).asientos,2)
                if i == fila && j == columna && sala(numeroSala).asientos(i,j) == 0
                    sala(numeroSala).asientos(i,j) = 1;
                    sala(numeroSala).recaudacion = sala(numeroSala).recaudacion - 7500;
                    sala(numeroSala).asientosDisponibles = sala(numeroSala).asientosDisponibles + 1;
                    sala(numeroSala).asientosOcupados = sala(numeroSala).asientosOcupados - 1;
                    fprintf('El asiento F%dC%d ha sido liberado exitosamente. ', i,j);
                end
            end
        end
end