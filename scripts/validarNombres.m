function [nombre,apellido] = validarNombres()


continuar = true;
while continuar
    nombre = upper(strtrim(input('Ingrese su nombre: ', 's')));
    if isstrprop(nombre,'alpha')==1
        continuar = false;
    else
        %clc;
        fprintf('No es un nombre válido. Por favor vuelva a intentarlo.\n');
    end
end

while true
    apellido = upper(strtrim(input('Ingrese su apellido: ', 's')));
    if isstrprop(apellido,'alpha')==1
        return
    else
        fprintf('\nNo es un apellido válido. Por favor vuelva a intentarlo.\n');
    end
end
