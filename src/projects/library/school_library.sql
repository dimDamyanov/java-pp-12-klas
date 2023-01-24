create database school_library;

create table authors (
  authorId int auto_increment,
  authorFirstName varchar(20) NOT NULL,
  authorMiddleName varchar(20),
  authorLastName varchar(20) NOT NULL,
  authorNationality varchar(3) NOT NULL,
  primary key(authorId)
  CONSTRAINT FK_AuthorNationality FOREIGN KEY (authorNationality) REFERENCES nationalities(nationalityCode)
);

create table books (
  bookId int autoincrement,
  bookTitle varchar(100) NOT NULL,
  bookYear int,
  bookGenre varchar(50)
  primary key(bookId)
);

create table nationalities (
  nationalityCode varchar(3) NOT NULL,
  countryName varchar(100) NOT NULL,
  primary key(nationalityCode)
);

create table bookAuthors (
  bookId int,
  authorId int,
  primary key(bookId, authorId),
  CONSTRAINT FK_AuthorBook FOREIGN KEY (authorId) REFERENCES authors(authorId),
  CONSTRAINT FK_BookAuthor FOREIGN KEY (bookId) REFERENCES books(authorId)
);
