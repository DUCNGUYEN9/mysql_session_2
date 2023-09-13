create database bai_tap_ung_dung;
use bai_tap_ung_dung;
create table orders(
	Order_id char(5) primary key,
    Created date default (curdate()),
    Total_amount float,
    Order_Status bit default(0)
);
create table product(
	Product_Id char(5) primary key,
    Product_Name varchar(45) not null,
	price float check(price>0) not null,
    Descriptions text not null,
    Product_status bit default(1)
);
create table order_detail(
	Order_id char(5),
    foreign key(Order_id) references orders(Order_id),
	Product_Id char(5),
    foreign key(Product_Id) references product(Product_Id),
    primary key(Order_id,Product_Id),
    Price float,
    Quantity int,
    Amount float as (price * quantity)
)