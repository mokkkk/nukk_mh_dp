scoreboard players set @s AsaMatrix 0
execute if entity @s[tag=IsFlying] run data merge entity @s {Tags:["MonsterRoot","ReusRoot","AnmEndFly"]}
execute if entity @s[tag=!AnmEndFly] run data merge entity @s {Tags:["MonsterRoot","ReusRoot","AnmDeath"]}
# 当たり判定削除
function asa_animator:reus/health/kill