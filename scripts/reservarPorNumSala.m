function [seguir, sala, usuario] = ...
                      reservarPorNumSala(usuario, idUsuario, ...
                                         sala, numSala, tipo)
% Función que pregunta el numero de fila y columna que el usuario desea
% reservar y luego con la función reservarPorFilaColumna se encarga de
% actualizar el asiento escogido por el usuario.
% Recibe como parámetros una estructura "usuario", un int idUsuario, una
% estructura "sala", un int "numSala" y un string "tipo", que sirve para
% especificar si se trata de una reserva o una modificación de asiento.

imprimirSala(sala,numSala);

fprintf('\nIngrese la fila del asiento: \n');
fila = validarFilaColumna(25);

fprintf('Ingrese la columna del asiento: \n');
columna = validarFilaColumna(20);

[sala, usuario] = reservarPorFilaColumna(sala,numSala,fila,columna, ...
                                                usuario,idUsuario,'reservar');

clc;
imprimirSala(sala,numSala);

switch tipo
    case 'reservar'
        fprintf('\nDesea reservar otra sala? S/N \n');
        seguir = funcionSeguir();
        clc;
    case 'modificar'
        fprintf('\n¿Desea modificar otro asiento? (S/N)\n');
        seguir = funcionSeguir();
        clc;
end