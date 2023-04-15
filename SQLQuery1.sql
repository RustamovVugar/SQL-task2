create database Course

create table Teachers(
[Id] int primary key identity(1,1),
[Name] nvarchar(50) not null,
[Surname] nvarchar(50),
[Email] nvarchar (100) unique,
[Age] int check (Age>17),
[Salary] int
)

insert into Teachers([Name], [Surname], [Email], [Age], [Salary])
values( 'Cavid', 'Bashirov','cavid@gmail.com', 19, 800),
('Nicat', 'Novruzzade', 'nicat@gmail.com', 21, 1300), 
('Anar', 'Huseynov', 'anar@gmail.com', 26, 2500),
('Murad', 'Allahverdiyev', 'murad@mail.ru',21,800),
('Orxan', 'Memmedov', 'orxan@gmail.com', 31,1300)

select * from Teachers
where Salary between 1000 and 3000

select * from Teachers 
where Age > (select AVG(Age) from Teachers)


select * from Teachers   
where [Name] like 'C%'

select * from Teachers   
where [Email] like '%@mail.ru'

select*from Teachers



 
