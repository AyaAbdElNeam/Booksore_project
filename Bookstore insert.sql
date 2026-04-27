/*INSERT INTO BOOKS(Book_ID,Title,Author,ISBN,Price,Published_Year,Quantity_In_Stock)
       VALUES (1,'The Great Gatsby','F. Scott Fitzgerald',
                '9780743273565', 12.99, 1925, 15);

INSERT INTO BOOKS(Book_ID,Title,Author,ISBN,Price,Published_Year,Quantity_In_Stock)
       VALUES (2,'To Kill a Mockingbird','Harper Lee',
                '9780061120084', 14.50, 1960, 10);

INSERT INTO BOOKS(Book_ID,Title,Author,ISBN,Price,Published_Year,Quantity_In_Stock)
       VALUES (3,'1984','George Orwell',
                '9780451524935', 10.99, 1949, 8);

INSERT INTO Customers (Customer_ID,First_Name, Last_name, Email, Phone_Number)
VALUES
(1,'John', 'Smith', 'john.smith@email.com', '555-0101'),
(2,'Sarah', 'Johnson', 'sarahJ@email.com', '555-0102');


INSERT INTO Sales (Sale_ID, Customer_ID,Total_Amount)
VALUES(1,
    (SELECT customer_id FROM Customers 
     WHERE first_name = 'John' AND last_name = 'Smith'),25.98),
	(2,
    (SELECT customer_id FROM Customers 
     WHERE first_name = 'Sarah' AND last_name = 'Johnson'),14.50);

---by subquerys:-
insert into SALE_DETAILS(Sale_Detail_ID,Sale_ID,Book_ID,Quantity_Purchased,Price_At_Sale)
values (1,
---TO RETRIVE SALE_ID from sale_id table
(select Sale_ID
FROM CUSTOMERS AS C,SALES AS S
where First_Name='John' and C.Customer_ID = S.Customer_ID),
---to retrive book_id from books table
(SELECT Book_ID
FROM BOOKS
WHERE Title='The Great Gatsby'),2
---to retrive price from books table 
,(SELECT Price
from BOOKS
WHERE Title='The Great Gatsby'));
--- by join:-
INSERT INTO SALE_DETAILS
(Sale_Detail_ID, Sale_ID, Book_ID, Quantity_Purchased, Price_At_Sale)
SELECT
    2,
    s.Sale_ID,
    b.Book_ID,
    2,
    b.Price
FROM SALES s
JOIN CUSTOMERS c ON c.Customer_ID = s.Customer_ID
JOIN BOOKS b ON b.Title = 'The Great Gatsby'
WHERE c.First_Name = 'John'
  AND c.Last_Name = 'Smith';*/






