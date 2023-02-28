--Hecho por: Francisco Javier Urbina Mejia


create database Centro
use Centro

-- Tabla Personal
Create table PERSONAL
(ENOMBRE varchar(50),
 CARGO varchar(10),
 ESUELDO integer,
 DEPT varchar(10))

 INSERT INTO PERSONAL (ENOMBRE,CARGO,ESUELDO,DEPT) VALUES ('LUCAS','EVANG1',53,'THEO')
 INSERT INTO PERSONAL (ENOMBRE,CARGO,ESUELDO,DEPT) VALUES ('MARCOS','EVANG2',52,'THEO')
 INSERT INTO PERSONAL (ENOMBRE,CARGO,ESUELDO,DEPT) VALUES ('MATEO','EVANG3',51,'THEO')
 INSERT INTO PERSONAL (ENOMBRE,CARGO,ESUELDO,DEPT) VALUES ('DICK NIX','LADRON',25001,'PHIL')
 INSERT INTO PERSONAL (ENOMBRE,CARGO,ESUELDO,DEPT) VALUES ('HANK KISS','BUFON',25000,'PHIL')
 INSERT INTO PERSONAL (ENOMBRE,CARGO,ESUELDO,DEPT) VALUES ('JUAN','EVANG4',54,'THEO')
 INSERT INTO PERSONAL (ENOMBRE,CARGO,ESUELDO,DEPT) VALUES ('EUCLIDES','ATE. LAB.',1000,'MATH')
 INSERT INTO PERSONAL (ENOMBRE,CARGO,ESUELDO,DEPT) VALUES ('ARQUIMIDES','ATE. LAB.',200,'ENG')
 INSERT INTO PERSONAL (ENOMBRE,CARGO,ESUELDO,DEPT) VALUES ('DVINCI','ATE. LAB.',500,null)

 -- Tabla Claustro
 Create table CLAUSTRO
(FNO int,
 FNOMBRE varchar(80),
 FDOMI varchar(80),
 FFCANTI date,
 FNUMDPE int,
 FSUELDO money,
 FDEP varchar(10))

INSERT INTO CLAUSTRO(FNO,FNOMBRE,FDOMI,FFCANTI,FNUMDPE,FSUELDO,FDEP) VALUES (6,'KATHY PEPE','CALLE DE LAPIEDRA, 7','1979-01-15',2,35000.00,'PHIL')
INSERT INTO CLAUSTRO(FNO,FNOMBRE,FDOMI,FFCANTI,FNUMDPE,FSUELDO,FDEP) VALUES (10,'JESSIE MARTIN','DR. DEL ESTE, 4','1969-09-01',1,45000.00,'THEO')
INSERT INTO CLAUSTRO(FNO,FNOMBRE,FDOMI,FFCANTI,FNUMDPE,FSUELDO,FDEP) VALUES (08,'JOSE COHN','APTDO, CORREOS 1138','1979-07-09',2,35000.00,'CIS')
INSERT INTO CLAUSTRO(FNO,FNOMBRE,FDOMI,FFCANTI,FNUMDPE,FSUELDO,FDEP) VALUES (85,'AL HARTLEY','CALLE DE LA PLATA','1979-09-05',7,45000.00,'CS')
INSERT INTO CLAUSTRO(FNO,FNOMBRE,FDOMI,FFCANTI,FNUMDPE,FSUELDO,FDEP) VALUES (60,'JULIA MARTIN','DR. ESTE, 4','1969-09-01',1,45000.00,'PHIL')
INSERT INTO CLAUSTRO(FNO,FNOMBRE,FDOMI,FFCANTI,FNUMDPE,FSUELDO,FDEP) VALUES (65,'LISA BOBAK','CAMINO DE LA RISA, 77','1981-09-06',null,36000.00,'THEO')
INSERT INTO CLAUSTRO(FNO,FNOMBRE,FDOMI,FFCANTI,FNUMDPE,FSUELDO,FDEP) VALUES (80,'BARB HLAVATY','CALLE DEL SUR, 489','1982-01-16',3,35000.00,'CIS')

--Tabla Estudiante
Create Table ESTUDIANTE
(SON int,
 SNOMBRE varchar (30),
 SDOMI varchar(30),
 STLFNO varchar(20),
 SFNACIM int,
 SIQ int,
 SAVDFNO int,
 SESP varchar(10))

INSERT INTO ESTUDIANTE (SON,SNOMBRE,SDOMI,STLFNO,SFNACIM,SIQ,SAVDFNO,SESP) VALUES (325,'CURLEY DUBAY','CONNECTICUT','203-1234567',780517,122,10,'THEO')
INSERT INTO ESTUDIANTE (SON,SNOMBRE,SDOMI,STLFNO,SFNACIM,SIQ,SAVDFNO,SESP) VALUES (150,'LARRY DUBAY','CONNECTICUT','203-123-4567',780517,121,80,'CIS')
INSERT INTO ESTUDIANTE (SON,SNOMBRE,SDOMI,STLFNO,SFNACIM,SIQ,SAVDFNO,SESP) VALUES (100,'MOE DUBAY','CONNECTICUT','203-123-4567',780517,12,10,'THEO')
INSERT INTO ESTUDIANTE (SON,SNOMBRE,SDOMI,STLFNO,SFNACIM,SIQ,SAVDFNO,SESP) VALUES (800,'ROCKY BALBOA','PENNSYLVANIA','112-112-1122',461004,99,60,'PHIL')

Create table MATRICULA
(CON varchar(10),
 SEC int,	
 SON int,
 FECHA_MAT date,
 HORA_MAT time)

INSERT INTO MATRICULA (CON,SEC,SON,FECHA_MAT,HORA_MAT) VALUES ('C11',01,325,'1987-01-04','09:41:30')
INSERT INTO MATRICULA (CON,SEC,SON,FECHA_MAT,HORA_MAT) VALUES ('C11',01,800,'1987-12-15','11:49:00')
INSERT INTO MATRICULA (CON,SEC,SON,FECHA_MAT,HORA_MAT) VALUES ('C11',02,100,'1987-12-17','09:32:00')
INSERT INTO MATRICULA (CON,SEC,SON,FECHA_MAT,HORA_MAT) VALUES ('C11',02,150,'1987-12-17','09:32:30')
INSERT INTO MATRICULA (CON,SEC,SON,FECHA_MAT,HORA_MAT) VALUES ('P33',01,100,'1987-12-23','11:30:00')
INSERT INTO MATRICULA (CON,SEC,SON,FECHA_MAT,HORA_MAT) VALUES ('P33',01,800,'1987-12-23','11:23:00')
INSERT INTO MATRICULA (CON,SEC,SON,FECHA_MAT,HORA_MAT) VALUES ('T11',01,100,'1987-12-23','11:21:00')
INSERT INTO MATRICULA (CON,SEC,SON,FECHA_MAT,HORA_MAT) VALUES ('T11',01,150,'1987-12-15','11:35:30')
INSERT INTO MATRICULA (CON,SEC,SON,FECHA_MAT,HORA_MAT) VALUES ('T11',01,800,'1987-12-15','14:00:00')

-- Tabla Clase
Drop table CLASE
Create table CLASE
(CON varchar(10),
 SEC int,
 CINSTRFNO	int, 
 CDIA varchar(3),
 CHORA nvarchar(20),
 CEDIF varchar(3),
 CDESPACHO int)

 INSERT INTO CLASE (CON,SEC,CINSTRFNO,CDIA,CHORA,CEDIF,CDESPACHO) VALUES ('C11',01,08,'LU','08:00 – 09:00 am','SC',305)
 INSERT INTO CLASE (CON,SEC,CINSTRFNO,CDIA,CHORA,CEDIF,CDESPACHO) VALUES ('C11',02,08,'MA','08:00 – 09:00 am','SC',306)
INSERT INTO CLASE (CON,SEC,CINSTRFNO,CDIA,CHORA,CEDIF,CDESPACHO) VALUES ('C33',01,80,'MI','09:00 – 10 :00 am','SC',305)
INSERT INTO CLASE (CON,SEC,CINSTRFNO,CDIA,CHORA,CEDIF,CDESPACHO) VALUES ('C55',01,85,'JU','11:00 – 12:00 am','HU',306)
INSERT INTO CLASE (CON,SEC,CINSTRFNO,CDIA,CHORA,CEDIF,CDESPACHO) VALUES ('P11',01,06,'JU','09:00 – 10:00 am','HU',102)
INSERT INTO CLASE (CON,SEC,CINSTRFNO,CDIA,CHORA,CEDIF,CDESPACHO) VALUES ('P33',01,06,'VI','11:00 – 12:00 am','HU',201)
INSERT INTO CLASE (CON,SEC,CINSTRFNO,CDIA,CHORA,CEDIF,CDESPACHO) VALUES ('T11',01,10,'LU','10:00 – 11:00 am','HU',101)
INSERT INTO CLASE (CON,SEC,CINSTRFNO,CDIA,CHORA,CEDIF,CDESPACHO) VALUES ('T11',02,65,'LU','10:00 – 11:00 am','HU',102)
INSERT INTO CLASE (CON,SEC,CINSTRFNO,CDIA,CHORA,CEDIF,CDESPACHO) VALUES ('T33',01,65,'MI','11:00 – 12:00 am','HU',101)

-- Tabla Departamento
Create Table DEPARTAMENTO
(DEPT varchar(5),
DEDIF varchar(3),
DDESPACHO int,
DCHFNO int)

INSERT INTO DEPARTAMENTO (DEPT,DEDIF,DDESPACHO,DCHFNO) VALUES ('THEO','HU',200,10)
INSERT INTO DEPARTAMENTO (DEPT,DEDIF,DDESPACHO,DCHFNO) VALUES ('CIS','SC',300,80)
INSERT INTO DEPARTAMENTO (DEPT,DEDIF,DDESPACHO,DCHFNO) VALUES ('D.G.','SC',100, null)	
INSERT INTO DEPARTAMENTO (DEPT,DEDIF,DDESPACHO,DCHFNO) VALUES ('PHIL','HU',100,60)

-- Tabla Curso
Drop table Curso
Create Table CURSO
(CNO varchar(3),
 CNOMBRE varchar(30),
 CDESCP varchar(30),
 CRED int,
 CTARIFA money,
 CDEPT varchar(5))

 INSERT INTO CURSO (CNO,CNOMBRE,CDESCP,CRED,CTARIFA,CDEPT) VALUES ('C11','introd.. a las CC.','Para novatos',3,100.00,'CIS')
 INSERT INTO CURSO (CNO,CNOMBRE,CDESCP,CRED,CTARIFA,CDEPT) VALUES ('C22','Estructura de Datos','Muy util',3,50.00,'CIS')
 INSERT INTO CURSO (CNO,CNOMBRE,CDESCP,CRED,CTARIFA,CDEPT) VALUES ('C33','Matematicas discretas','Absolutamente necesario',3,0,'CIS')
 INSERT INTO CURSO (CNO,CNOMBRE,CDESCP,CRED,CTARIFA,CDEPT) VALUES ('C44','Circuitos digitales','Ah Ha !',3,0,'CIS')
 INSERT INTO CURSO (CNO,CNOMBRE,CDESCP,CRED,CTARIFA,CDEPT) VALUES ('C55','Arquitect. Computadores','Maq. Von Neuman',3,100.00,'CIS')
 INSERT INTO CURSO (CNO,CNOMBRE,CDESCP,CRED,CTARIFA,CDEPT) VALUES ('C66','Bases de Datos relacionales','Imprescindible',3,500.00,'CIS')
 INSERT INTO CURSO (CNO,CNOMBRE,CDESCP,CRED,CTARIFA,CDEPT) VALUES ('P11','Empirismo','Verlo para creerlo',3,100.00,'PHIL')
 INSERT INTO CURSO (CNO,CNOMBRE,CDESCP,CRED,CTARIFA,CDEPT) VALUES ('P12','Racionalismo','Para usuarios CIS',3,50.00,'PHIL')
 INSERT INTO CURSO (CNO,CNOMBRE,CDESCP,CRED,CTARIFA,CDEPT) VALUES ('P33','Existencialismo','Para usuarios CIS',3,200.00,'PHIL')
 INSERT INTO CURSO (CNO,CNOMBRE,CDESCP,CRED,CTARIFA,CDEPT) VALUES ('P44','Solipsismo','Para mi mismo',6,0.00,'PHIL')
 INSERT INTO CURSO (CNO,CNOMBRE,CDESCP,CRED,CTARIFA,CDEPT) VALUES ('T11','Escolasticismo','Para Beatos',3,150.00,'THEO')
 INSERT INTO CURSO (CNO,CNOMBRE,CDESCP,CRED,CTARIFA,CDEPT) VALUES ('T22','Fundamentalismo','Para descuidados',3,90.00,'THEO')
 INSERT INTO CURSO (CNO,CNOMBRE,CDESCP,CRED,CTARIFA,CDEPT) VALUES ('T33','Hedonismo','Para sanos',3,0.00,'THEO')
 INSERT INTO CURSO (CNO,CNOMBRE,CDESCP,CRED,CTARIFA,CDEPT) VALUES ('T44','Comunismo','Para avaros',6,200.00,'THEO')

 select*from CLASE
 select*from CLAUSTRO
 select*from CURSO
 select*from DEPARTAMENTO
 select*from ESTUDIANTE
 select*from MATRICULA
 select*from PERSONAL
 --CONSULTAS

--1) Mostrar toda la información sobre los cursos cuya tarifa es menor que 150.
--select CNO,CNOMBRE,CDESCP,CRED,CTARIFA,CDEPT from CURSO where CTARIFA < 150
select * from CURSO where CTARIFA<150

--2) Todas las filas en las que el nombre del curso es superior o igual alfabéticamente a
--RACIONALISMO.
--select * from CURSO where CNOMBRE LIKE '[r-z]%' order by CNOMBRE
--select * from CURSO where CNOMBRE LIKE '[A-R]%' order by CNOMBRE desc
SELECT *FROM curso WHERE CNOMBRE>='RACIONALISMO'

--3) Obtener sin valores repetidos el conjunto de todas las tarifas del los cursos
select distinct CTARIFA from CURSO

--4) Obtener de la tabla personal ordenada por el nombre de los empleados
--select ENOMBRE,CARGO,ESUELDO,DEPT from PERSONAL  order by ENOMBRE asc
select * from PERSONAL order by ENOMBRE

/*5) Obtener la identificación del departamento, titulo del empleado y salario para todos
los miembros de la plantilla fijando como campo principal de ordenación el
departamento en secuencia ascendente y como campo secundario de ordenación el
salario en secuencia descendente.*/

SELECT D.DEPT,P.CARGO, P.ESUELDO FROM DEPARTAMENTO  D INNER JOIN PERSONAL  P ON D.DEPT=P.DEPT
ORDER BY D.DEPT  , P.ESUELDO DESC


/*6) Obtener el nombre y el nuevo salario de todos los miembros del personal cuyo
nuevo salario sea mayor que 25,000 suponiendo que todos los salarios iniciales se
han reducido en 100*/
SELECT ENOMBRE,(ESUELDO-100) as NuevoSueldo FROM PERSONAL WHERE (ESUELDO-100)>25000

--7) Obtener el nombre del curso y la descripción de todos los cursos cuya descripción comience por la palabra ES.
select CNOMBRE, CDESCP from CURSO where CDESCP like 'ES%'


--8) Obtener el numero de curso y tarifa de todos los cursos menor que 50 o mayor que 400
select CNO,CTARIFA from CURSO where CTARIFA < 50 or CTARIFA> 400


--9) Listar cualquier curso que tenga una tarifa coincidente con algún numero del conjunto {12, 50,75,90,100,500}
Select * From CURSO where CTARIFA in(12, 50,75,90,100,500)

--10) Obtener toda la información disponible sobre cualquier curso que no tenga una tarifa coincidente con algún número del conjunto {12, 50,75,90,100,500}
select * from CURSO where CTARIFA not in (12, 50,75,90,100,500)

--11) Obtener toda la información sobre cualquier curso que tenga una descripción que comience con la cadena ‘PARA’
select* from Curso where CDESCP like 'PARA%'

--12) Visualizar los nombre , numero de ayudantes y numero de departamento para todos los miembros de la facultad para los que se sabe si tienen o no ayudantes.
select*from DEPARTAMENTO
select*from ESTUDIANTE
select*from CURSO
select FNOMBRE,FNUMDPE,FDEP from CLAUSTRO where FNUMDPE is not  null


--13) Visualizar toda la información sobre los curso de tres créditos ofrecidos por el departamento de Filosofía.
select*from CURSO where CRED= 3 and CDEPT='THEO' 

--14) Visualizar toda la información sobre los cursos que tengan una tarifa entre 100 y 500, ambos inclusive.
select * from CURSO where CTARIFA between 100 and 500

--15) Visualizar los salarios de todo el personal y del claustro de la facultad en una única tabla.
select ESUELDO as SueldoEmpleado, FSUELDO as SueldoClaustro from PERSONAL P inner join CLAUSTRO  C on P.DEPT= C.FDEP

--16) Visualizar los salarios de todo el personal y del claustro de la facultad en una única
--tabla sin eliminar valores duplicados en el resultado.
select ESUELDO as SueldoEmpleado, FSUELDO as SueldoClaustro from PERSONAL P inner join CLAUSTRO  C on P.DEPT= C.FDEP

--17) Obtener toda la información sobre los cursos gratuitos y toda la información sobre cualquier curso que ofrezca el departamento de Filosofía.
select * from CURSO C inner join DEPARTAMENTO D  on C.CDEPT= D.DEPT where CTARIFA=0 or DEPT= 'THEO'

/*18) En tres consultas, visualizar todos los departamentos académicos que ofrezcan
cursos de modo que no aparezcan valores duplicados en la salida de datos. Además,
para cada curso con tarifa menor que 100, visualizar sin filas repetidas el
departamento académico que ofrece ese curso y el número de créditos concedidos.
Por ultimo, visualizar el número de curso y el nombre de todos los cursos que
tengan una tarifa superior a 100, incluyendo en el resultado una tercera columna
cuyo contenido sea CURSO CARO para cada fila.*/

select distinct CDEPT from CURSO


select distinct CDEPT,CRED,CTARIFA from CURSO WHERE CTARIFA<100 

select CNO, CNOMBRE,CTARIFA AS [CURSOCARO] FROM CURSO WHERE CTARIFA > 100 

--9) En dos consultas, visualizar el numero de curso, nombre y créditos de cualquier
--curso que ofrezca el departamento de informática y ciencias de la información
--ordenando el resultado en secuencias descendente por numero de curso, visualizar
--también la identificación de los departamentos y el nombre del curso ordenado por
--código de departamento y dentro de cada departamento por nombre de curso.

select CNO,CNOMBRE,CRED FROM CURSO where CDEPT='CIS' order by  CNO DESC
select  DEPT,CNO from DEPARTAMENTO , CURSO order by DEPT , CNO ASC

--20) Obtener toda la información sobre los cursos que ofrezca el departamento de
--informática y ciencias de la información con tarifa nula. Asimismo, obtener toda la
--información sobre cualquier curso que tenga una tarifa que se encuentre entre cero y cien.

 
select  * from  CURSO where CDEPT='CIS' AND CTARIFA =0

select  * from  CURSO where CTARIFA BETWEEN 0 AND 100

--21) Obtener toda la información sobre los cursos de filosofía que ofrezcan 3 créditos y
--que tengan una tarifa que se encuentre entre cero y cien. Asimismo obtener toda la
--información existente sobre cualquier curso ofrecido por los departamentos de
--Informática y Ciencias de la Información o Filosofía.

select * from CURSO where CDEPT='THEO' and CRED=3  and CTARIFA BETWEEN 0 AND 100

SELECT * FROM CURSO WHERE CDEPT= 'CIS'

--22) Obtener toda la información sobre cualquier curso de Informática y Ciencias de la
--Información o cualquier curso de tarifa nula. Asimismo, obtener toda la información
--existente sobre cualquier curso que tenga tarifa igual a 50, 100, 150 o 200.
select*from CURSO where CDEPT= 'CIS' orCTARIFA =0
select*from CURSO where CTARIFA in (50,100,150,200)

--23) Obtener toda la información existente sobre el nombre de los cursos y la
--identificación del departamento de todos los cursos que no sean ofrecidos por el
--departamento de Informática y Ciencias de la Información. Obtener también el
--nombre y la identificación del departamento de todos los cursos, con la excepción de
--aquellos ofrecidos por los departamentos de Informática y Ciencias de la Información y Filosofía.

select CNOMBRE,CDEPT from CURSO where CDEPT NOT IN('CIS')

select CNOMBRE,CDEPT from CURSO where CDEPT NOT IN('CIS', 'PHIL')

--24) Obtener toda la información existente sobre los cursos de Teología con tarifa nula o
--de cualquier curso (independientemente de su departamento y tarifa) que tenga un
--valor de 6 créditos. Obtener también toda la información existente sobre los cursos
--de Teología con tarifa nula o que valgan 6 créditos.
SELECT*FROM CURSO WHERE CDEPT='THEO' AND CTARIFA =0

SELECT*FROM CURSO WHERE  CRED=6

SELECT*FROM CURSO WHERE CDEPT='THEO' AND CTARIFA=0 OR CRED=6

--25) Obtener toda la información existente sobre los cursos que no pertenecen al
--departamento de Informática y Ciencias de la Información o sobre cualquier curso
--(independientemente de su departamento) que tenga tarifa nula y valga tres créditos.
--Obtener también toda la información disponible sobre todas la filas de la tabla
--CURSO, exceptuando los cursos de Informática y Ciencias de la Información que tengan tarifa nula.

SELECT*FROM CURSO WHERE CDEPT NOT IN ('CIS') OR CTARIFA=0 AND CRED=3

SELECT*FROM CURSO WHERE CDEPT NOT IN ('CIS') AND CTARIFA=0

--26) Obtener toda la información existente sobre los cursos que valgan 2, 6 o 9 créditos.
--Obtener también toda la información de todos los cursos que no pertenecen a los
--departamentos de Teología o Informática y Ciencias de la Información.
SELECT * FROM CURSO WHERE CRED IN(2,6,9)

SELECT * FROM CURSO WHERE CDEPT NOT IN('CIS','THEO')

--27) Obtener toda la información existente sobre los cursos cuya tarifa se encuentre entre
--100 y 200, incluyendo ambos valores. Obtener también toda la información de todos
--los cursos con tarifa menor que 100 o mayor que 200.

SELECT * FROM CURSO WHERE  CTARIFA BETWEEN 100 AND 200 
SELECT * FROM CURSO WHERE CTARIFA< 100 OR CTARIFA> 200

--28) Obtener toda la información existente sobre los cursos cuyo nombre comience con
--la letra C, obtener también toda la información de todos los cursos de los
--departamentos de Informática y Ciencias de la Información, Teología o Matemática
--que valgan tres ceditos y con tarifa entre 50 y 300 presentando el resultado ordenado
--por curso dentro de cada departamento.
SELECT * FROM CURSO WHERE CNOMBRE LIKE'[C]%'

SELECT * FROM CURSO  WHERE CDEPT IN('CIS','THEO','MATH') AND CRED=3 AND CTARIFA BETWEEN 50 AND 300 ORDER BY CNO

--29) Obtener la primera letra de todos los nombres de cursos de informática y Ciencias
--de la Información. Obtener también los caracteres que aparecen en las posiciones
--tercera, cuarta, quinta y sexta. Por ultimo mostrar los tutores del número de curso sin el primer carácter.
SELECT LEFT(CNOMBRE,1) AS PRIMERALETRA FROM CURSO

SELECT LEFT(CNOMBRE,3) AS POSICION3 , LEFT(CNOMBRE,4) AS POSICION4,LEFT(CNOMBRE,5) AS POSICION5 ,LEFT(CNOMBRE,6) AS POSICION6 FROM CURSO

SELECT SUBSTRING(CNO,2,2) AS [NUMERO DE CURSO] FROM CURSO

--30) Obtener la longitud real de cada nombre de curso ofrecido por el departamento de Teología.
select CNOMBRE, Len(CNOMBRE) as LONGITUD, CDEPT from CURSO where CDEPT='THEO'

--31) Obtener el nombre y el cargo de cualquier miembro del personal que no esté asignado aun departamento existente.
IF  EXISTS(SELECT DEPT FROM PERSONAL) 
BEGIN
SELECT ENOMBRE,CARGO  FROM PERSONAL  
END 
SELECT * FROM PERSONAL
--32) Obtener el nombre y el cargo de cualquier miembro del personal asignado a un departamento existente.

--33) Obtener para cada departamento que ofrezca cursos, el identificador de ese
--departamento seguido del número, nombre y tarifa del departamento que organiza el curso con mayor tarifa.
select DEPT,DCHFNO,CNO,CNOMBRE,CTARIFA from DEPARTAMENTO as d inner join 
CURSO as c on d.DEPT=c.CDEPT where CTARIFA= (SELECT MAX(CTARIFA) FROM CURSO)

--34) Obtener el numero de curso, nombre y tarifa de cada curso cuya tarifa sea menor
--que todos los salarios de todos los miembros del personal.
select*from CURSO
select c.CNO,c.CNOMBRE,c.CTARIFA from DEPARTAMENTO as d inner join curso as c on d.DEPT=c.CDEPT inner join PERSONAL as p on p.DEPT=c.CDEPT
where CTARIFA < (select sum(ESUELDO) from PERSONAL)

--35) Obtener el número de curso, nombre y tarifa de cada curso cuya tarifa exceda del salario del cualquier miembro del personal.
select c.CNO,c.CNOMBRE,c.CTARIFA from DEPARTAMENTO as d inner join curso as c on d.DEPT=c.CDEPT inner join PERSONAL as p on p.DEPT=c.CDEPT
where CTARIFA > ESUELDO

--36) Obtener para cada departamento que ofrezca cursos, el identificador de
--departamento y la tarifa media de los cursos ofrecidos por el departamento, siempre
--y cuando sea mayor que la tarifa media de todas las tarifas de cursos.

SELECT * FROM DEPARTAMENTO
--37) Obtener el numero, cargo e identificador de cada departamento de cada miembro del
--personal asignado a un departamento no existente (sin identificador)

--38) Obtener el número y nombre de cualquier miembro de la facultad que sea jefe de
--cualquier departamento que ofrezca un curso de seis créditos.

--39) Obtener el nombre y cargo de cada miembro del personal que trabaja en el edificio de Humanidades.
select ENOMBRE,CARGO, DEDIF from DEPARTAMENTO  d inner join PERSONAL  p on  d.DEPT=p.DEPT WHERE DEDIF='Hu'

--40) Obtener el número, nombre y tarifa de los cursos con tarifa mayor o igual que el sueldo de cualquier miembro del personal.
select c.CNO,d.DEPT,c.CTARIFA,ESUELDO from DEPARTAMENTO as d inner join curso  c on d.DEPT=c.CDEPT inner join PERSONAL  p on p.DEPT=c.CDEPT
where CTARIFA >= ESUELDO
--41) Obtener el número, nombre y tarifa de los cursos con tarifa menor que la media.
SELECT CNO,CNOMBRE, CTARIFA  FROM CURSO where CTARIFA <(SELECT AVG( CTARIFA)  FROM CURSO )


--42) Obtener el número, nombre y tarifa de los cursos con tarifa mínima no nula.
SELECT  CNO,CNOMBRE,CTARIFA FROM CURSO WHERE CTARIFA>0

--43) Obtener el nombre de la base de datos actual
SELECT DB_NAME() AS NombreBDActual

--44) Obtener la fecha actual del sistema
select GETDATE() as HoraActualSistema

--45) Lista de los meses en que se efectuaron las matriculas
select DATEPART (MM,FECHA_MAT) as MeseMatriculas from MATRICULA

--46) Hora de la matriculación de los alumnos, primeramente con horas y minutos y después con horas, minutos y segundos.
select Hora_Mat, DATEPART (MINUTE,HORA_MAT) as [Minutos],DATEPART (SECOND,HORA_MAT) as [Segundos] from MATRICULA
select Hora_Mat, DATEPART (HOUR,HORA_MAT) as [Hora],DATEPART (MINUTE,HORA_MAT) as [Minutos],DATEPART (SECOND,HORA_MAT) as [Segundos] from MATRICULA

--47) Presentar las ciudades donde se encuentras las oficinas con su nombre inicial, en
--mayúsculas, en minúsculas y el numero de caracteres.
SELECT UPPER (SDOMI) as [ MAYUSCULA], LOWER(SDOMI) as [ MINUSCULA], LEN(SDOMI) AS [LONGITUD] FROM ESTUDIANTE

--48)Buscar aquellos números de curso que están en la tabla MATRICULA y en la tabla CLASE (operación intersección)
SELECT CON as[N°Curso] FROM MATRICULA INTERSECT SELECT CON FROM CLASE

--49) Presentar los números de curso que están en la tabla CLASE y no están en la tabla MATRICULA (operación diferencia).


--50) Listar aquellos números de curso que están en la tabla MATRICULA o en la tabla CLASE (operación unión)
select c.CON [N°curso Clase],m.CON [N°curso Matricula] from MATRICULA as m inner join CLASE as c on m.CON= c.CON 

--51) Visualizar el nombre e identificador de departamento de cualquier catedrático que
--tenga un numero de profesores ayudantes mayor que la media de créditos para cursos ofrecidos por su departamento.

--52) Visualizar el nombre, identificador de cada departamento y salario de aquellos
--miembros de la facultad cuyo salario es mayor que el salario medio de su departamento.

--SELECT  FDEP,FNOMBRE,FSUELDO  FROM CLAUSTRO WHERE FSUELDO>(AVG(FSUELDO)) GROUP BY  FDEP,FNOMBRE,FSUELDO  
--53) Visualizar el numero de estudiantes y la fecha de MATRICULA de todos los
--estudiantes que están matriculados de al menos un curso ofrecido por un
--departamento ubicado en el edificio Ciencias SC.
select e.SON as [N° EStudiante],m.Fecha_Mat,d.DEDIF from ESTUDIANTE as e inner join MATRICULA as m 
on e.SON=m.SON inner join DEPARTAMENTO as d on d.DEPT=e.SESP
where DEDIF='SC'

--54) Visualizar el nombre y número de ayudantes para aquellos miembros de la facultad
--que tienen tantos ayudantes como el número de créditos ofrecidos por cualquier curso.
select*from CLAUSTRO
SELECT FNUMDPE, FNOMBRE
FROM CLAUSTRO
WHERE FNUMDPE = ANY (SELECT CRED
                     FROM CURSO)

--55) Visualizar el nombre y el identificador de departamento de cualquier miembro del
--claustro asignado a un departamento que ofrezca un curso de 6 créditos
SELECT FDEP,FNO,FNOMBRE
FROM CLAUSTRO
WHERE FDEP IN (SELECT CDEPT
               FROM CURSO
               WHERE CRED = 6)

--56) Visualizar el nombre y el identificador de departamento de cualquier miembro del
--claustro asignado a un departamento que no ofrezca un curso de 6 créditos.
select d.DEPT,cu.CNOMBRE,cu.CRED from DEPARTAMENTO as d inner join CLAUSTRO 
c on d.DEPT=c.FDEP inner join CURSO  cu on cu.CDEPT=c.FDEP where  CRED < 6

--57) Visualizar el nombre y el departamento de cualquier miembro de la facultad que no
--esté impartiendo clases durante este semestre
SELECT FNOMBRE, FDEP
FROM CLAUSTRO
WHERE FNO NOT IN (SELECT CINSTRFNO
                   FROM CLASE)

--58) Visualizar el número de curso y nombre en donde se halle registrado el estudiante 800.
select CNO,CNOMBRE,SON from CURSO  c inner join ESTUDIANTE  e on c.CDEPT= e.SESP where SON=800

--59) Visualizar toda la información acerca de cualquier curso de Informática y Ciencias
--de la Información con una tarifa menor que el sueldo medio de cualquiera asignado al departamento de Teología.
SELECT *
FROM CURSO
WHERE CDEPT = 'CIS' AND CTARIFA < (SELECT AVG(ESUELDO)
                 FROM PERSONAL
                 WHERE DEPT = 'THEO')

--60) Visualizar el nombre y el salario de cualquier empleado miembro del personal cuyo
--sueldo sea menor o igual que la máxima tarifa del curso.
select ENOMBRE,ESUELDO,CTARIFA from PERSONAL as p inner join CURSO as c on p.DEPT=c.CDEPT where ESUELDO<=(select  max(CTARIFA) from CURSO)

--61) Visualizar el nombre, número, departamento y tarifa de los cursos que tienen la
--segunda tarifa mas cara sabiendo que la tarifa mas cara es 500.
SELECT CNOMBRE,CNO,CDEPT,CTARIFA
FROM CURSO
WHERE CTARIFA = (SELECT MAX(CTARIFA) 
                 FROM CURSO
                 WHERE CTARIFA <> 500)

--62) Visualizar el número, nombre y departamento de los cursos con la mínima tarifa.
select CNO,CNOMBRE,CDEPT,CTARIFA from CURSO where CTARIFA=(SELECT MIN(CTARIFA) FROM CURSO)  

--63) Hallar la tarifa media para aquellos departamentos en los que dicha tarifa media sea
--mayor que 100 y que ofrezcan menos de seis cursos.
SELECT  AVG(CTARIFA) AS [TARIFA MEDIA], CDEPT
FROM CURSO
GROUP BY CDEPT
HAVING AVG(CTARIFA) > 100 AND COUNT(*) < 6

--64) Hallar las tarifas media, máxima y mínima por crédito dentro de cada departamento
--sólo para aquellos grupos con tarifa mínima positiva.
SELECT CDEPT, CRED, AVG(CTARIFA) AS [TARIFA MEDIA], MAX(CTARIFA) AS [TARIFA MAXIMA],
MIN(CTARIFA)AS [TARIFA MINIMA]
FROM CURSO
GROUP BY CRED,CDEPT
HAVING MIN(CTARIFA) > 0

--65) Pata todos los departamentos excepto el de Teología, que tengan una tarifa media de
--sus cursos mayor que 100, obtener su identificación y su tarifa media.

SELECT CNO,CDEPT,AVG(CTARIFA) AS [TARIFAMEDIA] FROM CURSO  GROUP BY CNO,CDEPT
HAVING AVG(CTARIFA) > 100 AND CDEPT NOT IN('THEO')

--66) Para cada valor distinto de tarifa determinar el numero total de créditos para los
--cursos que tengas ese valor de tarifa. Ordenar el resultado en secuencia descendente por tarifa.

--67) Para cada departamento que ofrezca determinar el valor medio de la tarifa de todos
--los cursos que tengas tres créditos ofrecidos por cada departamento. Visualizar la
--salida en secuencia ascendente por identificación de departamento.
SELECT CDEPT,CRED, AVG(CTARIFA) AS [VALORMEDIO] 
FROM CURSO WHERE CRED=3 GROUP BY CDEPT, CRED ORDER BY CDEPT ASC

--68) Para cada departamento al que se hace referencia en la tabla PERSONAL formar un
--comité compuesto por dos miembros del personal del departamento de modo que,
--para cada posible pareja de miembros del personal se visualice su código de
--departamento seguido de los nombres de los miembros del personal. El resultado
--debe contener una fila por cada posible pareja de miembros del personal.
SELECT PER1.ENOMBRE, PER2.ENOMBRE
FROM PERSONAL PER1 INNER JOIN PERSONAL PER2
ON PER1.DEPT = PER2.DEPT AND PER1.ENOMBRE < > PER2.ENOMBRE

--69) Para cualquier curso que tenga un miembro del personal disponible para ser tutor,
--visualizar el número, nombres y cargos de los miembros del personal que pueden
--servir de tutores para ese curso y la ubicación de sus respectivos edificios y
--despachos. Clasificar la salida por nombre de los miembros del personal y número de curso.
SELECT CNO,ENOMBRE,CARGO
FROM CURSO,PERSONAL,DEPARTAMENTO
WHERE CDEPT = PERSONAL.DEPT AND PERSONAL.DEPT = DEPARTAMENTO.DEPT
ORDER BY CNO, ENOMBRE

--70) Para cada departamento que ofrece servicios de tutoría, visualizar el identificador de
--departamento junto con la tarifa media de los cursos que éste ofrece y el sueldo
--medio de los miembros del personal que pueden autorizar dichos cursos. Clasificar la salida por identificador de departamento.
SELECT CDEPT,AVG(CTARIFA)AS [TARIFA MEDIA],AVG(ESUELDO)AS [SUELDO MEDIO]
FROM CURSO,PERSONAL
WHERE CDEPT = DEPT
GROUP BY CDEPT
ORDER BY CDEPT

--71) Visualizar el nombre y cargo de cada miembro del personal que trabaje en el edificio de Humanidades.
select ENOMBRE,CARGO,DEDIF from PERSONAL  p inner join DEPARTAMENTO  d on p.DEPT=d.DEPT where DEDIF='HU'

--72) Para cada curso con una tarifa superior a 175, mostrar el nombre del curso, tarifa y
--numero de facultativo del jefe responsable del curso, visualizando la salida en orden ascendente por nombre de curso.
SELECT CNOMBRE, CTARIFA
FROM CURSO INNER JOIN DEPARTAMENTO
ON CDEPT = DEPT AND  CTARIFA > 175
ORDER BY CNOMBRE asc

--73) Para cada miembro del personal cuyo salario anual excede de 1000 visualizar su
--nombre, código de departamento y edificio de destino.
SELECT ENOMBRE,ESUELDO,DEPARTAMENTO.DEPT,DEDIF
FROM PERSONAL INNER JOIN DEPARTAMENTO
ON PERSONAL.DEPT = DEPARTAMENTO.DEPT where ESUELDO> 1000

--74) De todo el personal asignado a los actuales departamentos, seleccionar toda la
--información acerca del personal y sus respectivos departamentos.
SELECT ENOMBRE, CARGO, ESUELDO,DEPARTAMENTO.DEPT
FROM PERSONAL INNER JOIN DEPARTAMENTO
ON PERSONAL.DEPT = DEPARTAMENTO.DEPT