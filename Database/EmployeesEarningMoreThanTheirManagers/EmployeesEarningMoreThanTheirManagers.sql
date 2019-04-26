/**
 * 解法一
 * 有点耗时
 */
select Name as Employee
from employee e
where e.Salary > (
select Salary
from employee
where Id = e.ManagerId
);

/**
 * 解法二
 * 比解法一快了好多
 * 避免子查询
 */
select e1.name as Employee
from employee as e1, employee as e2
where e1.ManagerId = e2.Id
and e1.salary > e2.salary;

/**
 * 解法三
 */
select e1.Name as Employee
from employee e1
join employee e2
on e1.ManagerId = e2.Id
where e1.Salary > e2.Salary;
