create database bai_tap;
use bai_tap;
create table customers (
ma_kh varchar(10)  unique,
ten_kh varchar(50),
dia_chi varchar(50),
email varchar (50) unique,
sdt int unique,
ma_stk varchar(50),
primary key (ma_kh),
foreign key (ma_stk) references accounts(ma_stk)

);
create table accounts(
ma_stk varchar(50) unique ,
loai_tk varchar(10),
ngay_mo date,
so_du int,
primary key (ma_stk)
);
create table transactions(
ma_giao_dich varchar(10)  unique,
so_tien int,
thoi_gian_gd date,
mo_ta varchar(50),
ma_kh varchar(10),
primary key (ma_giao_dich),
foreign key (ma_kh) REFERENCES customers(ma_kh)
);