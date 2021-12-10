function [sala, usuario] = ... 
    reservarPorFilaColumna(sala, numeroSala, fila,columna, ...
                                  usuario, idUsuario, tipo) %tipo -> 'reservar', 'anular', etc
% Esta función recorre la matriz sala(numSala).asientos en busca
% del asiento que el usuario eligió escribiendo la columna y fila.


% for i=1:size(sala(numeroSala).asientos,1)
%     for j=1:size(sala(numeroSala).asientos,2)
% 
%         if i == fila && j == columna && sala(numeroSala).asientos(i,j) == 0
%             fprintf('El asiento F%dC%d se encuenta ocupado.', i,j);
%             input('');
% 
%         elseif i == fila && j == columna && sala(numeroSala).asientos(i,j) == 1
%             sala(numeroSala).asientos(i,j) = 0;
%             %usuario(idUsuario).reserva = [[usuario(idUsuario).reserva]; [numeroSala,fila,columna]];
%             usuario(idUsuario).salas = [[usuario(idUsuario).salas]; numeroSala];
%             usuario(idUsuario).filas = [[usuario(idUsuario).filas]; fila];
%             usuario(idUsuario).columnas = [[usuario(idUsuario).columnas]; columna];
%             sala(numeroSala).recaudacion = sala(numeroSala).recaudacion + 7500;
%             sala(numeroSala).asientosDisponibles = sala(numeroSala).asientosDisponibles - 1;
%             sala(numeroSala).asientosOcupados = sala(numeroSala).asientosOcupados + 1;
%             %numeroReserva = crearNumeroReserva(numeroSala, fila, columna, sala(numeroSala).asientosOcupados);%probando
%             %usuario(idUsuario).numReservas = [usuario(idUsuario).numReservas, numeroReserva]; %probando
%             
% 
%             fprintf('El asiento F%dC%d ha sido reservado exitosamente.', i,j);
%             input('');
%         end
%     end
% end










%% PROBANDO:



switch tipo
    case 'reservar'
        for i=1:size(sala(numeroSala).asientos,1)
            for j=1:size(sala(numeroSala).asientos,2)
                if i == fila && j == columna && sala(numeroSala).asientos(i,j) == 0

                    fprintf('El asiento F%dC%d se encuenta ocupado.', i,j);
                    input('');
            
                elseif i == fila && j == columna && sala(numeroSala).asientos(i,j) == 1
                    sala(numeroSala).asientos(i,j) = 0;
                    %usuario(idUsuario).reserva = [[usuario(idUsuario).reserva]; [numeroSala,fila,columna]];
                    usuario(idUsuario).salas = [[usuario(idUsuario).salas]; numeroSala];
                    usuario(idUsuario).filas = [[usuario(idUsuario).filas]; fila];
                    usuario(idUsuario).columnas = [[usuario(idUsuario).columnas]; columna];
                    sala(numeroSala).recaudacion = sala(numeroSala).recaudacion + 7500;
                    sala(numeroSala).asientosDisponibles = sala(numeroSala).asientosDisponibles - 1;
                    sala(numeroSala).asientosOcupados = sala(numeroSala).asientosOcupados + 1;
                    %numeroReserva = crearNumeroReserva(numeroSala, fila, columna, sala(numeroSala).asientosOcupados);%probando
                    %usuario(idUsuario).numReservas = [usuario(idUsuario).numReservas, numeroReserva]; %probando
                    
            
                    fprintf('El asiento F%dC%d ha sido reservado exitosamente.', i,j);
                    input('');
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
                    fprintf('El asiento F%dC%d ha sido liberado exitosamente.', i,j);

                end
            end
        end



end