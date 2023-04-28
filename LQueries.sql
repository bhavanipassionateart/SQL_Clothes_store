Select Products.Product_name from Products;

select Products.Product_name,Brand.Brand_name 
from Products inner join Brand 
on Products.Product_id= Brand.Brand_id;

select Products.Product_name,Product_description.Product_color,Product_description.Product_size,Product_description.Brand_id from Products 
inner join Product_description 
on Products.Product_id=Product_description.Product_id;

