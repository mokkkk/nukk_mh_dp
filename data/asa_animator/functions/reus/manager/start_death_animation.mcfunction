scoreboard players set @s AsaMatrix 0
function asa_animator:reus/manager/remove_animation_tag
execute if entity @s[tag=IsFlying] run tag @s add AnmFlyDeath
execute unless entity @s[tag=IsFlying] run tag @s add AnmDeath
tag @s add DestroyHead
tag @s add DestroyBody
tag @s add DestroyTail
# 当たり判定削除
function asa_animator:reus/manager/health/kill