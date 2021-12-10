function [sala, usuario] = crearEstructurasIniciales()
% Esta función se llama en caso de no existir el archivo "datosCine.mat" y
% se encarga de realizar las estructuras sala y usuario que estarán siendo
% modificadas a lo largo de todo el programa. No recibe parámetros.
% Retorna las estructuras "sala" y "usuario".

cantidadFilas = 25;
cantidadColumnas = 20;

sala = struct();
usuario = struct('rut','','nombre','','apellido','', ...
                 'salas',[],'filas',[],'columnas',[]);

for i=1:5
    sala(i).asientos = ones(cantidadFilas,cantidadColumnas);
    sala(i).recaudacion = 0;
    sala(i).asientosDisponibles = 500;
    sala(i).asientosOcupados = 0;
end

