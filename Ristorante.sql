drop database ristorante;
create database if not exists ristorante;
use ristorante;
create table if not exists pietanza(
nome varchar(50),
prezzo decimal(5,2),
calorie smallint);
insert into pietanza(nome,prezzo,calorie)
    values('Riso patate e cozze','7.00','353');
insert into pietanza (nome, prezzo, calorie)
    values('Frisella', 3.50, 207);
insert into pietanza (nome, prezzo, calorie)
    values('Insalata di Polpo', 7.00, 220);

select pietanza.nome from pietanza;

select pietanza.prezzo from pietanza;

select pietanza.calorie from pietanza;

select * from pietanza;

/*         Fine primo database           */