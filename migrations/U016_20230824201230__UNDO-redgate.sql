SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Altering [dbo].[Order Details]'
GO
ALTER TABLE [dbo].[Order Details] DROP
COLUMN [UnitSKU]
GO
PRINT N'Altering [dbo].[Products]'
GO
ALTER TABLE [dbo].[Products] ADD
[Colour] [nvarchar] (50) NULL,
[Colour2] [nvarchar] (50) NULL,
[Colour3] [nvarchar] (50) NULL
GO
PRINT N'Altering [dbo].[Shippers]'
GO
ALTER TABLE [dbo].[Shippers] DROP
COLUMN [CompanyId]
GO
PRINT N'Altering [dbo].[Suppliers]'
GO
ALTER TABLE [dbo].[Suppliers] DROP
COLUMN [ContactId]
GO
PRINT N'Refreshing [dbo].[Customer and Suppliers by City]'
GO
EXEC sp_refreshview N'[dbo].[Customer and Suppliers by City]'
GO
PRINT N'Refreshing [dbo].[Alphabetical list of products]'
GO
EXEC sp_refreshview N'[dbo].[Alphabetical list of products]'
GO
PRINT N'Refreshing [dbo].[Current Product List]'
GO
EXEC sp_refreshview N'[dbo].[Current Product List]'
GO
PRINT N'Refreshing [dbo].[Products Above Average Price]'
GO
EXEC sp_refreshview N'[dbo].[Products Above Average Price]'
GO
PRINT N'Refreshing [dbo].[Products by Category]'
GO
EXEC sp_refreshview N'[dbo].[Products by Category]'
GO
PRINT N'Refreshing [dbo].[Invoices]'
GO
EXEC sp_refreshview N'[dbo].[Invoices]'
GO
PRINT N'Refreshing [dbo].[Order Details Extended]'
GO
EXEC sp_refreshview N'[dbo].[Order Details Extended]'
GO
PRINT N'Refreshing [dbo].[Order Subtotals]'
GO
EXEC sp_refreshview N'[dbo].[Order Subtotals]'
GO
PRINT N'Refreshing [dbo].[Product Sales for 1997]'
GO
EXEC sp_refreshview N'[dbo].[Product Sales for 1997]'
GO
PRINT N'Refreshing [dbo].[Sales by Category]'
GO
EXEC sp_refreshview N'[dbo].[Sales by Category]'
GO

﻿SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

