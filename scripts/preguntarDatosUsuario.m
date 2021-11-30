function [rut, nombre, apellido] = preguntarDatosUsuario()

%clc;
fprintf('\n-------------------------\n')
disp('    CONSULTA DE DATOS    ');
fprintf('\n-------------------------\n');

rut = validarRut();
[nombre, apellido] = validarNombres();