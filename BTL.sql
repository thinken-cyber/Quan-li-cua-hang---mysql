create database BTL

use BTL

create table NhanVien(
MaNV char(10) not null primary key,
TenNV nvarchar(30),
Gioitinh nvarchar(10),
Namsinh int,
SDT char(20),
Diachi nvarchar(20)
)

create table Khachhang(
MaKH char(10) not null primary key,
TenKH nvarchar(20),
SDT char(20),
Gioitinh nvarchar(10),
Diachi nvarchar(20)
)

create table Hoadon(
MaHD char(10) not null primary key,
Tongtien float,
Ngaylap date,
MaNV char(10),
MaKH char(10),
foreign key (MaNV) references Nhanvien(MaNV),
foreign key (MaKH) references Khachhang(MaKH)
)

create table Luong(
MaNV char(10),
Luongcung float,
Phucap float,
Tienphat float,
Tongluong float,
Trangthai nvarchar(20),
Thangnam date,
foreign key (MaNV) references NhanVien(MaNV)
)

create table NhaCC(
MaNCC char(10) not null primary key,
TenNCC nvarchar(20), 
Diachi nvarchar(20)
)

create table Taikhoan(
TenTK nvarchar(20),

Matkhau char(10),
Quyen char(10),
MaNV char(10),
foreign key (MaNV) references NhanVien(MaNV)
)


create table PhieuDatHang(
MaPD char(10) not null primary key,
NgayDat date,
MaNCC char(10),
foreign key (MaNCC) references NhaCC(MaNCC)
)
create table Mathang(
MaMH char(10) not null primary key,
TenMH nvarchar(20),
Giaban float,
Tonkho int
)

create table CT_hoadon_mathang(
MaHD char(10),
MaMH char(10),
foreign key (MaHD) references Hoadon(MaHD),
foreign key (MaMH) references Mathang(MaMH)
)

create table Phieunhaphang(
MaPN char(10) not null primary key,
Ngaynhap date,
MaNCC char(10),
MaNV char(10),
foreign key (MaNCC) references NhaCC(MaNCC),
foreign key (MaNV) references NhanVien(MaNV)
) 

create table CT_Nhaphang(
MaPN char(10),
MaMH char(10),
Soluong int,
foreign key (MaPN) references Phieunhaphang(MaPN),
foreign key (MaMH) references Mathang(MaMH)
)

create table CT_dathang(
MaPD char(10),
MaMH char(10),
foreign key (MaPD) references Phieudathang(MaPD),
foreign key (MaMH) references Mathang(MaMH)
)
chi nvarchar(20)
)

insert into Nhanvien values('NV01', N'Nguyen Van A', N'Nam', 2000, '0123456789', N'Ha Noi'),
							('NV02', N'Nguyen Van B', N'Nam', 2000, '0123456789', N'Ha Noi'),
							('NV03', N'Nguyen Van C', N'Nam', 2000, '0123456789', N'Ha Noi'),
							('NV04', N'Nguyen Van D', N'Nam', 2000, '0123456789', N'Ha Noi')

select * from NhanVien

UPDATE  Nhanvien
SET  SDT ='Hai phong'
WHERE MaNV='NV03'
select * from nhanvien

DELETE FROM Taikhoan
WHERE MaNV='NV03'
select *from  Nhanvien 

