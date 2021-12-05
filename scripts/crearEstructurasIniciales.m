function [sala, usuario] = crearEstructurasIniciales()

cantidadFilas = 25;
cantidadColumnas = 20;

sala = struct();
usuario = struct('rut','','nombre','','apellido','','reserva',[],'numReservas',[]); %probando esto últ

for i=1:5
    sala(i).asientos = ones(cantidadFilas,cantidadColumnas);
    sala(i).recaudacion = 0;
    sala(i).asientosDisponibles = 500;
    sala(i).asientosOcupados = 0;
    %usuario.reservaSala(i) ????????? PENSAR EN ALGO MÁS SENCILLO
end

