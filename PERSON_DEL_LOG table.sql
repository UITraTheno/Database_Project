use company;

create table if not exists PERSON_DEL_LOG
(
	DEL_SSN            char(9)  primary key,
    DEL_Name           varchar(15),
    username		   varchar(15),
    DEL_Date           date
    
);