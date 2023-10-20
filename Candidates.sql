create database Candidates

use Candidates

create table Candidates
(
ID int,
CareerCoach varchar(40),
SpecialAccommodation varchar(200),
Gender varchar(40),
WorkAuth varchar(100),
DesiredFunction varchar(300),
JFHCause varchar(300),
OrgAffiliation varchar(200),
HeardAboutUs varchar(140),
OtherJobOpportunity varchar(40),
CandID varchar(100),
CandCity varchar(60),
CandCountry varchar(100),
constraint pk_Candidates primary key (ID)
)

drop table Candidates

insert Candidates
select CandidateID, cast(CareerCoach as varchar), cast(SpecialAccommodation as varchar),
cast(Gender as varchar), cast(WorkAuth as varchar), cast(DesiredFunction as varchar),
cast(JFHCause as varchar), cast(OrgAffiliation as varchar), cast(HeardAboutUs as varchar),
cast(OtherJobOpportunity as varchar), cast(CandID as varchar), cast (CandCity as varchar),
cast(CandCountry as varchar) from tmpCandidates

select * from Candidates

select distinct DesiredFunction
from Candidates
order by DesiredFunction

select distinct HeardAboutUs
from Candidates
order by HeardAboutUs

select distinct jfhcause
from Candidates
order by jfhcause


create table Jobs
(
ID int,
constraint pk_Jobs primary key(ID)
)