create database empresa1;
use empresa1;

create table direccion(
idDireccion int primary key,
Direccion varchar(45),
Ciudad varchar(45),
Pais varchar(45)
);
create table categoria(
idCategoria int primary key,
Nombre varchar(45)
);
create table cliente(
idCliente int primary key,
Nombre varchar(45),
Apellido varchar(45),
Edad int,
Direccion_idDireccion int,
foreign key (Direccion_idDireccion) references direccion(idDireccion)
);
create table peliculas(
idPeliculas int primary key,
Nombre varchar(45),
Duracion int,
Descripcion text,
Año int,
Categoria_idCategoria int,
foreign key (Categoria_idCategoria) references categoria(idCategoria)
);
create table renta(
idRenta int primary key,
Fecha_Renta date,
Fecha_entrega date,
Inventario_idCopiasPeliculas int,
foreign key (Inventario_idCopiasPeliculas) references inventario(idCopiasPeliculas),
Cliente_idCliente int,
foreign key ( Cliente_idCliente) references cliente(idCliente)
);
create table inventario(
idCopiasPeliculas int primary key,
Peliculas_idPeliculas int,
foreign key (Peliculas_idPeliculas) references peliculas(idPeliculas),
Disponible tinyint(1)
);
create table yestoque(
yestoparaque varchar(60)
);
create table yestoque2(
yestoparaque varchar(60)
);
insert into direccion(idDireccion,Direccion,Ciudad,Pais)
values(1,"el limon","z18","guatemala"),
(2,"el platano","z1","guatemala"),
(3,"el papayon","z7","guatemala"),
(4,"el pequeño cesar","z27","guatemala"),
(5,"wendy","z2","guatemala");
insert into categoria(idCategoria,Nombre)
values(1,"accion"),
(2,"comedia"),
(3,"miedo"),
(4,"risa"),
(5,"si");
insert into cliente(idCliente,Nombre,Apellido,Edad,Direccion_idDireccion)
values(1,"Diego","Davila",2,1),
(2,"Juliana","Polanco",13,2),
(3,"Victor","Herrera",22,3),
(4,"Rafael","Carrera",45,4),
(5,"Jacobo","Galarga",57,5),
(6,"Juliana","Polanco",12,5);
insert into peliculas(idPeliculas,Nombre,Duracion,Descripcion,Año,Categoria_idCategoria)
values(1,"chancho picardillo",120,"las asombrosas aventuras del chancho picardillo",1420,1),
(2,"G",150,"la gran historia de la gran G",1920,2),
(3,"Minecraft",220,"i am steve",2012,3),
(4,"a todo gas",90,"carros",2020,4),
(5,"omori",160,"depresion de niños muertos",2000,5),
(6,"POKEMON1",160,"depresion de niños muertos",2000,5);
insert into renta(idRenta,Fecha_Renta,Fecha_Entrega,Inventario_idCopiasPeliculas,Cliente_idCliente)
values(1,'2007-06-11','2025-11-22',1,1),
(2,'2024-06-12','2025-11-22',2,2),
(3,'2014-07-25','2025-11-22',3,3),
(4,'2023-02-02','2025-11-22',4,4),
(5,'2018-02-31','2025-11-22',5,5);
insert into inventario(idCopiasPeliculas,Peliculas_idPeliculas,Disponible)
values(1,1,0),
(2,2,1),
(3,3,1),
(4,4,1),
(5,5,1);
select * from cliente where nombre="Juliana";
delete from peliculas where nombre="POKEMON1";
insert into peliculas(idPeliculas,Nombre,Duracion,Descripcion,Año,Categoria_idCategoria)
values(6,"POKEMON1",160,"depresion de niños muertos",2000,5);
select * from categorias order by Nombre asc;
select * from peliculas order by Nombre desc;
insert into yestoque(yestoparaque)
values("y esto que profe");
insert into yestoque2(yestoparaque)
values("y esto que profe 2");
select * from direccion;
select * from cliente;
select * from renta;
select * from inventario;
select * from peliculas;
select * from categoria;
select * from yestoque;
select * from yestoque2;
