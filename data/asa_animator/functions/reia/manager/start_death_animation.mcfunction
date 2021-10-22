scoreboard players set @s AsaMatrix 0
execute if entity @s[tag=IsFlying] run data merge entity @s {Tags:["MonsterRoot","ReiaRoot","AnmFlyDeath"]}
execute unless entity @s[tag=AnmFlyDeath] run data merge entity @s {Tags:["MonsterRoot","ReiaRoot","AnmDeath"]}
# 当たり判定削除
function asa_animator:reia/manager/health/kill