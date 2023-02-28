create database Asociacion
go 
use Asociacion
go


create table Inmueble 
(IdInmueble int primary key,
idPisos int,
idLocales int,
idInquilino int,
Giro_Negocio varchar(20),
Direccion varchar(70),
Numero int,
Codigo_Postal int,
)
go

create table Pisos
(IdPiso int primary key,
Planta int,
Letra varchar(1),
Costo money 
)
go

create table Locales
(IdLocales int primary key,
Planta int,
Letra varchar(1),
Costo money
)
go

create table Inquilino
(IdInquilino int primary key,
Nombre varchar(20),
Cedula varchar(20),
Edad int , 
Sexo Varchar(1)
)
go

create table Secretario
(IdSec int primary key,
idCuenta int,
Nombre varchar(20)
)
go

create table Cuenta
(IdCuenta int primary key,
Saldo money,
Estado varchar(10),
Fecha date,
)
go

Create table Adimistradores
(IdAdmin int primary key,
idSec int,
idInmueble int 
)
go

--Unioin de pisos, locales e inquilinos a Inmueble
--1.
alter table inmueble
add foreign key (idPisos)
references Pisos(IdPiso)
--2.
alter table inmueble
add foreign key (idLocales)
references Locales(IdLocales)
--3.
alter table inmueble
add foreign key (idInquilino)
references Inquilino(IdInquilino)

--Union de secretario y cuenta 
alter table secretario
add foreign key (idCuenta)
references Cuenta(IdCuenta)

--Unioin de secretario e inmueble con Administradores
--1.
alter table Adimistradores
add foreign key (idSec)
references Secretario (IdSec)
--2
alter table Adimistradores
add foreign key (idInmueble)
references Inmueble (IdInmueble)