-- As we state our PK in cars is VIN, this sql has no sense because we don´t have a repeated VIN but we are going to do it as if we have it anyway.

SET SQL_SAFE_UPDATES = 0;

DELETE FROM cars 
WHERE id=4