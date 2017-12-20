drop database if exists volonteri;
create database volonteri;

use volonteri;

create table osoba(
oib char(11) not null primary key,
ime varchar(30) not null,
prezime varchar(30) not null,
dob int not null,
email varchar(30),
adresa varchar(30),
skola varchar(30),
telefon varchar(30),
mobitel varchar(30),
hobi varchar(100),
uloga varchar (20),
drustvo varchar(11) not null,
akcija int,
volonterski_sati int,
volonterski_ugovor int not null,
edukacija int
);

create table akcija(
sifra int not null primary key,
ime_akcije varchar(200) not null,
opis_akcije varchar(500),
trajanje datetime,
mjesto varchar(50),
drzava varchar(50)
);

create table akcija_osoba(
akcija int not null,
osoba char(11) not null
);

create table edukacija (
sifra int not null primary key,
ime_edukacije varchar(100),
opis varchar(500),
datum_polaganja datetime,
mjesto varchar(50),
drzava varchar(50),
vrsta varchar(50)
);

create table edukacija_osoba(
edukacija int not null,
osoba char(11) not null
);

create table drustvo(
oib varchar(11) not null primary key,
mjesto varchar(50) not null
);

alter table osoba add foreign key (drustvo) references drustvo(oib);
alter table akcija_osoba add foreign key (akcija) references akcija(sifra);
alter table akcija_osoba add foreign key (osoba) references osoba(oib);
alter table edukacija_osoba add foreign key (edukacija) references edukacija(sifra);
alter table edukacija_osoba add foreign key (osoba) references osoba(oib);
