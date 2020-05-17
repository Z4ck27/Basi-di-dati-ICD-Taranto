drop database lavoro ;
create database if not exists lavoro ;
use lavoro;  /*  uso database "lavoro" */
/*creazione tabelle*/
create table if not exists lavoratori(
matricola int primary key,
nome varchar(20) not null,
eta int not null,
stipendo int not null
);
create table if not exists supervisione(
matricola_dipendente int references lavoratori (matricola),
matricola_capo int references lavoratori (matricola)
);

/*inserimento lavratori */
insert into lavoratori(matricola,nome,eta,stipendio)
values('7309','rossi','34','45000');

insert into lavoratori(matricola,nome,eta,stipendio)
values('8123','lupi','46','60000');

insert into lavoratori(matricola,nome,eta,stipendio)
values('5698','bruni','43','42000');

insert into lavoratori(matricola,nome,eta,stipendio)
values('4076','mori','45','50000');

/*inserimento supervisione */

insert into supervisione (matricola_dipendente,matricola_capo)
values('7309','5698');

insert into supervisione (matricola_dipendente,matricola_capo)
values('8123','5698');

insert into supervisione (matricola_dipendente,matricola_capo)
values('8123','4076');

insert into supervisione (matricola_dipendente,matricola_capo)
values('5698','4076');


/* query */

select matricola,eta,stipendio from lavoratori where stipendio >= "40000";
select matricola,nome,eta from lavoratori where stipendio >= "40000";
select matricola_capo from supervisione,lavoratori where stipendio.matricola_dipendente >= "40000";
select nome,stipendio from supervisione,lavoratori where stipendio.matricola_dipendente >= "40000";
select nome,matricola,stipendio from supervisione,lavoratori where stipendio.matricola_dipendente > stipendio.matricola_capo ;
select matricola_capo from supervisione,lavoratori where stipendio.matricola_dipendente > "40000" ;
