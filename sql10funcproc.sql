1.
DELIMITER $$
CREATE FUNCTION tongdoanhthu1997()
RETURNS INT
NO SQL
BEGIN
  DECLARE tong INT;
  SELECT SUM(chitietddh.soluong * mathang.dongia * (1 - chitietddh.giamgia)) INTO tong
  FROM chitietddh
  JOIN mathang ON chitietddh.mamh = mathang.mamh
  JOIN dondathang ON dondathang.maddh = chitietddh.maddh
  WHERE YEAR(dondathang.ngaydh) = 1997;
  RETURN tong;
END;$$
SELECT tongdoanhthu1997() AS tong1997;

2.
DELIMITER $$
CREATE FUNCTION tongdoanhthunam(nam int)
RETURNS INT
NO SQL
BEGIN
  DECLARE tong INT;
  SELECT SUM(chitietddh.soluong * mathang.dongia * (1 - chitietddh.giamgia)) INTO tong
  FROM chitietddh
  JOIN mathang ON chitietddh.mamh = mathang.mamh
  JOIN dondathang ON dondathang.maddh = chitietddh.maddh
  WHERE YEAR(dondathang.ngaydh) = nam;
  RETURN tong;
END;$$
SELECT tongdoanhthunam(1998) AS tongnam;

3.
delimiter $$
create function giatridonhang(madondathang char(5))
returns int
no sql
begin
declare thanhtien int;
select chitietddh.soluong*mathang.dongia*(1-chitietddh.giamgia) into thanhtien
from chitietddh join mathang on chitietddh.mamh=mathang.mamh
where chitietddh.maddh=madondathang;
return thanhtien;
end;$$
select giatridonhang('2') as thanhtien

4.
delimiter $$
create function doanhthunhanvien(manv int)
returns int
no sql
begin
declare doanhthu int;
select sum(chitietddh.soluong*mathang.dongia*(1-chitietddh.giamgia)) into doanhthu
from dondathang join chitietddh on chitietddh.maddh=dondathang.maddh
join mathang on chitietddh.mamh=mathang.mamh
where dondathang.manv=manv;
return doanhthu;
end;
$$
select doanhthunhanvien(4) as thanhtien

6.
delimiter $$
create procedure lietketheophai(phai char(2))
begin
select * from nhanvien where phai=phai;
end;
$$
call lietketheophai('F')

7,8.
delimiter $$
create procedure lietketheoddh(maddh char(5))
begin
select mathang.mamh, mathang.tenmh, chitietddh.soluong
from chitietddh join mathang on chitietddh.mamh=mathang.mamh
where chitietddh.maddh=maddh;
end;
$$
call lietketheoddh('2')

9.
delimiter $$
create procedure lietketheoncc(mancc int)
begin
select mathang.mamh, mathang.tenmh, nhacungcap.mancc, nhacungcap.tenncc
from mathang join nhacungcap on mathang.mancc=nhacungcap.mancc
where nhacungcap.mancc=mancc;
end;
$$
call lietketheoncc(1)

10.
delimiter $$
create procedure lietketheongay(ngayA date, ngayB date)
begin
select *
from dondathang
where ngaydh between ngayA and ngayB;
end;
$$
call lietketheongay('1997-01-01', '1997-01-31')