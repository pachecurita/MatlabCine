function [usuario, idUsuario] = buscarUsuarioPorRut(rut, usuario)



for i=1:length(usuario)
    if any(strcmp(usuario(i).rut, rut))
        idUsuario = i;
    else
        idUsuario = 0;
    end
end
