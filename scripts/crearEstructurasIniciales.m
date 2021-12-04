function [sala, usuario] = crearEstructurasIniciales()

cantidadFilas = 25; %Se puede modificar. (Att a las impresiones)
cantidadColumnas = 20; %Se puede modificar.

sala = struct();
usuario = struct('rut','','nombre','','apellido','','reserva',[]);

for i=1:5
    sala(i).asientos = ones(cantidadFilas,cantidadColumnas);
    sala(i).recaudacion = 0;
    %me gustaría crear 2 fields más, uno para asientos disp
    % y asientos ocupados
    % otro más para recaudación por sala.
end
    