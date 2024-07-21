create database Cafe3

use Cafe3

create table DATHANG(
MaDH nvarchar(10) not null primary key,
SoBan nvarchar(20),
DoUong nvarchar(50),
SoLuong int,
Gia int,
Ngay date,
)

insert into  DATHANG values (01,'10','whiskey',20,20.000,'2024-3-10'),
                       (02,'10','whiskey',20,20.000,'2024-3-10'),
					   (03,'10','whiskey',20,20.000,'2024-3-10'),
					   (04,'10','whiskey',20,20.000,'2024-3-10'),
					   (05,'10','whiskey',20,20.000,'2024-3-10')
select * from DATHANG