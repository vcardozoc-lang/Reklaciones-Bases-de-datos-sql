create database universidad;

use universidad;

create table profesores (
id_profesor INT primary key auto_increment,
nombre VARCHAR(100),
email VARCHAR(50)
);

insert into profesores (nombre, email) values
("Carlos Perez", "carlosp@gmail.com"),
("Ana Gomez", "carlosp@gmail.com"),
("Luis Torres", "luistorres@gmail.com"),
("María López", "lopezmariap@gmail.com"),
("Pedro Ramírez", "pedror@gmail.com");

create table materias (
id_materia INT primary key auto_increment,
nombre VARCHAR(50),
id_profesor INT,
foreign key (id_profesor) references profesores(id_profesor)
);


insert into materias (nombre, id_profesor) values
("Álgebra", 1),
("Cálculo", 1),
("JavaScrip", 2),
("Base de Datos", 5),
("Física Mecánica", 3),
("Lenguaje", 3),
("Ciencias Naturales", 4);

select p.nombre, m.id_materia 
from profesores p
join materias m on p.id_profesor = m.id_profesor;


create table estudiantes (
    id_estudiante INT primary key auto_increment,
    nombre VARCHAR(100),
    edad INT
);

insert into estudiantes (nombre, edad) VALUES
('Juan', 20),
('Sofía', 22),
('Miguel', 19),
('Laura', 21),
('Andrés', 23);

create table estudiantes_materias (
    id_estudiante INT,
    id_materia INT,
    PRIMARY KEY (id_estudiante, id_materia),
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante),
    FOREIGN KEY (id_materia) REFERENCES materias(id_materia)
);

insert into estudiantes_materias VALUES
(1,1),
(1,2),
(2,3),
(3,1),
(4,4),
(5,5);