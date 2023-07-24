create table author
(
authorid int primary key,
authorname varchar(30),
city varchar(20),
country varchar(20)
)
create table category
(
category_id int primary key,
description varchar(50)
)


create table book
(
book_id int primary key,
title varchar(20),
authorid int foreign key(authorid) references author(authorid),
categoryid int foreign key(categoryid) references category(category_id),
 in_year int,
 price int,
 publisher varchar(30),
 rating int
)

create table order_details
(
order_no int ,
book_id int foreign key(book_id) references book(book_id)
);

exec sp_help author;
exec sp_help category;
exec sp_help book;
exec sp_help order_details;


