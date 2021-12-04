function [usuario, idUsuario] = buscarUsuario(usuario)

[rut,nombre,apellido] = preguntarDatosUsuario();

% Pendiente hacer una mini validación de rut con nombre y apellido!

seEncuentra = false;
i = 1;
while i <= length(usuario)
    if strcmp(usuario(i).rut,'')==1 && i == 1
        idUsuario = i;
        usuario(idUsuario).rut = rut;
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
    usuario(idUsuario).nombre = nombre;
    usuario(idUsuario).apellido = apellido;
    usuario(idUsuario).reserva = [];
end

% Aqui va a buscar al usuario por rut en la estructura usuario, pero si no
% lo encuenta entonces va a agregarlo con un nuevo numero de ID y va a
% terminar retornando ese numero de id.