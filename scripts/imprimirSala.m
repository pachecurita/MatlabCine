function imprimirSala(sala, numSala)
% Imprime los asientos disponibles en la sala especificada.

fprintf(['\n       <strong>--------------------------------' ...
         '| PANTALLA DEL CINE - SALA %d| ' ...
         '--------------------------------</strong>\n     '], numSala)

for x=1:size(sala(numSala).asientos,2)
    if x < 10
        fprintf(' <strong>C0%d</strong> ', x);
    end
    if x >= 10
        fprintf(' <strong>C%d</strong> ', x);
    end
end

for i=1:size((sala(numSala).asientos),1)
    if i < 10
        fprintf('\n <strong>F0%d</strong>  ',i);
    end
    if i >= 10
        fprintf('\n <strong>F%d</strong>  ',i);
    end
    for j=1:size((sala(numSala).asientos),2)
        if sala(numSala).asientos(i,j) == 1
            fprintf(' D   ');
        elseif sala(numSala).asientos(i,j) == 0
            fprintf(2,' <strong>X</strong>   ');
        end
    end
end

fprintf('\nAsientos disponibles: %d\nAsientos ocupados: %d\n', ...
          sala(numSala).asientosDisponibles, sala(numSala).asientosOcupados);