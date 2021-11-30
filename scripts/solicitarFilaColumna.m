function [fila, columna] = solicitarFilaColumna()
% Función solicitarFilaColumna():
% Se encarga de solicitar la fila y la columna del asiento que el usuario
% desea escoger. Dentro de la misma se llama a la función
% verificarFilaColumna() para validar que sean datos válidos.

fprintf('\nIngrese la fila del asiento que desea reservar: \n');
fila = verificarFilaOColumna();
fprintf('Ingrese la columna del asiento que desea reservar: \n');
columna = verificarFilaOColumna();