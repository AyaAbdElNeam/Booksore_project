---create books table:
/*create table BOOKS (
    Book_ID INT not null,
	Title VARCHAR(255) NOT NULL,
	Genre VARCHAR(225) NOT NULL,
    Author VARCHAR(255) NOT NULL,
    ISBN VARCHAR(20) NOT NULL,
    Price DECIMAL(10,2) NOT NULL check (Price >0),
    Published_Year INT,
    Quantity_In_Stock INT DEFAULT 0,
	constraint PK_Book_id primary key(Book_ID),
	constraint U_ISBN UNIQUE(ISBN));

---create customers table:
CREATE TABLE CUSTOMERS (
    Customer_ID INT NOT NULL,
    First_Name VARCHAR(100) NOT NULL,
    Last_Name VARCHAR(100) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Phone_Number VARCHAR(20),
    Registration_Date DATE DEFAULT GETDATE()
	constraint PK_Customer_ID PRIMARY KEY(Customer_ID),
	constraint U_Email unique(Email));

---create sales table:
CREATE TABLE SALES (
    Sale_ID INT not null,
    Customer_ID INT not null,
    Sale_Date DATE DEFAULT GETDATE(),
    Total_Amount DECIMAL(10,2) not null,
	constraint PK_Sale_ID primary key(Sale_ID),
	constraint FK_Customer_ID foreign key(Customer_ID) REFERENCES Customers(Customer_ID) ON DELETE CASCADE ON UPDATE CASCADE);

---create sale_details table:
CREATE TABLE SALE_DETAILS(
    Sale_Detail_ID INT not null,
    Sale_ID INT not null,
    Book_ID INT not null,
    Quantity_Purchased INT NOT NULL,
    Price_At_Sale DECIMAL(10,2) NOT NULL,
    constraint PK_Sale_Detail_ID primary key (Sale_Detail_ID),
	constraint FK_Sale_ID foreign key(Sale_ID) references SALES(Sale_ID) ON DELETE CASCADE ON UPDATE CASCADE,
	constraint FK_Book_ID foreign key(Book_ID) references Books(Book_ID)ON DELETE CASCADE ON UPDATE CASCADE);*/
