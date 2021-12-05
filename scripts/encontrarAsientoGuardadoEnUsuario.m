function encontrarAsientoGuardadoEnUsuario(usuario, numUsuario)

for i=1:size(matrizPrueba)
    if s == usuario(numUsuario).reserva(i,1) && ...
       f == usuario(numUsuario).reserva(i,2) && ...
       c == usuario(numUsuario).reserva(i,3)
        fprintf('Se encuentra.');
    else
        fprintf('No se encuentra');
    end
end