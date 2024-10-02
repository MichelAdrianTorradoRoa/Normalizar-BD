# Normalizar DB

Este repositorio contiene el paso a paso para normalizar una base de datos de 

## Primera Forma Normal

![Primera_Forma_Normal](<f1.png>)

    Para llevar la tabla a la Primera Forma Normal (1FN), se tomaron las siguientes acciones clave:

- Asegurar atomicidad: Se descompuso el campo Horario, que combinaba el día y la hora en una sola columna, en dos columnas independientes: Día y Hora. Esto asegura que cada celda contenga un valor indivisible y atómico.

- Eliminación de duplicación en el formato:
Aunque las filas ya eran únicas, dividir el Horario en dos columnas evita la redundancia o el riesgo de tener múltiples valores en una sola celda, garantizando que los datos sean más fáciles de manejar y consultar.

## Segunda Forma Normal

    Para 
