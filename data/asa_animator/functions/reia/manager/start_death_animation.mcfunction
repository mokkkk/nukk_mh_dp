scoreboard players set @s AsaMatrix 0
execute if entity @s[tag=AnmSault] run data merge entity @s {Tags:["MonsterRoot","ReiaRoot","AnmFlyDeath"]}
execute if entity @s[tag=AnmFlyStay] run data merge entity @s {Tags:["MonsterRoot","ReiaRoot","AnmFlyDeath"]}
execute if entity @s[tag=AnmFlyCharge] run data merge entity @s {Tags:["MonsterRoot","ReiaRoot","AnmFlyDeath"]}
execute if entity @s[tag=AnmFlyTackle] run data merge entity @s {Tags:["MonsterRoot","ReiaRoot","AnmFlyDeath"]}
execute if entity @s[tag=AnmBjbLand] run data merge entity @s {Tags:["MonsterRoot","ReiaRoot","AnmFlyDeath"]}
execute unless entity @s[tag=AnmFlyDeath] run data merge entity @s {Tags:["MonsterRoot","ReiaRoot","AnmDeath"]}

# 当たり判定削除
function asa_animator:reia/manager/health/kill