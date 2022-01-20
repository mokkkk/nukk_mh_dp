scoreboard players set @s AsaMatrix 0
function asa_animator:kushala/manager/health/kill
function asa_animator:kushala/manager/remove_animation_tag
execute if entity @s[tag=!IsFlying] run tag @s add AnmDeath
execute if entity @s[tag=IsFlying] run tag @s add AnmFlyDeath