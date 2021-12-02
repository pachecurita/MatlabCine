% Sistema de compra de boletos de un cine.
% Este programa se encarga de gestionar las reservas de un cine que tiene 5
% salas, donde cada una de ellas tiene 25 filas y 20 columnas para la
% distribución de las sillas.

clear;close;clc;
filename = 'datosCine.mat';

if exist(filename,"file")==2
    load(filename)
else
    [sala, usuario] = crearEstructurasIniciales();
end

[sala, usuario] = menuPrincipal(sala,usuario);
save(filename)