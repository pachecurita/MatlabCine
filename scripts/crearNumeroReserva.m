function numeroReserva = crearNumeroReserva(numSala, fila, columna, ocupados)

numeroRes = strcat(num2str(numSala),num2str(fila),num2str(columna), num2str(ocupados));

numeroReserva = str2double(numeroRes);

% El numero de reserva consiste en el numero de sala, de fila, columna y
% el numero de la cantidad de asientos ocupados hasta el momento en el que
% la persona compra el asiento. Por ejemplo, una persona quiso comprar en
% la sala 5, el asiento ubicado en la fila 13 columna 15 y hasta ese
% momento es el primer asiento en ser comprado, entonces:
% numeroReserva = 513151
% La extensión máxima de los numeros de reserva deberían ser de 8 digitos,
% ya que el máximo que se puede comprar es sala=5, fila=25, columna=20 y
% asientoOcupado=500, entonces quedaría el numReserva = 52520500
% No hay ningun numero de reserva igual a otro.