function [continuando, sala, usuario] = reservar(sala,usuario)
% Muestra el menú reservar al usuario y recibe la opción a realizar.
% Recibe 2 parámetros:
%    usuario -> Estructura con los datos de los usuarios.
%    sala -> Estructura con la matriz que guarda los asientos disponibles.
seguirReservando = true;
while true
    
    fprintf(['<strong>|   MENU RESERVAR   |</strong>\n' ...
    '¿En qué sala le guardaría reservar? Elija el número de la sala:\n' ...
    '1. Reservar en SALA 1\n' ...
    '2. Reservar en SALA 2\n' ...
    '3. Reservar en SALA 3\n' ...
    '4. Reservar en SALA 4\n' ...
    '5. Reservar en SALA 5\n' ...
    '6. Volver al MENÚ PRINCIPAL.\n' ...
    '7. Salir del programa.\n\n'])

    if seguirReservando == false
        continuando = true;
        break
    end

    opcion = input('\nIngrese la opción que desea realizar:\n', 's');
    switch opcion
        case '1'
            numSala = 1;
            [sala, usuario] = reservarPorNumSala(usuario,sala, numSala);
            % implementar la función seguirReservando() quizás dentro de la
            % función de arriba para que así no tenga que pedir el nombre
            % y rut a cada rato! PENDIENTE! (Para guiarme mirar la función
            % verReservas(), ya que allí está más o menos implementado.
            % PENDIENTE!!!!!!
            
        case '2'
            numSala = 2;
            [sala, usuario] = reservarPorNumSala(usuario,sala, numSala);
        case '3'
            numSala = 3;
            [sala, usuario] = reservarPorNumSala(usuario,sala, numSala);
        case '4'
            numSala = 4;
            [sala, usuario] = reservarPorNumSala(usuario,sala, numSala);
        case '5'
            numSala = 5;
            [sala, usuario] = reservarPorNumSala(usuario,sala, numSala);
        case '6'
            continuando = true;
            return
        case '7'
            continuando = false;
            return
        otherwise
            input('Opción no válida. Enter para volver a intentarlo.');
    end
end