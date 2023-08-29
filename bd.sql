create database Annonce_DE_Travail
use Annonce_DE_Travail
create table Annonceur(
Ref varchar(30) primary key,
Nom varchar(30),
Date_Creation date,
Email varchar(30),
Telephone int ,
Presentation varchar(30),
Demaine_De_Travail varchar(30),
Adresse varchar(30),
From_Juridique  varchar(30),
Logo varchar(250),
Loginn  varchar(30),
Mot_Passe varchar(30),
Etat varchar(30)
)


create  table Annonce(
Ref varchar(30) primary key,
Titre varchar(30),
Date_Debut date,
Date_Fin date,
Profil_Rechercher varchar(30),
Descriptionn varchar(30),
Piéces_Demandé varchar(30),
RefAnnonceur varchar(30) references Annonceur(Ref)
)

create table Admnistrateur(
Loginn varchar(30) primary key,
Nom varchar(30),
Mot_Passe varchar(30)
)
select * from Annonceur
insert into  Annonceur values('12B','Ghizlane','1994/02/22', 'email@ffF.ff',0629363783,'Presentation','Demaine','Adresse','Form jur','Logo','Login','123', 'En attente')
insert into Admnistrateur values('admin', 'mahdi', '1234')
select * from Admnistrateur where Loginn = 'admin' and Mot_Passe = '1234'
delete from Annonce
select a.Ref, a.Titre, ar.Logo 
from Annonce a, Annonceur ar 
where a.RefAnnonceur = ar.Ref
and ar.Etat = 'valide'