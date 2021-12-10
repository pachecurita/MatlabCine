function valor = validarFilaColumna(maximo)
% Valida el numero ingresado para una fila, columna u otro dato que se
% desee validar con el mismo criterio.Recibe un parámetro "maximo" que
% indica la cantidad máxima de asientos o columnas que puede ingresar el
% usuario. Por ejemplo, si el número máximo de filas que deseo que el
% usuario ingrese es de 25, entonces llamaré a la función así:
% numeroFila = validarFilaColumna(25)

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
