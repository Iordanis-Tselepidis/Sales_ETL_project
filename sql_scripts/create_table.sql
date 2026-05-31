-- creation of the main table

create table if not exists sales (
  InvoiceNo INT,
  StockCode VARCHAR(155),
  Description VARCHAR(155),
  Quantity INT,
  InvoiceDate TIMESTAMP,
  UnitPrice NUMERIC(10,2),
  TotalAmount NUMERIC(10,2),
  CustomerID INT,
  Country VARCHAR(155);