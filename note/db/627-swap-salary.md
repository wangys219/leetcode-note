# 交换工资

## mysql实现

```
update salary
set sex=(
case
	when sex='m' then 'f'
	when sex='f' then 'm'
end
)
```

```
update salary
set sex=if(sex='m', 'f', 'm')
```
