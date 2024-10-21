CREATE TABLE [dbo].[DimProduct] (

	[ProductKey] int NOT NULL, 
	[ProductAltKey] varchar(25) NULL, 
	[ProductName] varchar(50) NOT NULL, 
	[Category] varchar(50) NULL, 
	[ListPrice] decimal(18,0) NULL
);


GO
ALTER TABLE [dbo].[DimProduct] ADD CONSTRAINT UQ_662c5e45_903e_4f4e_a31a_bd5606e66dd4 unique NONCLUSTERED ([ProductKey]);