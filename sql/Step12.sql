/*************** Case Project 5-1: Implementing a New Database ****************/
/*  Step 12:
 *  Add an index to the Product table on the Description column.
 ******************************************************************************/
USE ProductInformation;

CREATE INDEX IX_Product_Description
ON Product (
	Description
);