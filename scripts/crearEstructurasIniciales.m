function [sala, usuario] = crearEstructurasIniciales()

cantidadFilas = 25; %Se puede modificar. (Att a las impresiones)
cantidadColumnas = 20; %Se puede modificar.

sala = struct();
usuario = struct('rut','','nombre','','apellido','','reserva',[]);

for i=1:5
    sala(i).asientos = ones(cantidadFilas,cantidadColumnas);
end
    