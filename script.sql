CREATE DATABASE lenguas; 
USE lenguas;

CREATE TABLE estatus (
    id_estatus INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100)
);

CREATE TABLE lengua (
    id_lengua INT PRIMARY KEY AUTO_INCREMENT, 
    nombre VARCHAR(100), 
    id_estatus INT,
    FOREIGN KEY (id_estatus) REFERENCES estatus(id_estatus)
);

CREATE TABLE lugar (
    id_lugar INT PRIMARY KEY AUTO_INCREMENT,
    distrito VARCHAR(100),
    municipio VARCHAR(100), 
    region VARCHAR(100)
);

CREATE TABLE censos (
    id_censos INT PRIMARY KEY AUTO_INCREMENT,
    id_lugar INT,
    FOREIGN KEY (id_lugar) REFERENCES lugar(id_lugar),
    id_lengua INT,
    FOREIGN KEY (id_lengua) REFERENCES lengua(id_lengua),
    año VARCHAR(45), 
    femenino INT, 
    masculino INT
);

CREATE TABLE palabras (
    id_palabra INT PRIMARY KEY AUTO_INCREMENT,
    palabra VARCHAR(100),
    traduccion VARCHAR(100),
    id_lengua INT,
    FOREIGN KEY (id_lengua) REFERENCES lengua(id_lengua)
);


INSERT INTO estatus (id_estatus, nombre) VALUES
(1, 'Vigente'),
(2, 'En peligro'),
(3, 'Extinta');

INSERT INTO lengua (id_lengua, nombre, id_estatus) VALUES
(1, 'Zapoteco', 1),
(2, 'Mixteco', 1),
(3, 'Mixe', 1),
(4, 'Huave', 2),
(5, 'Chocholteco', 3),
(6, 'Ixcateco', 2),
(7, 'Popoloca', 2),
(8, 'Amuzgo', 1),
(9, 'Mazateco', 1),
(10, 'Triqui', 1);


INSERT INTO lugar (id_lugar, distrito, municipio, region) VALUES
(1, 'Juchitán', 'Juchitán de Zaragoza', 'Istmo'),
(2, 'Jamiltepec', 'San Pedro Jicayán', 'Costa'),
(3, 'Ixtlán', 'Santa María Tlahuitoltepec', 'Sierra Norte'),
(4, 'Tehuantepec', 'San Mateo del Mar', 'Istmo'),
(5, 'Tlacolula', 'Teotitlán del Valle', 'Valles Centrales'),
(6, 'Huautla', 'Huautla de Jiménez', 'Cañada'),
(7, 'Putla', 'Putla Villa de Guerrero', 'Sierra Sur'),
(8, 'Silacayoápam', 'San Simón Zahuatlán', 'Mixteca'),
(9, 'Sola de Vega', 'Santa María Sola', 'Sierra Sur'),
(10, 'Juxtlahuaca', 'Santiago Juxtlahuaca', 'Mixteca');


INSERT INTO censos (id_lugar, id_lengua, año, femenino, masculino) VALUES
(1, 1, '2020', 26000, 23950),     
(2, 2, '2020', 4285, 4032),      
(3, 3, '2020', 4800, 4600),      
(4, 4, '2020', 1600, 1450),       
(5, 1, '2020', 1180, 1125),      
(6, 9, '2020', 5300, 4900),      
(7, 10, '2020', 2700, 2500),      
(8, 5, '2020', 0, 0),            
(9, 6, '2020', 120, 90),          
(10, 7, '2020', 300, 280);        


INSERT INTO palabras (palabra, traduccion, id_lengua) VALUES
('bidxa', 'flor', 1),         
('ndaa', 'agua', 2),         
('jaá', 'casa', 3),           
('üyüü', 'mar', 4),          
('kúmí', 'sol', 5),           
('tzí', 'fuego', 6),          
('tàà', 'tierra', 7),         
('ntee', 'persona', 8),       
('ndeé', 'maíz', 9),          
('níní', 'niño', 10);         


