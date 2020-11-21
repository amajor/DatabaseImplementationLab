/*************** Case Project 5-1: Implementing a New Database ****************/
/*  Step 5:
 *  Use an UPDATE statement to change the SupplierName of SupplierID 2 to
 *  Cuisinex.
 ******************************************************************************/
USE ProductInformation;

/* Select only the row we care about to test our condition */
SELECT * FROM Supplier WHERE SupplierID = 2;

/* Perform the update */
UPDATE Supplier
	SET SupplierName = 'Cuisinex'
	WHERE  SupplierID = 2;

/* See our update in context with the rest of the data */
SELECT * FROM Supplier;