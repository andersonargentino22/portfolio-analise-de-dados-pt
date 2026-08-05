-- ==============================================================================
-- Script: Creation of the Customers Dimension View (v_dim_customers)
-- Objective: Cleanse dirty string data, remove rogue quotes from raw CSV exports, 
--            and standardize text formatting for Power BI consumption.
-- ==============================================================================

USE [BrazilianECommerce];
GO

CREATE VIEW [dbo].[v_dim_customers] AS 
SELECT DISTINCT
    -- Removing unwanted quotation marks from IDs
    REPLACE(["customer_id"], '"', '') AS customer_id,
    REPLACE(["customer_unique_id"], '"', '') AS customer_unique_id,
    REPLACE(["customer_zip_code_prefix"], '"', '') AS customer_zip_code_prefix,
    
    -- Standardizing text data
    TRIM(["customer_city"]) AS customer_city,
    UPPER(["customer_state"]) AS customer_state
FROM 
    [BrazilianECommerce].[dbo].[olist_customers_dataset];
GO