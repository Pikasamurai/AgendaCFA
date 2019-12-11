#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------
drop database if exists BDD_Agendatest ;
create database BDD_Agendatest;
use BDD_Agendatest;

#------------------------------------------------------------
# Table: User
#------------------------------------------------------------

CREATE TABLE Username(
    id_user Int  Auto_increment  NOT NULL ,
    name_user Varchar (50) NOT NULL ,
    password   Varchar (50) NOT NULL
	,CONSTRAINT User_PK PRIMARY KEY (id_user)
)ENGINE=InnoDB;

#------------------------------------------------------------
# Table: Task
#------------------------------------------------------------

CREATE TABLE Task(
	id_task Int  Auto_increment  NOT NULL ,
	id_taskuser_fk int NOT NULL ,
	name_task Varchar (50) NOT NULL ,
	comment_task  text (200) NOT NULL ,
	date_task DATETIME NOT NULL ,
	CONSTRAINT Task_PK PRIMARY KEY (id_task)
)ENGINE=InnoDB;

#------------------------------------------------------------
# Table: Contact
#------------------------------------------------------------

CREATE TABLE Contact(
	id_contact Int  Auto_increment  NOT NULL ,
	id_contactuser_fk int NOT NULL ,
	name_contact Varchar (50) NOT NULL ,
	adress_contact   Varchar (50) NOT NULL ,
	phone_contact varchar(50) NOT NULL ,
	CONSTRAINT Contact_PK PRIMARY KEY (id_contact)
)ENGINE=InnoDB;

#------------------------------------------------------------
# Table: Note
#------------------------------------------------------------

CREATE TABLE Note(
	id_note Int  Auto_increment  NOT NULL ,
	id_noteuser_fk int NOT NULL ,
	title_note Varchar (50) NOT NULL ,
	comment_note  text (200) NOT NULL
	,CONSTRAINT Note_PK PRIMARY KEY (id_note)
)ENGINE=InnoDB;

#------------------------------------------------------------
# Constraints
#------------------------------------------------------------

ALTER TABLE Task
ADD FOREIGN KEY (id_taskuser_fk) REFERENCES Username(id_user) ON DELETE CASCADE;

ALTER TABLE Contact
ADD FOREIGN KEY (id_contactuser_fk) REFERENCES Username(id_user) ON DELETE CASCADE;

ALTER TABLE Note
ADD FOREIGN KEY (id_noteuser_fk) REFERENCES Username(id_user) ON DELETE CASCADE;

#------------------------------------------------------------
# Insert : Username
#------------------------------------------------------------

insert into Username values (null, "toto", "toto");
insert into Username values (null, "tata", "tata");
insert into Username values (null, "tutu", "tutu");
insert into Username values (null, "titi", "titi");
insert into Username values (null, "tete", "tete");

#------------------------------------------------------------
# Insert : Task
#------------------------------------------------------------

insert into Task values (null, 1, "task1", "c'est la task1", CURRENT_TIMESTAMP);
insert into Task values (null, 2, "task2", "c'est la task2", CURRENT_TIMESTAMP);
insert into Task values (null, 3, "task3", "c'est la task3", CURRENT_TIMESTAMP);
insert into Task values (null, 2, "task4", "c'est la task4", CURRENT_TIMESTAMP);

#------------------------------------------------------------
# Insert : Contact
#------------------------------------------------------------

insert into Contact values (null, 1, "Contact1", "c'est le contact1", "phone1");
insert into Contact values (null, 2, "Contact2", "c'est le contact2", "phone2");
insert into Contact values (null, 3, "Contact3", "c'est le contact3", "phone3");
insert into Contact values (null, 4, "Contact4", "c'est le contact4", "phone4");

#------------------------------------------------------------
# Insert : Note
#------------------------------------------------------------

insert into Note values (null, 1, "Note1", "c'est la note1");
insert into Note values (null, 2, "Note2", "c'est la note2");
insert into Note values (null, 3, "Note3", "c'est la note3");
insert into Note values (null, 4, "Note4", "c'est la note4");