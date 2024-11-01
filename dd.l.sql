CREATE DATABASE UNI;

USE UNI;

CREATE TABLE Estudiantes(
    Estudiante_Id INT NOT NULL PRIMARY KEY,
    Nombre_Estudiante VARCHAR(255) NOT NULL
);

CREATE TABLE Horarios(
    Horario_Id INT NOT NULL PRIMARY KEY,
    Dia DATE NOT NULL,
    Hora_Inicio TIME NOT NULL,
    Hora_Final TIME NOT NULL
);

CREATE TABLE Docentes(
    Docente_Id INT NOT NULL PRIMARY KEY,
    Nombre_Docente VARCHAR(255) NOT NULL
);

CREATE TABLE Aulas(
    Aula_Id INT NOT NULL PRIMARY KEY,
    Lugar VARCHAR(255) NOT NULL
);

CREATE TABLE Cursos(
    Curso_Id INT NOT NULL PRIMARY KEY,
    Nombre_Curso VARCHAR(255) NOT NULL
);

CREATE TABLE Estudiantes_Cursos(
    Estudiante_Id INT,
    Curso_Id INT,
    PRIMARY KEY (Estudiante_Id, Curso_Id),
    FOREIGN KEY (Estudiante_Id) REFERENCES Estudiantes (Estudiante_Id) ON DELETE CASCADE,
    FOREIGN KEY (Curso_Id) REFERENCES Cursos (Curso_Id) ON DELETE CASCADE
);

CREATE TABLE Docentes_Cursos(
    Docente_Id INT,
    Curso_Id INT,
    PRIMARY KEY (Docente_Id, Curso_Id),
    FOREIGN KEY (Docente_Id) REFERENCES Docentes (Docente_Id) ON DELETE CASCADE,
    FOREIGN KEY (Curso_Id) REFERENCES Cursos (Curso_Id) ON DELETE CASCADE
);

CREATE TABLE Aulas_Cursos(
    Aula_Id INT,
    Curso_Id INT,
    PRIMARY KEY (Aula_Id, Curso_Id),
    FOREIGN KEY (Aula_Id) REFERENCES Aulas (Aula_Id) ON DELETE CASCADE,
    FOREIGN KEY (Curso_Id) REFERENCES Cursos (Curso_Id) ON DELETE CASCADE
);

CREATE TABLE Horarios_Cursos(
    Horario_Id INT,
    Curso_Id INT,
    PRIMARY KEY (Horario_Id, Curso_Id),
    FOREIGN KEY (Horario_Id) REFERENCES Horarios (Horario_Id) ON DELETE CASCADE,
    FOREIGN KEY (Curso_Id) REFERENCES Cursos (Curso_Id) ON DELETE CASCADE
);