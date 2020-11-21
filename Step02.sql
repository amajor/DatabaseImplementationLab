/*************** Case Project 5-1: Implementing a New Database ****************/
/*  Step 2:
 *  Create and execute a SQL query to create the four individual tables with the
 *  null and default constraints.
 *    - Product
 *    - ProductCategory
 *    - Supplier
 *    - Inventory
 ******************************************************************************/
USE ProductInformation;

CREATE TABLE Product (
	ProductID int NOT NULL,
	ProductCategoryID int NOT NULL,
	SupplierID int NOT NULL,
	Description nvarchar(50) NOT NULL,
	Color nvarchar(20) NOT NULL,
	UnitPrice money NOT NULL,
	ModifiedOn datetime NOT NULL DEFAULT GetDate()
);

CREATE TABLE ProductCategory (
	ProductCategoryID int NOT NULL,
	Description nvarchar(50) NOT NULL,
	ModifiedOn datetime NOT NULL DEFAULT GetDate()
);

CREATE TABLE Supplier (
	SupplierID int NOT NULL,
	SupplierName nvarchar(50) NOT NULL,
	City nvarchar(50) NOT NULL,
	Country nvarchar(50) NOT NULL,
	ContactPhone nvarchar(20) NOT NULL,
	ModifiedOn datetime NOT NULL DEFAULT GetDate()
);

CREATE TABLE Inventory (
	InventoryID int NOT NULL,
	ProductID int NOT NULL,
	UnitsOnHand int NOT NULL,
	ModifiedOn datetime NOT NULL DEFAULT GetDate()
);