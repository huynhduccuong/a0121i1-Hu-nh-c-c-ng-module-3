create database bai_tap_h;
use bai_tap_h;
create table van_phong(
ma_vp int,
dia_chi varchar(50),
sdt int,
quoc_gia varchar(50),
primary key (ma_vp)
);
create table khach_hang(
ma_kh int,
ten_kh varchar (50),
dia_chi varchar(50),
sdt int,
ma_nv int,
primary key(ma_kh),
foreign key (ma_nv) references nhan_vien(ma_nv)
);
create table loai_xe(
ma_loai_xe varchar(15),
mo_ta varchar(50),
primary key(ma_loai_xe)
);
create table xe(
ma_xe int,
ten_xe varchar(50),
ncc varchar(50),
so_luong_kho int,
don_gia int,
ma_loai_xe varchar(15),
primary key(ma_xe),
foreign key (ma_loai_xe) references loai_xe(ma_loai_xe)
);
create table don_hang(
ma_don_hang int,
ngay_mua date,
ngay_yeu_cau_giao date,
ngay_giao date,
so_luong_dat_hang int,
gia_nhap int,
gia_ban int,
ma_kh int,
ma_xe int,
primary key(ma_don_hang),
foreign key (ma_kh) references khach_hang(ma_kh),
foreign key (ma_xe) references xe(ma_xe)
);
create table thanh_toan(
ma_tt int,
ngay_tt date,
so_tien int,
primary key (ma_tt),
ma_kh int,
foreign key (ma_kh) references khach_hang(ma_kh)
);

create table nhan_vien(
ma_nv int,
ten_nv varchar(50),
email varchar(50),
ten_cv varchar(50),
primary key (ma_nv),
ma_vp int,
foreign key (ma_vp) references van_phong(ma_vp)
);
