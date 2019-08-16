# 超过5名学生的课

## mysql实现

```
select class
from courses
group by class
having count(distinct student) > 4
```
