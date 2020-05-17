drop database studente;
create database if not exists studente;
use studente;
create table if not exists credenziali(
nome varchar(30),
cognome varchar(30),
matricola int primary key not null unique,
email varchar(50)
);

insert into credenziali(nome,cognome,matricola,email)
		values('Gigino','Gigetto','2345','gigino@gigimail.gi');
insert into credenziali(nome,cognome,matricola,email)
		values('Cosimo','Gennaro','7654','cosimoge@hotmail.gi');
insert into credenziali(nome,cognome,matricola,email)
		values('Andrea','Costantini','987654','andcos@lmail.gi');
insert into credenziali(nome,cognome,matricola,email)
		values('Cosimo','Gennari','9876','cosge@gmail.gi');
insert into credenziali(nome,cognome,matricola,email)
		values('Marco','Sposito','45853','marspo@gmail.gi');
        
        
select * from credenziali
where credenziali.nome="Cosimo";

select distinct credenziali.nome from credenziali;
/*distinct --> posto tra Select e il nome della colonna toglie tutte le righe doppie della colonna*/

select credenziali.cognome as surname from credenziali
order by credenziali.cognome desc;
/*AS --> cambia il nome di visualizzazione della colonna*/

select credenziali.cognome from credenziali
order by credenziali.cognome asc;

select credenziali.matricola from credenziali;

select credenziali.email from credenziali;

/*STAMPA PRIMA DELL'UPDATE*/
select * from credenziali;

/*AGGIORNAMENTO*/
UPDATE studente.credenziali
SET credenziali.cognome = "Rossi", credenziali.nome = "Mario"
WHERE credenziali.matricola = 9876;

/*STAMPA DOPO L'UPDATE*/
select * from credenziali;

/*ELIMINAZIONE*/
DELETE FROM studente.credenziali
WHERE credenziali.nome = "Marco";

/*STAMPA DOPO L'ELIMINAZIONE*/
select * from credenziali;

/*----------------Fine primo database--------------------*/