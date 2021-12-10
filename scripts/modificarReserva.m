function [continuando, sala, usuario] = modificarReserva(sala, usuario)
% Función que se encarga de modificar una reserva. Solicita el rut al
% usuario para luego mostrarle las reservas que tiene hechas. Si no tiene
% ninguna le permite probar con otro rut. Recibe como parámetros las
% estructuras "sala" y "usuario" y retorna las mismas estructuras, pero
% actualizadas.

seguirModificando = true;
rut = validarRut();
[usuario, idUsuario] = buscarUsuarioPorRut(rut, usuario);

if idUsuario ~= 0 && idUsuario >= 1
    while true
    
        if seguirModificando == false
            continuando = true;
            break
        end

        [usuario, sala, conReserva] = imprimirDatosUsuario(usuario, idUsuario, ...
                                                           sala, 'modificar');
        
        if conReserva
            fprintf('Ahora deberá ingresar los nuevos datos.\n')
            fprintf('Ingrese el número de sala nuevo:\n')
            numSala = validarFilaColumna(5);
            [seguirModificando, sala, usuario] = ...
                      reservarPorNumSala(usuario, idUsuario, sala, ...
                                         numSala,'modificar');
        else
            fprintf(['No tiene reservas realizadas. ' ...
                     '¿Desea intentarlo con otro rut? (S/N)\n']);
            seguirIntentando = funcionSeguir();
            if seguirIntentando
                rut = validarRut();
                [usuario, idUsuario] = buscarUsuarioPorRut(rut, usuario);
            else
                input(['\nDe acuerdo. Será redirigida/o al menú principal. ' ...
                       'ENTER para continuar.'])
                seguirModificando = false;
            end
        end

    end
else
    input(['No hay reserva a nombre de este RUT. ' ...
           'Será retornado al menú principal.'])
    continuando = true;
end
