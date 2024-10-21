CREATE TABLE [dbo].[FactSalesOrder] (

	[SalesOrderKey] int NOT NULL, 
	[SalesOrderDateKey] int NOT NULL, 
	[ProductKey] int NOT NULL, 
	[CustomerKey] int NOT NULL, 
	[Quantity] int NULL, 
	[SalesTotal] decimal(18,0) NULL
);


GO
ALTER TABLE [dbo].[FactSalesOrder] ADD CONSTRAINT FK_532a1162_520b_42a4_b52f_853711687749 FOREIGN KEY ([CustomerKey]) REFERENCES dbo.DimCustomer([CustomerKey]);
GO
ALTER TABLE [dbo].[FactSalesOrder] ADD CONSTRAINT FK_611b5d57_553f_4ef2_a93c_21e92b996b93 FOREIGN KEY ([ProductKey]) REFERENCES dbo.DimProduct([ProductKey]);
GO
ALTER TABLE [dbo].[FactSalesOrder] ADD CONSTRAINT FK_6147c18e_7575_4fdf_9694_e1de1d401d75 FOREIGN KEY ([SalesOrderDateKey]) REFERENCES dbo.DimDate([DateKey]);