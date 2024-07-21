Create database  QLKhachhang

use QLKhachhang

create table KhachHang(
MaKH int not null primary key,
HoTen nvarchar(20),
LoaiPhong nvarchar(1000),
SoPhongThue int,
)
 
 insert into Khachhang values(01,'Nguyen Duc Thinh ', 'President ', 1),
                             (02,'Nguyen Duc Thinh ', 'President ', 1),
							 (03,'Nguyen Duc Thinh ', 'President ', 1),
							 (04,'Nguyen Duc Thinh ', 'President ', 1),
							 (05,'Nguyen Duc Thinh ', 'President ', 1)
select * from QLKhachHang
