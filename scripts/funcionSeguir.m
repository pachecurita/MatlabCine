function seguir = funcionSeguir()
% Función que se encarga de preguntar al usuario si desea seguir realizando
% una acción. Por ejemplo, si desea seguir reservando:
% seguirReservando = funcionSeguir()
% No recibe parámetros. Retorna un valor booleano: true para seguir, y
% false para no seguir.

while true
    op = upper(input('','s'));
    switch op
        case 'S'
            seguir = true;
            return
        case 'N'
            seguir = false;
            return
        otherwise
            fprintf(['"%s" no es una opción válida.\n' ...
                'Elija entre "S" (para seguir en este menú) o "N" ' ...
                'para volver al menú principal.\n'], op);
    end

end