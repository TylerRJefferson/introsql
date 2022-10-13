-- SELECT * FROM CUSTOMERS

UPDATE public.customers
	SET 
--	customer_id=710, first_name=?, last_name=?, email=?, phone=?, created_at=?, 
	updated_at=NOW()
	WHERE customer_id=710;
	

--	DELETE from CUSTOMERS WHERE customer_id=?