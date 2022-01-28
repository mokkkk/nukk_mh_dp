scoreboard players set @s AsaMatrix 0
execute if entity @s[tag=AnmSault] run tag @s add IsFlying
execute if entity @s[tag=AnmFlyStay] run tag @s add IsFlying
execute if entity @s[tag=AnmFlyCharge] run tag @s add IsFlying
execute if entity @s[tag=AnmFlyTackle] run tag @s add IsFlying
execute if entity @s[tag=AnmBjbLand] run tag @s add IsFlying
function asa_animator:reia/manager/remove_animation_tag
execute if entity @s[tag=IsFlying] run tag @s add AnmFlyDeath
execute unless entity @s[tag=IsFlying] run tag @s add AnmDeath
tag @s remove IsFlying

# 当たり判定削除
function asa_animator:reia/manager/health/kill