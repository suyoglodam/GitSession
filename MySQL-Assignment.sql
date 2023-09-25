create table student(rollno int primary key, name varchar(20), batch int);
use test;
desc batch;
create table marks(rollno int, hindi int, marathi int, foreign key(rollno) references student(rollno));
create table batch(id int ,name varchar(20),foreign key(id) references student(rollno));
drop table batch;
select * from batch;
insert into student(rollno,name,batch) values (1,'suyog',2),(2,'shiv',1),(3,'shakti',1),(4,'rahul',2),(5,'ram',2);
insert into marks(rollno,hindi,marathi) values (2,67,34),(1,90,89),(3,32,90);
insert into batch(id,name) values (1,'rose'),(2,'gulab');

select * from batch
INNER JOIN student ON batch.id=student.batch
INNER JOIN marks ON student.rollno=marks.rollno
where batch.name='rose';

select * from marks
INNER JOIN student  ON student.rollno=marks.rollno where batch in(1);