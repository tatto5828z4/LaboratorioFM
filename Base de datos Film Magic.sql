create database FilmMagic;
Use FilmMagic;

create table Empleado
(
id_empleado int primary key,
nombre_usuario varchar (20) not null,
apellido_usuario varchar (20) not null,
cui_usuario int not null,
tel_usuario int not null,
correo_usuario varchar (50) not null
)engine = InnoDB;

create table cliente
(
cui_cliente int primary key,
nombre_cliente varchar (20) not null,
correo_cliente varchar(50) not null,
telefono_cliente int not null,
num_tarjeta int not null,
id_empleado int,
foreign key (id_empleado) references Empleado (id_empleado)
)engine = InnoDB;

create table autor
(
id_autor int primary key,
nombre_autor varchar (50) not null,
apellido_autor varchar (50) not null,
ciudad_autor varchar (30) not null
)engine = InnoDB;

create table producto
(
id_producto int primary key,
nombre_producto varchar (40) not null,
cantidad_producto int not null,
tipo_producto varchar (40)not null,
precio_producto float not null,
estado_producto char,
id_autor int,
foreign key(id_autor) references autor(id_autor)
)engine = InnoDB;