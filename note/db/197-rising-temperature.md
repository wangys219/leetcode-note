# 上升的温度

## mysql实现

```
select a.Id
from Weather a, Weather b
where datediff(a.RecordDate, b.RecordDate) = '1'
and a.Temperature > b.Temperature
```
