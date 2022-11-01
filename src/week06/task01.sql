create table customers (
    customerId int auto_increment,
    customerName varchar(50),
    customerAddress varchar(100),
    phoneNum varchar(10),
    ssn varchar(10),
    primary key(cid)
);

create table accounts (
    accountId int auto_increment,
    customerId int,
    balance decimal,
    accountType varchar(10),
    primary key(accountId)
);