function valor = verificarFilaOColumna()

valor = input('','s');

if isstrprop(valor,"digit")
    valor = str2double(valor);
else
    fprintf('No es un valor válido. Por favor vuelva a intentarlo:\n');
    valor = verificarFilaOColumna();         %% ARREGLAR ESTE ERROR
end

