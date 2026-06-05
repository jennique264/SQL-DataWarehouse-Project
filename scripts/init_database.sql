/*
===============================================
CREATING Database 'DataWarehouse' and Schemas 
===============================================
Script purpose :
	This script focuses on creating a database named 'DataWarehouse' after checking if it already exists.
	If the database already exists, it is dropped and recreated.
	Additionally, the script sets up three schemas within the database - 'gold', 'silver',and 'bronze'.

WARNING : 
	Running this script will delete/drop th entire database if present initially,
	so proceed if you have proper backups before running this script.

*/

USE master;
GO

-- DROP and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create a Database 'DataWarehouse'
CREATE DATABASE DataWarehouse;
GO

USE DataWareHouse;
GO


-- Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO 
CREATE SCHEMA gold;
GO
