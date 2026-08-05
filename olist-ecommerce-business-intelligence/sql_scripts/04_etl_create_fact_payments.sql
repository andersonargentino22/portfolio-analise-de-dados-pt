-- ==============================================================================
-- Script: Creation of the Payments Fact View (v_fact_payments)
-- Objective: Cleanse payment transaction data, standardize payment types, 
--            and link purchase dates for time-based financial analysis.
-- ==============================================================================

USE [BrazilianECommerce];
GO

CREATE VIEW [dbo].[v_fact_payments] AS 
SELECT 
    -- Transaction Keys
    TRIM(REPLACE(p.["order_id"], '"', '')) AS order_id,
    TRIM(REPLACE(o.["customer_id"], '"', '')) AS customer_id,
    
    -- Date linkage for dCalendar
    TRY_CONVERT(DATE, NULLIF(TRIM(REPLACE(o.["order_purchase_timestamp"], '"', '')), ''), 120) AS order_purchase_timestamp,
    
    -- Transaction metrics and attributes
    CAST(p.["payment_sequential"] AS INT) AS payment_sequential,
    
    -- Standardize payment types and handle edge cases
    CASE 
        WHEN LOWER(TRIM(REPLACE(p.["payment_type"], '_', ' '))) = 'not defined' THEN 'unknown'
        ELSE LOWER(TRIM(REPLACE(p.["payment_type"], '_', ' ')))
    END AS payment_type,
    
    CAST(p.["payment_installments"] AS INT) AS payment_installments,
    CAST(p.["payment_value"] AS DECIMAL(10, 2)) AS payment_value
FROM 
    [dbo].[olist_order_payments_dataset] p
INNER JOIN 
    [dbo].[olist_orders_dataset] o ON p.["order_id"] = o.["order_id"]
WHERE 
    o.["order_purchase_timestamp"] IS NOT NULL;
GO
