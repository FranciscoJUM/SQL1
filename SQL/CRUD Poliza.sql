-- add 
create procedure AgregarPoliza 
@IdPoliza int, @FechaCon datetime, @FechaViginc date, @FechaVingfin date
as
	     insert into ContratoPoliza values(@IdPoliza,@FechaCon,@FechaViginc,@FechaVingfin)

--borrar
create procedure Borrar
@id int
AS
DELETE FROM ContratoPoliza WHERE IdContratoPoliza = @id

--update
create procedure Actualizar
@idActualizar int, @IdPoliza int, @FechaCon datetime, @FechaViginc date, @FechaVingfin date
as
update ContratoPoliza
set IDPoliza = @IdPoliza,
FechaContratacion = @FechaCon,
FechaVigenciaInicial = @FechaViginc,
FechaVigenciaFinal = @FechaVingfin

where IdContratoPoliza = @idActualizar


--buscar 1
create procedure Buscarporid
@id int 
as
select * from ContratoPoliza where IdContratoPoliza = @id

--buscar 2
create procedure BuscarRangoFecha @f1 datetime, @f2 datetime
as
select * from ContratoPoliza
where FechaContratacion between @f1 and @f2

--buscar 3

creAte procedure findall 
as
select* from ContratoPoliza