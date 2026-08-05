-- ==============================================================================
-- Script: Creation of the Orders & Items Fact View (v_fact_orders_items)
-- Objective: Consolidate order details and item metrics, standardize dates, 
--            and calculate total financial values per item.
-- ==============================================================================

USE [BrazilianECommerce];
GO

CREATE VIEW [dbo].[v_fact_orders_items] AS 
SELECT 
    -- Order and Item Keys
    TRIM(REPLACE(i.["order_id"], '"', '')) AS order_id,
    i.["order_item_id"] AS order_item_id,
    TRIM(REPLACE(i.["product_id"], '"', '')) AS product_id,
    
    -- Keys inherited from Orders dataset
    TRIM(REPLACE(o.["customer_id"], '"', '')) AS customer_id,
    o.["order_status"] AS order_status,
    
    -- Date standardization for time intelligence (dCalendar)
    TRY_CONVERT(DATE, NULLIF(TRIM(REPLACE(o.["order_purchase_timestamp"], '"', '')), ''), 120) AS order_purchase_timestamp,
    TRY_CONVERT(DATE, NULLIF(TRIM(REPLACE(o.["order_delivered_customer_date"], '"', '')), ''), 120) AS order_delivered_customer_date,
    TRY_CONVERT(DATE, NULLIF(TRIM(REPLACE(o.["order_estimated_delivery_date"], '"', '')), ''), 120) AS order_estimated_delivery_date,
    
    -- Financial metrics formatting and calculation
    CAST(i.["price"] AS DECIMAL(10, 2)) AS price,
    CAST(i.["freight_value"] AS DECIMAL(10, 2)) AS freight_value,
    CAST(i.["price"] AS DECIMAL(10, 2)) + CAST(i.["freight_value"] AS DECIMAL(10, 2)) AS total_value
FROM 
    [dbo].[olist_order_items_dataset] i
INNER JOIN 
    [dbo].[olist_orders_dataset] o ON i.["order_id"] = o.["order_id"]
WHERE 
    o.["order_purchase_timestamp"] IS NOT NULL;
GO
