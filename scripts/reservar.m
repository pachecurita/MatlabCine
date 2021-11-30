function [sala, usuario] = reservar(usuario, sala, numSala)

[usuario, idUsuario] = buscarUsuario(usuario); %si el usuario esta devolver el usuario e idUsuario, si no está, agregarlo y luego devolver el idUsuario.
            imprimirMatrizSala(sala,numSala);
            [fila, columna] = solicitarFilaColumna(); % se solicita la fila y columna que quiere reservar
            [sala, usuario] = reservarAsientoPorFilaColumna(sala,numSala,fila,columna,usuario,idUsuario);
            imprimirMatrizSala(sala,numSala);