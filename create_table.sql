/* 
SQL text file for creating the table for Group Assignment part 3
Group member: Yilin Li, Fuhao Ruan
11/2/2022
*/

use company;

create table if not exists physician
(
	PID         char(10)   primary key,
    PhyName     varchar(15)   not null,
    Specially   varchar(10)   not null,
    PhyAdd      varchar(30),
    PhyPho      char(10)
);

create table if not exists insurer
(
	InsurerID       char(8) primary key,
    InsName         varchar(15)  not null,
    InsAdd          varchar(30)  not null,
    InsPho          char(10)
);

create table if not exists hospital
(
	HospitalID      char(5) primary key,
    HosName         varchar(15)  not null,
    HosAdd          varchar(30)  not null,
    HosPhone        char(10)
);

create table if not exists employer
(
	Empid    char(9) primary key,
    EmpName  varchar(15) not null,
    EmpAdd   varchar(30) not null,
    EmpPhone char (10)
);

create table if not exists person
(
	SSN         char(9)   primary key,
    PersonNam   varchar(15)   not null,
    PersonPho   char(10),
    PersonAdd   varchar(30),
	PerEmpid    char(9),
    PerIns      char(8),
	PerPID      char(10),
    constraint Person_PID
		foreign key (PerPID) references physician (PID)
        on delete cascade
        on update cascade,
	constraint Person_Empid
		foreign key (PerEmpid) references employer (Empid)
		on delete cascade
        on update cascade,
	constraint Person_IID
		foreign key (PerIns) references insurer (InsurerID)
        on delete cascade
        on update cascade
);



create table if not exists visit
(
	VSSN char(9),
    VPID char(10),
	VDate date,
	Diagnosis      varchar(30),
    PCP_OR_NOT     varchar(3),
    constraint Have_person
		foreign key (VSSN) references person (SSN)
        on delete cascade
        on update cascade,
	constraint Have_physician
		foreign key (VPID) references physician (PID)
        on delete cascade
        on update cascade,
    primary key (VDate,VSSN,VPID)
);

create table if not exists EMP_INSURER
(
	EMP_EID char(9),
    EMP_INS char(8),
    constraint emp_employee
		foreign key (EMP_EID) references employer (Empid)
        on delete cascade
        on update cascade,
    constraint emp_insurer
		foreign key (EMP_INS) references insurer (InsurerID)
        on delete cascade
        on update cascade,
    primary key (EMP_EID,EMP_INS)
);

create table if not exists PHY_INSURER
(
	PHY_PID char(10),
    PHY_INS char(8),
    constraint phy_physician
		foreign key (PHY_PID) references physician (PID)
        on delete cascade
        on update cascade,
    constraint phy_insurer
		foreign key (PHY_INS) references insurer (InsurerID)
        on delete cascade
        on update cascade,
    primary key (PHY_PID,PHY_INS)
);

create table if not exists affiliation
(
	APID char(10),
	AHOS char(5),
    constraint aff_pid
		foreign key (APID) references physician (PID)
        on delete cascade
        on update cascade,
    constraint aff_hos
		foreign key (AHOS) references hospital (HospitalID)
        on delete cascade
        on update cascade,
    primary key (APID,AHOS)
);

create table if not exists claim
(
	CID      char(4) primary key,
    Amount   decimal (6,2),
    File_date    date,
    Paid_date    date,
    CSSN     char(9),
    CPID     char(10),
    CDate    date,    
    CINS 	 char(8),
    constraint clm_ins
		foreign key (CINS) references insurer (InsurerID)
        on delete cascade
        on update cascade,
    constraint clm_SPD
		foreign key (CDate,CSSN,CPID) references visit (VDate,VSSN,VPID)
        on delete cascade
        on update cascade
);