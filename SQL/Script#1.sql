create database Agencia
go

use Agencia
go

create table Sucursal
(CodigoS int primary key,
codigoT int,
codigoH int,
direccion varchar(70),
Telefono int )
go 

create table Hotel 
(CodigoH int primary key,
codigoDH int,
Nombre varchar(20),
Direccion varchar(70), 
Ciudad varchar(20),
Telefono int, 
Numero_plazas int
)
go


create table  Vuelo
(CodidoV int primary key,
codigoDV int,
Fecha date , Hora date , 
Origen varchar(20) , 
Destino Varchar (20), 
Plazas int, 
Plazas_disponibles int
)
go 

create table Turista
(CodigoT int primary key,
codigoV int,
Nombre varchar(20),
Apellido varchar(20),
Direccion Varchar(70),
Telefono int)
go

Create table Detalle_Vuelo
(CodigoDV int primary key,
Clase varchar(20)
)

create table Detalle_Hotel
(CodigoDH int primary key,
Regimen varchar(20)
)

-- Creacionde relacion

--1. Unioin Vuelo a detalle vuelo
alter table Vuelo
add foreign key (codigoDV)
references Detalle_Vuelo (CodigoDV)

--2. Union de hotel y detalle hotel
alter table Hotel
add foreign key (codigoDH)
references Detalle_Hotel (CodigoDH)

--3. Union Vuelo y turista
alter table Turista
add foreign key (codigoV)
references Vuelo(CodidoV)

--4. Union Sucursal Y Turista 
alter table Sucursal
add foreign key (codigoT)
references Turista(CodigoT)

--5. Union Sucursal y Hotel
alter table Sucursal
add foreign key (codigoH)
references Hotel(CodigoH)

