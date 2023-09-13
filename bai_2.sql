create database session_2_1;
use session_2_1;
create table phieu_xuat(
	sopx int primary key,
    ngay_xuat date not null
);
create table chi_tiet_phieu_xuat(
	dgxuat float,
    slxuat int
);
create table vat_tu(
	mavtu char(4) primary key,
    tenvtu varchar(50)
);
create table chi_tiet_phieu_nhap(
	dgnhap float,
    slnhap int
);
create table phieu_nhap(
	sopn char(5) primary key,
    ngay_nhap date
);
create table don_dat_hang(
	sodh char(5) primary key,
    ngaydh date not null
);
create table nha_cung_cap(
	manhacc char(5) primary key,
    tennhacc varchar(100) not null,
    dia_chi varchar(255),
    sdt int
)