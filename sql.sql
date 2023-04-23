create table states(
    state_id int auto_increment primary key,
    name varchar(100) not null
);
create table cities(
    city_id int auto_increment primary key,
    name varchar(100) not null,
    state_id int not null,
    constraint fk_cities_states foreign key(state_id) references states(state_id)
);

create table users (
    user_id int auto_increment primary key,
    name varchar(100),
    contact varchar(10),
    whatsapp varchar(10),
    pincode varchar(6),
    email varchar(256) unique not null,
    password varchar(200),
    address varchar(200),
    pic varchar(200),
    otp int,
    seller varchar(1) default '0' not null
);
UPDATE users
SET password = 'sandeep@124' where email='sandeeprajakjbp2002@gmail.com';

update users
set seller = '1' where email='sandeeprajakjbp2002@gmail.com';

##########################



create database kthdb;

use kthdb;

create table states 
(
    state_Id int auto_increment primary key,
    name varchar(40) not null
);

create table cities (
    city_Id int auto_increment primary key,
    name varchar(40),
    state_Id  int not null,
    constraint fk_cities_states foreign key(state_Id) references states(state_Id)
);

create table users
(
    user_Id int auto_increment primary key,
    name varchar(50),
    email varchar(256) unique not null,
    password varchar(200) not null,
    contact varchar(10) unique,
    whatsapp varchar(10) unique,
    city_Id int,
    address varchar(300),
    pic varchar(100),
    seller int default 0,
    otp varchar(10),
    constraint fk_users_cities foreign key(city_Id) references cities(city_Id)
);

create table products
(
    product_Id int auto_increment primary key,
    name varchar(50) not null,
    price int not null,
    details varchar(1000) not null,
    stock int default 1,
    min_age int,
    discount int
);
create table products_images
(
    image_Id int auto_increment primary key,
    path varchar(100) not null,
    product_Id int not null,
    constraint fk_products_images foreign key(product_Id) references products(product_Id)
);

create table carts 
(
    cart_Id int auto_increment primary key,
    user_Id int not null,
    cart_date datetime,
    count int not null,
    status boolean not null,
    transaction_pic varchar(100),
    constraint fk_carts_users foreign key(user_Id) references users(user_Id)
);

create table cart_products 
(
    cart_product_Id int auto_increment primary key,
    cart_Id int not null,
    product_Id int not null,
    constraint fk_cartproducts_carts foreign key(cart_Id) references carts(cart_Id),
    constraint fk_cartproducts_products foreign key(product_Id) references products(product_Id)
);

create table feedbacks
(
    feedback_Id int auto_increment primary key,
    feedback varchar(500) not null,
    user_Id int not null,
    visible boolean default false,
    constraint fk_feedbacks_users foreign key(user_Id) references users(user_Id)
);



############################################################
create table products
(
    product_Id int auto_increment primary key,
    img varchar(150),
    name varchar(50) not null,
    price int not null,
    details varchar(1000) not null,
    stock int default 1,
    min_age int,
    discount int
);


