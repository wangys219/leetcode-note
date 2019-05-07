/*
解法一
*/
update salary
set sex=(
case
	when sex='m' then 'f'
	when sex='f' then 'm'
end
);

/*
解法二
*/
update salary
set sex=if(sex='m', 'f', 'm');
