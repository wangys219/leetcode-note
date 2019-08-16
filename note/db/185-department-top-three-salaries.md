# 部门工资前三高的所有员工

## mysql实现

```
select d.`Name` Department,e.`Name` Employee,e.Salary
from employee e, department d
where e.DepartmentId = d.Id
and (
select count(distinct Salary)
from employee
where Salary > e.Salary
and DepartmentId = e.DepartmentId
) < 3
order by e.DepartmentId, Salary desc
```
