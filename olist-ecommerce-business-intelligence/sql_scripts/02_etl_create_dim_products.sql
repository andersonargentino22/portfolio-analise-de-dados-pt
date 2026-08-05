-- ==============================================================================
-- Script: Creation of the Products Dimension View (v_dim_products)
-- Objective: Cleanse product data, handle missing values, and apply Title Case 
--            formatting to category names for better UI presentation.
-- ==============================================================================

USE [BrazilianECommerce];
GO

CREATE VIEW [dbo].[v_dim_products] AS 
SELECT 
    -- Clean primary key
    REPLACE(["product_id"], '"', '') AS product_id,
    
    -- Format category name: Title Case, replace underscores, handle nulls
    COALESCE(
        STUFF((
            SELECT ' ' + UPPER(LEFT(value, 1)) + LOWER(SUBSTRING(value, 2, LEN(value)))
            FROM STRING_SPLIT(
                REPLACE(TRIM(REPLACE(["product_category_name"], '"', '')), '_', ' '), 
                ' '
            )
            WHERE value <> ''
            FOR XML PATH(''), TYPE
        ).value('.', 'NVARCHAR(MAX)'), 1, 1, ''), 
        'Not Informed'
    ) AS product_category_name
    
FROM 
    [dbo].[olist_products_dataset];
GO

