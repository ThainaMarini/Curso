create database ProntoSoc;
create database Hospital;
create database HospitalMod;
create database ClinicaMed;
create database Operacoes;
create database UTI;
show databases;

use ProntoSoc;
create table Enfermeiras (
CodEnfermeira int key,
Nome varchar(45));

create table Pacientes (
CodPacientes int key,
Nome varchar(45),
Endereco varchar(45),
Cidade varchar(50),
Estado char(2),
Telefone char(13),
DataInternacao date );

create table Medicos (
CodMedico int key,
Telefone varchar(50),
Cidade varchar(50),
Estado char(2),
Especialidade varchar(255),
Salario float );

use Hospital;
create table Medicos (
CodMedico int key,
Telefone varchar(50),
Cidade varchar(50),
Estado char(2),
Especialidade varchar(255),
Salario float );

use ClinicaMed;
create table Medicos (
CodMedico int key,
Telefone varchar(50),
Cidade varchar(50),
Estado char(2),
Especialidade varchar(255),
Salario float );

show tables;
