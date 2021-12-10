function [usuario, sala, conReserva] = imprimirDatosUsuario(usuario, idUsuario, sala) %sala


if length(usuario(idUsuario).salas) >= 1
    fprintf('Usted tiene las siguientes reservas realizadas:\n');
    for i=1:length(usuario(idUsuario).salas)
        fprintf('%d. Número sala: %d |', i, usuario(idUsuario).salas(i));
        fprintf(' Fila: %d |', usuario(idUsuario).filas(i));
        fprintf(' Columna: %d\n', usuario(idUsuario).columnas(i));
    end
    
    op = input('Escoja la reserva que desea anular:\n');
    
    
    for i=1:length(usuario(idUsuario).salas)
        if op == i
            numSala = usuario(idUsuario).salas(i);
            usuario(idUsuario).salas(i) = [];
            numFila = usuario(idUsuario).filas(i);
            usuario(idUsuario).filas(i) = [];
            numColumna = usuario(idUsuario).columnas(i);
            usuario(idUsuario).columnas(i) = [];
    
            break
        end
    end
    [sala, usuario] = reservarPorFilaColumna(sala, numSala, numFila, numColumna, usuario, idUsuario, 'anular');
    conReserva = true;
else
    
    conReserva = false;
end




%AQUI LLAMAR A LA FUNCION RESERVASPORFILACOLUMNA