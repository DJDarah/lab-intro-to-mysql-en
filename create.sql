CREATE DATABASE lab_mysql;

USE lab_mysql;

CREATE TABLE Cars (
    VIN VARCHAR(20) PRIMARY KEY,
    Manufacturer VARCHAR(50),
    Model VARCHAR(50),
    Year INT,
    Color VARCHAR(30)
);

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    Address VARCHAR(200),
    City VARCHAR(50),
    State_Province VARCHAR(50),
    Country VARCHAR(50),
    Postal_Code VARCHAR(10)
);

CREATE TABLE Salespersons (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Store VARCHAR(50)
);

CREATE TABLE Invoices (
    InvoiceNumber INT PRIMARY KEY,
    Date DATE,
    CarVIN VARCHAR(20),
    CustomerID INT,
    StaffID INT,
    FOREIGN KEY (CarVIN) REFERENCES Cars(VIN),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (StaffID) REFERENCES Salespersons(StaffID)
);