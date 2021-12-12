function [continuando, sala, usuario] = anularReserva(sala, usuario)
% Función que se encarga de anular una reservación. Funciona mediante el
% rut del usuario. Recibe una estructura "sala" y "usuario" en las que
% buscará y modificará los datos. Retornará esas mismas estructuras
% actualizadas.

seguirAnulando = true;
rut = validarRut();
[usuario, idUsuario] = buscarUsuarioPorRut(rut, usuario);

if idUsuario ~= 0
    while true
    
        if seguirAnulando == false
            continuando = true;
            break
        end

        [usuario, sala, conReserva] = imprimirDatosUsuario(usuario, idUsuario, sala, 'anular');
        
        if conReserva
            fprintf('¿Desea anular otra reserva? (S/N)\n');
            seguirAnulando = funcionSeguir();
            clc;
        else
            fprintf('No tiene reservas realizadas. ¿Desea intentarlo con otro rut? (S/N)\n');
            seguirIntentando = funcionSeguir();
            if seguirIntentando
                rut = validarRut();
                [usuario, idUsuario] = buscarUsuarioPorRut(rut, usuario);
            else
                input('\nDe acuerdo. Será redirigida/o al menú principal. ENTER para continuar.')
                seguirAnulando = false;
            end
        end

    end
else
    input('No hay reserva a nombre de este RUT. Será retornado al menú principal.')
    continuando = true;
end