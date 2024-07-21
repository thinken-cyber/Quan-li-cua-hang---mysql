create database Nhanvien

use Nhanvien

create table Thongtin(
MaNV nvarchar(50) not null primary key,
TenNv nvarchar(20),
NgaySinh date,
DiaChi nvarchar(30),
SoNha int
)

insert into ThongTin values('01','Nguyen Duc Thinh','2020-4-15','Cau Giay',1),
                           ('02','Nguyen Duc Thinh','2020-4-15','Cau Giay',2),
						   ('03','Nguyen Duc Thinh','2020-4-15','Cau Giay',3),
						   ('04','Nguyen Duc Thinh','2020-4-15','Cau Giay',4),
						   ('05','Nguyen Duc Thinh','2020-4-15','Cau Giay',5)
select*from ThongTin
