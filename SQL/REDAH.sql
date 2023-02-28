Create database REDAH

use REDAH


create table TipoHospital(
IdTipo int primary key identity(1,1) not null,
NombreTipo nvarchar(20)
)

create table Hospital(
IdHospital int primary key identity(1,1) not null,
NombreH nvarchar(50),
NumDepartamento int,
DireccionH nvarchar(70),
TelefonoH char(8) check(TelefonoH like '[2|5|7|8][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
TipoH int foreign key references TipoHospital(IdTipo) not null
)


create table TipoPoliza(
IdTipoP int primary key identity(1,1) not null,

NombreTipoP nvarchar(30)
)
create table Poliza(
NumerodePoliza int primary key identity(1,1) not null,
[Tipo Poliza] int foreign key references TipoPoliza(IdTipoP) not null,
DescripcionP nvarchar(100),
CostoP float,
CostoExtencionP float,
ValorCobertura float
)

create table Asegurado(
NumerodeAsegurado int primary key identity(1,1) not null,
idasegurado int,
PrimerNombre nvarchar(15) not null,
SegundoNombre nvarchar(15),
PrimerApellido nvarchar(15) not null,
SegundoApellido nvarchar(15),
Direccion nvarchar (70)
)

create table Vendedor(
NumerodeVendedor int primary key identity(1,1) not null,
PrimerNombre nvarchar(15) not null,
SegundoNombre nvarchar(15),
PrimerApellido nvarchar(15) not null,
SegundoApellido nvarchar(15),
Direccion nvarchar (70),
TelV char(8) check(TelV like '[2|5|7|8][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
)

create table ContratoPoliza(
IdContratoPoliza int primary key identity(1,1) not null,
IDPoliza int foreign key references Poliza (NumerodePoliza) not null,
FechaContratacion datetime,
FechaVigenciaInicial date,
FechaVigenciaFinal date,
)


create table FamAsegurado(
IdFamAsegurado int primary key identity(1,1) not null,
PrimerNombre nvarchar(15) not null,
SegundoNombre nvarchar(15),
PrimerApellido nvarchar(15) not null,
SegundoApellido nvarchar(15),
Edad int,
FechaNac date,
Direccion nvarchar(70),

)

create table DetalleContratoPoliza(
IdContrato int foreign key references ContratoPoliza(IdContratoPoliza) not null,
IdVendedor int foreign key references Vendedor(NumerodeVendedor) not null,
IdAsegurado int foreign key references Asegurado(NumerodeAsegurado) not null,
IdFamiliar int foreign key references FamAsegurado(IdFamAsegurado),
)


create table Hospitalizacion(
IdAsegurados int primary key identity(1,1) not null,
Idhospital int,
NombreHospital nvarchar(50),
Medico nvarchar(50),
FechaEntrada date,
FechaSalida date,
DescripcionGastos nvarchar(100),
MontoGenerado float,
)

alter table Hospitalizacion
add foreign key (Idhospital)
references Hospital(IdHospital)

alter table Asegurado
add foreign key (idasegurado)
references Hospitalizacion(IdAsegurados)






