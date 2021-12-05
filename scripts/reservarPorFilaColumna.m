function [sala, usuario] = ... 
    reservarPorFilaColumna(sala, numeroSala, fila,columna, ...
                                  usuario, idUsuario)
% Esta función recorre la matriz sala(numSala).asientos en busca
% del asiento que el usuario eligió escribiendo la columna y fila.

for i=1:size(sala(numeroSala).asientos,1)
    for j=1:size(sala(numeroSala).asientos,2)

        if i == fila && j == columna && sala(numeroSala).asientos(i,j) == 0
            fprintf('El asiento F%dC%d se encuenta ocupado.', i,j);
            input('');

        elseif i == fila && j == columna && sala(numeroSala).asientos(i,j) == 1
            sala(numeroSala).asientos(i,j) = 0;
            usuario(idUsuario).reserva = [[usuario(idUsuario).reserva]; [numeroSala,fila,columna]];
            sala(numeroSala).recaudacion = sala(numeroSala).recaudacion + 7500;
            sala(numeroSala).asientosDisponibles = sala(numeroSala).asientosDisponibles - 1;
            sala(numeroSala).asientosOcupados = sala(numeroSala).asientosOcupados + 1;
            

            fprintf('El asiento F%dC%d ha sido reservado exitosamente.', i,j);
            input('');
        end
    end
end