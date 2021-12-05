function valor = validarFilaColumna(maximo)
% Valida el numero ingresado para una fila o columna.
% Recibe un parámetro "maximo" indicando el máximo valor que puede ingresar
% el ususario.

valor = input('','s');

if isstrprop(valor,"digit")
    valor = str2double(valor);
    if valor > 0 && valor <= maximo
        return
    else
        fprintf('%d no es un valor permitido. ',valor);
        disp('Por favor vuelva a intentarlo:');
        valor = validarFilaColumna(maximo);
    end
else
    fprintf('No es un valor válido. Por favor vuelva a intentarlo:\n');
    valor = validarFilaColumna(maximo);
end
