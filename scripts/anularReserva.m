function [continuando, sala, usuario] = anularReserva(sala, usuario)

seguirAnulando = true;

while true

    if seguirAnulando == false
        continuando = true;
        break
    end

    fprintf(['<strong>|   MENÚ ANULAR RESERVA   |</strong>\n' ...
    '¿Cómo desea buscar sus reservas a anular? ' ...
    'Elija el número de la sala:\n' ...
    '1. Mediante RUT\n' ...
    '2. Mediante NOMBRE Y/O APELLIDO\n' ...
    '3. Mediante NÚMERO DE RESERVA\n' ...
    'Otras OPCIONES:\n' ...
    '4. Volver al MENÚ PRINCIPAL.\n' ...
    '5. Salir del programa.\n\n']);

    opcion = input('\nIngrese la opción que desea realizar:\n', 's');
    switch opcion
        case '1'
            % buscarPorRUT()
            %[usuario, idUsuario] = buscarUsuario(usuario);
            % imprimirDatosUsuario(usuario,sala)
        case '2'
            % buscarPorNombreApellido()
        case '3'
            % buscarPorNumeroReserva()
        case '4'
            continuando = true;
            return
        case '5'
            continuando = false;
            return
        otherwise
            input('Opción no válida. Enter para volver a intentarlo.');
    end
end