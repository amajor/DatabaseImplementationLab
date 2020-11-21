/*************** Case Project 5-1: Implementing a New Database ****************/
/*  Step 3:
 *  Using the ALTER TABLE syntax, add a primary key and a foreign key constraint
 *  to each table.
 ******************************************************************************/
USE ProductInformation;

ALTER TABLE Product
ADD PRIMARY KEY (ProductID);

ALTER TABLE ProductCategory
ADD PRIMARY KEY (ProductCategoryID);

ALTER TABLE Supplier
ADD PRIMARY KEY (SupplierID);

ALTER TABLE Inventory
ADD PRIMARY KEY (InventoryID);

ALTER TABLE Product
ADD FOREIGN KEY (ProductCategoryID) REFERENCES ProductCategory(ProductCategoryID);

ALTER TABLE Product
ADD FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID);

ALTER TABLE Inventory
ADD FOREIGN KEY (ProductID) REFERENCES Product(ProductID);