function [usuario, idUsuario] = registrarUsuario(usuario)
% Busca al usuario por rut en la estructura usuario y si no lo encuentra su
% función principal es registrarlo con un nuevo numero de ID para retornar
% ese mismo número. Recibe la estructura usuario y retorna esa misma
% estructura junto a su id.

rut = validarRut();
seEncuentra = false;

i = 1;
while i <= length(usuario)
    if strcmp(usuario(i).rut,'')==1 && i == 1
        idUsuario = i;
        usuario(idUsuario).rut = rut;
        fprintf(['Al parecer es un usuario nuevo, así que le pediremos sus ' ...
                 'datos antes de continuar.\n']);
        [nombre, apellido] = validarNombres();
        usuario(idUsuario).nombre = nombre;
        usuario(idUsuario).apellido = apellido;
        %usuario(idUsuario).reserva = [];
    end
    if strcmp(usuario(i).rut,rut)
        idUsuario = i;
        seEncuentra = true;
        break
    end
    i = i + 1;
end

if seEncuentra == 0
    idUsuario = i;
    usuario(idUsuario).rut = rut;
    fprintf(['Al parecer es un usuario nuevo, así que le pediremos sus datos ' ...
             'antes de continuar.\n']);
    [nombre, apellido] = validarNombres();
    usuario(idUsuario).nombre = nombre;
    usuario(idUsuario).apellido = apellido;
    fprintf('%s, ha sido registrad@ con éxito.\n', usuario(idUsuario).nombre);
end
