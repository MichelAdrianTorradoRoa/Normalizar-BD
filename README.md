# Normalizar DB

Este repositorio contiene el paso a paso para normalizar una base de datos de 

## Tabla de Contenidos

1. [Primera Forma Normal (1FN)](##primera-forma-normal-1fn)
2. [Segunda Forma Normal (2FN)](##segunda-forma-normal-2fn)
3. [Tercera Forma Normal (3FN)](##tercera-forma-normal-3fn)
4. [Autores](#autores)

## Primera Forma Normal

![Primera_Forma_Normal](<f1.png>)

Para llevar la tabla a la Primera Forma Normal (1FN), se tomaron las siguientes acciones clave:

- Asegurar atomicidad: Se descompuso el campo Horario, que combinaba el día y la hora en una sola columna, en dos columnas independientes: Día y Hora. Esto asegura que cada celda contenga un valor indivisible y atómico.

- Eliminación de duplicación en el formato:
Aunque las filas ya eran únicas, dividir el Horario en dos columnas evita la redundancia o el riesgo de tener múltiples valores en una sola celda, garantizando que los datos sean más fáciles de manejar y consultar.

## Segunda Forma Normal

![Segunda_Forma_Normal](<f2.png>)

La **Segunda Forma Normal (2NF)** se logra eliminando las dependencias parciales. Es decir, se elimina la redundancia separando los datos en tablas que contengan información específica y relevante solo para una entidad. En este caso, los datos de los estudiantes, cursos y la relación entre ellos se dividen en diferentes tablas.

En la Segunda Forma Normal, se crearon las siguientes tablas:
- Una tabla para **Estudiantes**, que contiene el `Estudiante_Id` y `Nombre_Estudiante`.
- Una tabla para **Cursos**, que contiene el `Id_Curso`, `Nombre_Docente`, `Curso`, `Aula`, y `Horario`.
- Una tabla intermedia que relaciona a los **Estudiantes con sus Cursos**, donde cada entrada registra el `Estudiante_Id` y el `Curso`.

Esto elimina la repetición de datos como los nombres de los docentes, el aula y el horario, que antes se repetían para cada estudiante que tomaba el mismo curso.


## Tercera Forma Normal

![Tercera_Forma_Normal](<f3.png>)

La **Tercera Forma Normal (3NF)** va un paso más allá al eliminar dependencias transitivas. En este caso, hemos separado aún más la información de los cursos en diferentes tablas:
- Una tabla para **Cursos** con el `Curso_Id` y el nombre del curso.
- Una tabla para los **Detalles del Curso**, que contiene el `Curso_Id`, el docente, el aula y el horario, asociando esa información con el curso.
- Una tabla para **Estudiantes**, que sigue igual con el `Estudiante_Id` y `Nombre_Estudiante`.
- Finalmente, la tabla de relación **Estudiantes-Cursos**, que asocia a los estudiantes con los cursos que están tomando mediante los `Estudiante_Id` y `Curso_Id`.

Esta normalización reduce la redundancia al garantizar que los docentes, aulas y horarios se almacenen solo una vez para cada curso, y las relaciones se manejan a través de identificadores (IDs), evitando la duplicación de información innecesaria.

## Autores
Hecho por [@MichelAdrianTorradoRoa](https://github.com/MichelAdrianTorradoRoa) y [@CalderonxD](https://github.com/CalderonxD)