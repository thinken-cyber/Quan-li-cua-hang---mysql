create database Cuahang
 use Cuahang

 create table Uni(
  Tenkhach char(20),
  Sodienthoai nvarchar(30) not null primary Key,
  Tentruyen char(20),
  Dongia float
  )
  insert into Uni values('Nguyen Duc thinh', '123456789','rua va tho',200.000)
  
  select * from Uni
