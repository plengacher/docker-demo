create database sanitas;
create schema sanitas;

create table sanitas.int_table(
id integer,
integer1 integer,
integer2 integer);

COPY sanitas.int_table FROM '/data/int_table.csv' DELIMITER ',' CSV;
