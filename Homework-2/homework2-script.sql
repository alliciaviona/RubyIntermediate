-- No. 2
-- Create table for customers
create table customers (
    id int primary key auto_increment,
    name varchar(50) not null,
    phone varchar(50) not null,
    address varchar(100) not null,
    constraint customers_unique unique (phone)
);

-- Create table for orders
create table orders(
    id int primary key auto_increment,
    customer_id int not null,
    order_details int not null,
    order_date date not null,
    total_price float not null
);


-- Create table for order details
create table order_details(
    id int primary key auto_increment,
    item_id int not null,
    item_qty int not null
);

-- No. 3
-- Insert minimal 5 dummy records for each entity

-- Insert into customers
insert into customers values
    (1,"Budi", "0812345657", "Jl. Kenari"),
    (2,"Ani", "0812345658", "Jl. Anggrek"),
    (3,"Lia", "0812345659", "Jl. Mawar"),
    (4,"Doni", "0812345660", "Jl. Kasturi"),
    (5,"Dina","0812345661","Jl. Erlangga");

-- Insert into order
insert into orders values
    (1 , 1, 1, '2020-3-23', 30000),
    (2 , 2, 2, '2020-4-25', 20000),
    (3 , 3, 3, '2020-1-2', 10000),
    (4 , 4, 4, '2020-6-29', 15000),
    (5 , 5, 5, '2020-4-10', 45000);

-- Insert into order_details
insert into order_details values 
    (1, 8, 3),
    (2, 7, 1),
    (3, 8, 1),
    (4, 9, 1),
    (5, 10, 1);

-- No. 4
select *
from orders
inner join customers on orders.customer_id = customers.id
inner join order_details on orders.order_details_id = order_details.id
inner join items on order_details.item_id = items.id;