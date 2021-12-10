function [continuando, sala, usuario] = anularReserva(sala, usuario)

seguirAnulando = true;
rut = validarRut();
[usuario, idUsuario] = buscarUsuarioPorRut(rut, usuario);

if idUsuario ~= 0
    while true
    
        if seguirAnulando == false
            continuando = true;
            break
        end
        
        %% PENDIENTE: PENSAR BIEN QUÉ HACER UNA VEZ QUE TENGO EL IDUSUARIO!
        %---- primero llamaria una funcion que simplemente imprima la
        %informacion del usuario y le pregunta qué reserva desea anular
        [usuario, sala, conReserva] = imprimirDatosUsuario(usuario, idUsuario, sala);
        
        if conReserva
            fprintf('¿Desea anular otra reserva?\n (S/N)');
            seguirAnulando = funcionSeguir();
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