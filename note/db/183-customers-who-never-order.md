# 从不订购的客户

## mysql实现

```
select c.`Name` as Customers
from Customers c
left join `Orders` o
on c.Id = o.CustomerId
where o.CustomerId is null
```

```
select `Name` as Customers
from customers
where Id not in (
select CustomerId
from Orders)
```
