

select mamh,tenmh,donvitinh,dongia from mathang --1
select mamh,tenmh,donvitinh,dongia from mathang where dongia>=62 --2

select mathang.mancc,nhacungcap.tenncc,mathang.mamh,mathang.tenmh,mathang.donvitinh,mathang.dongia from mathang left join nhacungcap on mathang.mancc=nhacungcap.mancc where mathang.mancc=4 or mathang.mancc=2 --3

select mathang.mancc,nhacungcap.tenncc,nhacungcap.diachi,mathang.mamh,mathang.tenmh,mathang.donvitinh,mathang.dongia from mathang left join nhacungcap on mathang.mamh=nhacungcap.mancc where nhacungcap.diachi='TP.HCM' --4

select manv, holot, tennv, phai, diachinv from nhanvien where diachinv='Q1 Hay Nam' --5

select dondathang.maddh, dondathang.ngaydh, dondathang.ngaygiao, dondathang.makh, khachhang.tenkh, datediff(ngaygiao, ngaydh) as thoigian from dondathang join khachhang on dondathang.makh=khachhang.makh where datediff(ngaygiao, ngaydh)<15 --13
