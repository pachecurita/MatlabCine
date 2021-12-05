function [continuando, sala] = verReservas(sala)
% Muestra el menú verReservas al usuario y recibe la opción a realizar.
% Recibe 2 parámetros:
%    sala -> Estructura con la matriz que guarda los asientos disponibles.
seguirViendo = true;
while true
    fprintf(['<strong>|   MENÚ DE VISUALIZACIÓN DE SALAS   |</strong>\n' ...
    '¿Qué sala le guardaría ver? Elija el número de la opción:\n' ...
    '1. Ver asientos disponibles/ocupados en SALA 1\n' ...
    '2. Ver asientos disponibles/ocupados en SALA 2\n' ...
    '3. Ver asientos disponibles/ocupados en SALA 3\n' ...
    '4. Ver asientos disponibles/ocupados en SALA 4\n' ...
    '5. Ver asientos disponibles/ocupados en SALA 5\n' ...
    '6. Volver al MENÚ PRINCIPAL.\n' ...
    '7. Salir del programa.\n\n'])
    
    if seguirViendo == false
        continuando = true;
        break
    end

    opcion = input('\nIngrese la opción que desea realizar:\n', 's');
    switch opcion
        case '1'
            numSala = 1;
            clc;
            imprimirSala(sala, numSala);
            fprintf('\nDesea ver otra sala? S/N \n');
            seguirViendo = funcionSeguir();
                
        case '2'
            numSala = 2;
            imprimirSala(sala, numSala);
            fprintf('\nDesea ver otra sala? S/N \n');
            seguirViendo = funcionSeguir();
        case '3'
            numSala = 3;
            imprimirSala(sala, numSala);
            fprintf('\nDesea ver otra sala? S/N \n');
            seguirViendo = funcionSeguir();
        case '4'
            numSala = 4;
            imprimirSala(sala, numSala);
            fprintf('\nDesea ver otra sala? S/N \n');
            seguirViendo = funcionSeguir();
        case '5'
            numSala = 5;
            imprimirSala(sala, numSala);
            fprintf('\nDesea ver otra sala? S/N \n');
            seguirViendo = funcionSeguir();
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