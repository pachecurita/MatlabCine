function [sala, usuario] = reservarPorNumSala(usuario, sala, numSala)
%% Se busca el ususario y luego se imprime la sala para ver asientos disp.
[usuario, idUsuario] = buscarUsuario(usuario);
imprimirSala(sala,numSala);

%% Se solicita la fila y columna que desea reservar:
fprintf('\nIngrese la fila del asiento que desea reservar: \n');
fila = validarFilaColumna(25);
fprintf('Ingrese la columna del asiento que desea reservar: \n');
columna = validarFilaColumna(20);

%% Se realiza la reserva por fila y columna seleccionada
[sala, usuario] = reservarPorFilaColumna(sala,numSala,fila,columna, ...
                                                usuario,idUsuario);
%% Se imprime la matriz una vez hecha la reserva.
imprimirSala(sala,numSala);


%% PENDIENTE REVISAR!!! ATT