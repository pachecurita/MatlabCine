function seguir = funcionSeguir()

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