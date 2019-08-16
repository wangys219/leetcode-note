# 超过经理收入的员工

## mysql实现

```
select Name as Employee
from employee e
where e.Salary > (
select Salary
from employee
where Id = e.ManagerId
)
```

```
select e1.name as Employee
from employee as e1, employee as e2
where e1.ManagerId = e2.Id
and e1.salary > e2.salary
```

```
select e1.Name as Employee
from employee e1
join employee e2
on e1.ManagerId = e2.Id
where e1.Salary > e2.Salary
```
