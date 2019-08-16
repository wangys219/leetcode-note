# 删除重复的电子邮箱

## mysql实现

```
delete p1 from Person p1, Person p2
where p1.Email = p2.Email
and p1.Id > p2.Id;
```
