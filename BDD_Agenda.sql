#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------
drop database if exists BDD_Agenda ;
create database BDD_Agenda;
use BDD_Agenda;

#------------------------------------------------------------
# Table: User
#------------------------------------------------------------

CREATE TABLE Username(
    id_user Int  Auto_increment  NOT NULL ,
    name_user Varchar (50) NOT NULL ,
    password   Varchar (50) NOT NULL
	,CONSTRAINT User_PK PRIMARY KEY (iduser)
)ENGINE=InnoDB;

#------------------------------------------------------------
# Table: Task
#------------------------------------------------------------

CREATE TABLE Task(
	id_task Int  Auto_increment  NOT NULL ,
	id_taskuser_fk int NOT NULL ,
	name_task Varchar (50) NOT NULL ,
	comment_task  text (200) NOT NULL ,
	date_task DATETIME() NOT NULL ,
	,CONSTRAINT Task_PK PRIMARY KEY (idtask)
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
	,CONSTRAINT Contact_PK PRIMARY KEY (id_contact)
)ENGINE=InnoDB;

#------------------------------------------------------------
# Table: Note
#------------------------------------------------------------

CREATE TABLE Note(
	id_note Int  Auto_increment  NOT NULL ,
	id_noteuser_fk int auto_increment NOT NULL ,
	title_note Varchar (50) NOT NULL ,
	comment_note  text (200) NOT NULL
	,CONSTRAINT Note_PK PRIMARY KEY (id_note)
)ENGINE=InnoDB;

#------------------------------------------------------------
# Constraints
#------------------------------------------------------------

CONSTRAINT Task_User_FK FOREIGN KEY (id_taskuser_fk) REFERENCES Username(iduser) ON DELETE CASCADE
CONSTRAINT Contact_User_FK FOREIGN KEY (id_contactuser_fk) REFERENCES Username(iduser) ON DELETE CASCADE
CONSTRAINT Note_User_FK FOREIGN KEY (id_noteuser_fk) REFERENCES Username(iduser) ON DELETE CASCADE

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

insert into Task values (null, null, "task1", "c'est la task1", CURRENT_TIMESTAMP);
insert into Task values (null, null, "task2", "c'est la task2", CURRENT_TIMESTAMP);
insert into Task values (null, null, "task3", "c'est la task3", CURRENT_TIMESTAMP);
insert into Task values (null, null, "task4", "c'est la task4", CURRENT_TIMESTAMP);

#------------------------------------------------------------
# Insert : Contact
#------------------------------------------------------------

insert into Contact values (null, null, "Contact1", "c'est le contact1", CURRENT_TIMESTAMP);
insert into Contact values (null, null, "Contact2", "c'est le contact2", CURRENT_TIMESTAMP);
insert into Contact values (null, null, "Contact3", "c'est le contact3", CURRENT_TIMESTAMP);
insert into Contact values (null, null, "Contact4", "c'est le contact4", CURRENT_TIMESTAMP);

#------------------------------------------------------------
# Insert : Note
#------------------------------------------------------------

insert into Note values (null, null, "Note1", "c'est la note1", CURRENT_TIMESTAMP);
insert into Note values (null, null, "Note2", "c'est la note2", CURRENT_TIMESTAMP);
insert into Note values (null, null, "Note3", "c'est la note3", CURRENT_TIMESTAMP);
insert into Note values (null, null, "Note4", "c'est la note4", CURRENT_TIMESTAMP);