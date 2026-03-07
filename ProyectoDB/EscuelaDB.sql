/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  hpede
 * Created: Mar 7, 2026
 */

create database escuela;

create table escuela.alumnos(codigo int primary key unique, nombre varchar(60) not null, domicilio varchar(150) not null);

select * from escuela.alumnos;

show columns from escuela.alumnos;