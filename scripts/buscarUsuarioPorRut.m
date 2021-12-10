function [usuario, idUsuario] = buscarUsuarioPorRut(rut, usuario)
% Esta función se encarga de buscar un usuario mediante su rut en la
% estructura "usuario". Recibe un rut validado y la estructura "usuario" y
% retorna la misma estructura y el id del usuario encontrado. En caso de no
% encontrarlo retornara un 0 para la variable "idUsuario".

for i=1:length(usuario)
    if any(strcmp(usuario(i).rut, rut))
        idUsuario = i;
        break
    else
        idUsuario = 0;
    end
end
