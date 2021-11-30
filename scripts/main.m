clear;close;clc;

filename = 'datosCine.mat'; %Nombre del archivo que guardará las variables.
numeroSalas = 5; %Se puede modificar si se desea un cine con más salas.
cantidadFilas = 25; %Se puede modificar. (Att a las impresiones)
cantidadColumnas = 20; %Se puede modificar.


if exist(filename,"file")==2 %Se verifica si el archivo existe.
    load(filename)
else %Si no es así, se crean las estructuras sala y usuario.
    sala = struct();
    for i=1:numeroSalas %Se crean las salas especificadas.
        sala(i).asientos = ones(numeroFilas,numeroColumnas);
    end
    usuario = struct('rut','','nombre','','apellido','','reserva',[]);
end

% Se llama a la función que da inicio al programa y se actualizan las
% variables sala y usuario cuando finalizó su interacción.
[sala, usuario] = menuPrincipal(sala,usuario);

%Finalmente se guardan las variables en el archivo 'datosCine.mat'.
save(filename)