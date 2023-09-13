create database quanlybanhang;
use quanlybanhang;
create table customer(
	cid char(5) primary key,
    cname varchar(45),
    cage int
);
create table orders(
	oid char(5) primary key,
    cid char(5),
    foreign key(cid) references customer(cid),
    odate date not null,
    ototal_price float not null
);
create table product(
	pid char(5) primary key,
    pname varchar(45) not null,
	price float not null
);
create table order_detail(
	oid char(5),
    foreign key(oid) references orders(oid),
	pid char(5),
    foreign key(pid) references product(pid),
    odqty int
)