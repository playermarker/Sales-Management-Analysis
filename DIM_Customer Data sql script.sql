-- Cleaned DIM_Customer Table--
SELECT 
  c.CustomerKey AS CustomerKey, 
  c.firstname AS [FirstName], 
  c.lastname AS [LastName], 
  c.firstname + ' ' + lastname AS [Full Name], -- Created a column that had the two names together -- 
  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, -- Changed the virables on the column for gender --
  c.datefirstpurchase AS DateFirstPurchase, 
  g.city AS [Customer City] -- Joined in Customer City From Geography Table --
FROM 
  dbo.dimcustomer AS c 
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC -- Ordered list by CustomerKey --
  
