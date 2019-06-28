select ACTOR_ID, DIRECTOR_ID
from (
select count(`timestamp`) count, ACTOR_ID, DIRECTOR_ID
from ActorDirector
group by actor_id,director_id
) tmp
where count>=3