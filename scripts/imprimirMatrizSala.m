function imprimirMatrizSala(sala, numeroSala)
% Funcion imprimirMatrizSala:
% Imprime con formato la sala especificada en el parámetro
% sala junto a su respectivo numeroSala.

fprintf(['\n       --------------------------------|      PANTALLA DEL CINE      | ' ...
         '--------------------------------\n     '])

for x=1:size(sala(numeroSala).asientos,2)
    if x < 10
        fprintf(' C0%d ', x);
    end
    if x >= 10
        fprintf(' C%d ', x);
    end
end

for i=1:size((sala(numeroSala).asientos),1)
    if i < 10
        fprintf('\n F0%d  ',i);
    end
    if i >= 10
        fprintf('\n F%d  ',i);
    end
    for j=1:size((sala(numeroSala).asientos),2)
        if sala(numeroSala).asientos(i,j) == 1
            fprintf(' D   ');
        elseif sala(numeroSala).asientos(i,j) == 0
            fprintf(2,' X   ');
        end
        %fprintf(' %d ', (sala(numeroSala).asientos(i,j)));
    end
end

fprintf(['\nEn la pantalla podrá ver los asientos disponibles (D) y los no disponibles (X).\n' ...
         'Para elegir su asiento debe elegir el número de la fila y columna del asiento,\n' ...
         'que desea escoger. Por ejemplo, si desea reservar el primer asiento ubicado en\n' ...
         'la fila 1 (F01) y columna 1 (C01), entonces deberá ingresar "1" para la fila y' ...
         ' "1" para la columna.']);