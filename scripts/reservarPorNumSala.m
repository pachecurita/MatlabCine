function [seguirReservando, sala, usuario] = ...
                      reservarPorNumSala(usuario, idUsuario, sala, numSala)

imprimirSala(sala,numSala);

fprintf('\nIngrese la fila del asiento que desea reservar: \n');
fila = validarFilaColumna(25);

fprintf('Ingrese la columna del asiento que desea reservar: \n');
columna = validarFilaColumna(20);

[sala, usuario] = reservarPorFilaColumna(sala,numSala,fila,columna, ...
                                                usuario,idUsuario);

imprimirSala(sala,numSala);

fprintf('\nDesea reservar otra sala? S/N \n');
seguirReservando = funcionSeguir();