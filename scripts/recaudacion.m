function [continuando, sala] = recaudacion(sala)
% Función que imprime la recaudación acumulada en cada una de las salas 
% junto a la recaudación total. Recibe la estructura "sala" y retorna la
% misma estructura y una variable "continuando" que indica si el usuario
% desea seguir en el programa o no.

fprintf(['<strong>|   RECAUDACIÓN TOTAL   |</strong>\n'])

recaudacionTotal = 0;
for i=1:5
    fprintf('Recaudación SALA %d = $ %d \n', i, sala(i).recaudacion);
    recaudacionTotal = recaudacionTotal + sala(i).recaudacion;
end

fprintf(['----------------------------\n' ...
         'Recaudación TOTAL = $ %d \n'], recaudacionTotal);

op = input(['Presione ENTER para volver al menú principal ' ...
       'o "0" para finalizar el programa.'],'s');

if op == '0'
    continuando = false;
    clc;
else
    continuando = true;
    clc;
end