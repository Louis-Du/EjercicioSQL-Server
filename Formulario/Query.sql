SELECT * from Aprendiz;
SELECT * from AprendizEvento;
SELECT * from Eventos;
SELECT * from Inscripcion;
SELECT * from Ficha;
SELECT * from Grupo;
SELECT * from Programa;
select * from Usuario;

-- 1. Mostrar nombre, nivel del programa, fecha de inicio de la ficha, nombre de los aprendices 
-- de los programas con fecha de inicio mayor a 01 de febrero de 2026.
SELECT nombreProg, nivelProg, fechaIniFicha, nombreAprend   
from Programa P
inner join Ficha F on P.codigoProg = F.codigoProg
inner join Aprendiz A on F.codigoFicha = A.codigoFicha
where P.fechaIniProg > '01-02-2026'

-- 2. Mostrar la cantidad de aprendices mujeres 
-- que estén en la ficha 3067777 
-- y el nombre del programa al que pertenecen.
select count(A.idAprend) as 'Cantidad de aprendices', P.nombreProg
from Aprendiz A 
inner join Ficha F on A.codigoFicha = F.codigoFicha
inner join Programa P on F.codigoProg = P.codigoProg
where A.codigoFicha = '3067777'
group by P.nombreProg 

--3. Mostrar el nombre y la edad 
-- del hombre que tiene mayor edad 
-- y el numero de ficha en la que está.
select top 1 a.nombreAprend, a.edadAprend, a.codigoFicha 
from Aprendiz a
where a.generoAprend = 'M'
order by a.edadAprend desc

--4. Mostrar los nombres 
-- y la cantidad de aprendices 
-- que se inscriban al evento de tipo académico 
-- y la fecha de inscripción de cada uno.
select COUNT(*) OVER() as 'Cantidad de aprendices', a.nombreAprend, i.fechaInscrip  
from Aprendiz a 
inner join AprendizEvento ae on a.idAprend = ae.idAprend
inner join Eventos e on ae.idEvento = e.idEvento
inner join Inscripcion i on e.idInscripcion = i.idInscripcion
where e.tipoEvento = 'Académico'
group by a.nombreAprend, i.fechaInscrip;

--5. Mostrar la modalidad con mayor cantidad de aprendices inscritos 
-- y el tipo de evento al que pertenece la inscripción.
select top 1 i.modalidadInscrip, e.tipoEvento 
from Inscripcion i 
inner join Eventos e on i.idInscripcion = e.idInscripcion 
inner join AprendizEvento ae on e.idEvento = ae.idEvento
inner join Aprendiz a on ae.idAprend = a.idAprend
GROUP BY i.modalidadInscrip, e.tipoEvento 
order by i.modalidadInscrip  DESC;


