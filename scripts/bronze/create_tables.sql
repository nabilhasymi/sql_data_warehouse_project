-- procedure to creating the tables
CREATE OR REPLACE PROCEDURE bronze.create_bronze()
LANGUAGE plpgsql
AS $$
BEGIN
	CREATE TABLE IF NOT EXISTS bronze.crm_cust_info
	(
	    cst_id integer,
	    cst_key text,
	    cst_firstname text,
	    cst_lastname text,
	    cst_marital_status text,
	    cst_gndr text,
	    cst_create_date date
	);
	
	CREATE TABLE IF NOT EXISTS bronze.crm_prd_info
	(
	    prd_id integer,
	    prd_key text,
	    prd_nm text,
	    prd_cost integer,
	    prd_line text,
	    prd_start_dt date,
	    prd_end_dt date
	);
	
	
	CREATE TABLE IF NOT EXISTS bronze.crm_sales_details
	(
	    sls_ord_num text,
	    sls_prd_key text,
	    sls_cust_id integer,
	    sls_order_dt text,
	    sls_ship_dt text,
	    sls_due_dt text,
	    sls_sales integer,
	    sls_quantity integer,
	    sls_price integer
	);
	
	CREATE TABLE IF NOT EXISTS bronze.erp_cust_az12
	(
	    cid text,
	    bdate date,
	    gen text
	);
	
	CREATE TABLE IF NOT EXISTS bronze.erp_loc_a101
	(
	    cid text,
	    cntry text
	);
	
	CREATE TABLE IF NOT EXISTS bronze.erp_px_cat_g1v2
	(
	    id text,
	    cat text,
	    subcat text,
	    maintenance text
	);
END;
$$;

CALL create_bronze();