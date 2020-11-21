/*************** Case Project 5-1: Implementing a New Database ****************/
/*  Step 11:
 *  Create a view vTotalInventoryByProductCategory that lists the 
 *  ProductCategory description and the total inventory on hand.
 ******************************************************************************/
CREATE VIEW vTotalInventoryByProductCategory AS
	SELECT 
		ProductCategory.ProductCategoryID AS 'Category ID',
		ProductCategory.Description AS 'Description',
		SUM(TotalInventoryOnHand) AS 'Total Inventory On Hand'
	FROM ProductCategory
	LEFT OUTER JOIN (
		SELECT 
			Product.ProductID,
			ProductCategoryID,
			UnitPrice,
			UnitsOnHand,
			UnitPrice * UnitsOnHand AS TotalInventoryOnHand
		FROM Product
		LEFT OUTER JOIN Inventory
		ON Product.ProductID = Inventory.ProductID
	) ProductWithInventory
	ON ProductWithInventory.ProductCategoryID = ProductCategory.ProductCategoryID
	GROUP BY ProductCategory.ProductCategoryID, ProductCategory.Description