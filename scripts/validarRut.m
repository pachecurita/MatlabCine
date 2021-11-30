function rut = validarRut()
% funcion validarRut():
% Se encarga de realizar la validación del rut, es decir, revisa si el
% usuario ingresó un rut válido chileno, que cumpla con los parámetros
% establecidos. No recibe ningún parámetro, pero dentro de la función 
% pregunta el rut a través de un str input. 
% Retorna el rut validado del usuario.
%       Ejemplo de uso:
%       >>> rut = validarRut();

cero = '0';

continuar = true;
while continuar %Aqui hay un error que debo corregir: PENDIENTE!
    % Cuando ingreso caracteres alfanumericos tira error.
    rutConDigito = upper(input('Ingrese su rut sin puntos ni guión: ', 's'));
    if length(rutConDigito) == 8
        rutConDigitoLargo9 = strcat(cero,rutConDigito);
        continuar = false;
    elseif length(rutConDigito) == 9
        rutConDigitoLargo9 = rutConDigito;
        continuar = false;
    else
        continuar = true;
    end
end

rutSinDigito = rutConDigitoLargo9(1:8);

rutListaInt = [];
numerosCalculoRut = [3, 2, 7, 6, 5, 4, 3, 2];

for i=1:8
    rutListaInt = [rutListaInt, str2double(rutSinDigito(i))];
end

calculo = [];

for a=1:8
    resultado = [numerosCalculoRut(a) * rutListaInt(a)];
    calculo = [calculo, resultado];
end

calculo1 = sum(sum(calculo));
calculo2 = floor(calculo1 / 11);
calculo3 = calculo1 - (11 * calculo2);
calculo4 = 11 - calculo3;

digito_verificador = num2str(calculo4);

if calculo4 == 10
    digito_verificador = 'K';
elseif calculo4 == 11
    digito_verificador = '0';
end

rutVerificado = strcat(rutSinDigito,digito_verificador);

if rutVerificado == rutConDigitoLargo9
    rut = rutVerificado;
    return
else
    fprintf('No es un rut válido chileno. Por favor vuelva a intentarlo.\n');
    rut = validarRut();
end

