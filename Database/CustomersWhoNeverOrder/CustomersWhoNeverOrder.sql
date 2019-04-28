/**
 * 解法一
 */
select c.`Name` as Customers
from Customers c
left join `Orders` o
on c.Id = o.CustomerId
where o.CustomerId is null;

/**
 * 解法二
 */
select `Name` as Customers
from customers
where Id not in (
select CustomerId
from Orders
);
