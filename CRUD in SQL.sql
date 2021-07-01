
# create database 
create database shirtsdb;
# show wheather shirtsdb is created or not
show databases;
use shirtsdb;
# creating shirts table with columns
create table shirts(
shirt_id int not null auto_increment,
article varchar(20),
colour varchar(20),
shirt_size varchar(20),
last_worn int,
primary key (shirt_id)


);
show tables;
desc shirts;
# inserting value into shirts table
insert into shirts(article,colour,shirt_size,last_worn)
values ('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15)
;
select * from shirts ;
#inserting another value to shirts table
insert into shirts (colour,article,shirt_size,last_worn)
values('Purple','Polo shirt','M',50);



# updating shirts colour to off white and shirt size to XS where colour is white
update shirts
set colour = 'off white' , shirt_size = 'XS'
where colour = 'white' ;

# updating shirt size to L where article is Polo shirt
UPDATE shirts
set shirt_size = 'L'
where article = 'Polo shirt';

select * from shirts;

#updating last worn fron 15 to 0
update shirts
set last_worn = 0
where last_worn = 15 ;

# delete all shirts last worn 200 days --
delete from shirts
where last_worn = 200;


#deleting all shirts inside a table
delete from shirts; 
select * from shirts;


# droping entire table
drop table shirts;


desc shirts;