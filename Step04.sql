/*************** Case Project 5-1: Implementing a New Database ****************/
/*  Step 4:
 *  Use the INSERT statement to add the sample rows to the tables. Use the
 *  column default for the ModifiedOn column.
 ******************************************************************************/
USE ProductInformation;

INSERT INTO Supplier (
	SupplierID,
	SupplierName,
	City,
	Country,
	ContactPhone
)
VALUES (
	1,               -- SupplierID
	'Sanzone',       -- SupplierName
	'Oakland',       -- City
	'USA',           -- Country
	'(510) 555-7200' -- ContactPhone
),(
	2,
	'Itex',
	'Frankfurt',
	'Germany',
	'+49 (0) 8731-9140'
),(
	3,
	'Newnix',
	'New York',
	'USA',
	'(212) 555-8100'
),(
	4,
	'Zenice',
	'Chicago',
	'USA',
	'(707) 555-1400'
),(
	5,
	'Waredom',
	'Paris',
	'France',
	'+33 (0) 123-4496'
);

INSERT INTO ProductCategory (
	ProductCategoryID,
	Description
)
VALUES (
	1,         -- ProductCategoryID
	'Cookware' -- Description
),(
	2,
	'Cutlery'
),(
	3,
	'Linens'
),(
	4,
	'Tableware'
),(
	5,
	'Cooks Tools'
);

INSERT INTO Product (
	ProductID,
	ProductCategoryID,
	SupplierID,
	Description,
	Color,
	UnitPrice
)
VALUES (
	1, -- ProductID
	2, -- ProductCategoryID
	3, -- SupplierID
	'Stainless steel flatware', -- Description
	'Silver', -- Color
	30.99 -- UnitPrice
),(
	2, 2, 4,
	'Serving spoons',
	'Nickle',
	18.5
),(
	3, 4, 1,
	'Chef''s knife',
	'Silver',
	25
),(
	4, 5, 1,
	'Cutting board',
	'Black',
	15.77
),(
	5, 5, 2,
	'Sharpening steel',
	'Carbon',
	12.24
),(
	6, 3, 2, 
	'Napkin set',
	'Red',
	9.31
),(
	7, 3, 2,
	'Table cloth',
	'Various',
	21.89
),(
	8, 1, 3,
	'Large frying pan',
	'Black',
	13.5
),(
	9, 1, 3,
	'Small frying pan',
	'Black',
	7.25
),(
	10, 1, 3,
	'Nonstick saucepan',
	'Silver',
	16
);

INSERT INTO Inventory (
	InventoryID,
	ProductID,
	UnitsOnHand
)
VALUES (
	1, -- InventoryID
	1, -- ProductID
	40 -- UnitsOnHand
),(
	2, 2, 24
),(
	3, 4, 5
),(
	4, 5, 2
),(
	5, 6, 7
),(
	6, 7, 16
),(
	7, 8, 12
),(
	8, 10, 27
);