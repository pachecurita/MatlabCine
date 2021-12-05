function [usuario, idUsuario] = buscarUsuario(usuario)
% Busca al usuario por rut en la estructura usuario, pero si no
% lo encuenta entonces va a agregarlo con un nuevo numero de ID y va a
% terminar retornando ese numero de ID.

rut = validarRut();
seEncuentra = false;

i = 1;
while i <= length(usuario)
    if strcmp(usuario(i).rut,'')==1 && i == 1
        idUsuario = i;
        usuario(idUsuario).rut = rut;
        fprintf('Al parecer es un usuario nuevo, así que le pediremos sus datos antes de continuar.\n');
        [nombre, apellido] = validarNombres();
        usuario(idUsuario).nombre = nombre;
        usuario(idUsuario).apellido = apellido;
        usuario(idUsuario).reserva = [];
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
    fprintf('Al parecer es un usuario nuevo, así que le pediremos sus datos antes de continuar.\n');
    [nombre, apellido] = validarNombres();
    usuario(idUsuario).nombre = nombre;
    usuario(idUsuario).apellido = apellido;
    fprintf('%s, ha sido registrad@ con éxito.\n', usuario(idUsuario).nombre);
    usuario(idUsuario).reserva = [];
end
