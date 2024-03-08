﻿SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Altering [dbo].[Categories]'
GO
ALTER TABLE [dbo].[Categories] ADD
[wat] [int] NULL,
[foo2] [int] NULL,
[foo3] [int] NULL,
[foo4] [int] NULL,
[foo5] [int] NULL,
[foo6] [int] NULL
GO
PRINT N'Refreshing [dbo].[Alphabetical list of products]'
GO
EXEC sp_refreshview N'[dbo].[Alphabetical list of products]'
GO
PRINT N'Refreshing [dbo].[Products by Category]'
GO
EXEC sp_refreshview N'[dbo].[Products by Category]'
GO
PRINT N'Refreshing [dbo].[Product Sales for 1997]'
GO
EXEC sp_refreshview N'[dbo].[Product Sales for 1997]'
GO
PRINT N'Refreshing [dbo].[Sales by Category]'
GO
EXEC sp_refreshview N'[dbo].[Sales by Category]'
GO

