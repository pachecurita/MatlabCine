% SISTEMA DE COMPRA DE ENTRADAS DE UN CINE.
% UNIVERSIDAD DE SANTIAGO - Programación Aplicada a la Ingeniería Electrica
% 10 de diciembre de 2021
% Colaboradores: Paula Huichacura - José Mansilla

%% DESCRIPCIÓN GENERAL:
% Este programa se encarga de gestionar las reservas de un cine que tiene 5
% salas, donde cada una de ellas tiene 25 filas y 20 columnas. El usuario
% podrá elegir entre reservar, visualizar, anular y modificar las reservas.

%% DESCRIPCIÓN SCRIPT
% El script main se encarga de leer y guardar los datos en el archivo
% "datosCine" en caso de existir y si no existe crea las estructuras
% iniciales para que la interacción del usuario no se pierda al finalizar
% el programa.

clear;close;clc;
filename = 'datosCine.mat';

if exist(filename,"file")==2
    load(filename)
else
    [sala, usuario] = crearEstructurasIniciales();
end

[sala, usuario] = menuPrincipal(sala,usuario);
save(filename)