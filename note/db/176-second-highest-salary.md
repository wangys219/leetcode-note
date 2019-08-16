# 第二高的薪水

## mysql实现

```
select ifnull((
select distinct Salary
from Employee
order by Salary DESC
limit 1,1), null) as SecondHighestSalary
```
