select Score, (
select count(distinct Score)
from scores
where Score >= s.score
) as `Rank`
from scores s
order by Score desc;
