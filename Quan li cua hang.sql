create database BTL_01

use BTL_01

create table NhanVien(
MaNV char(10) not null primary key,
TenNV nvarchar(30),
Gioitinh char(10),
Namsinh int,
SDT char(20),
Diachi char(20)
)

create table Taikhoan(
TenTK char(20),
Matkhau char(10),
Quyen char(10),
MaNV char(10),
foreign key (MaNV) references NhanVien(MaNV)
)

insert into Nhanvien values('NV01', 'Nguyen Van A', N'Nam', 2000, '0123456789', 'Ha Noi'),
							('NV02', 'Nguyen Van B', N'Nam', 2000, '0123456789', 'Ha Noi'),
							('NV03', 'Nguyen Van C', N'Nam', 2000, '0123456789', 'Ha Noi'),
							('NV04', 'Nguyen Van D', N'Nam', 2000, '0123456789', 'Ha Noi')

select * from NhanVien