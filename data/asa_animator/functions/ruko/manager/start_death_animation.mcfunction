scoreboard players set @s AsaMatrix 0
function asa_animator:ruko/manager/health/kill
function asa_animator:ruko/manager/remove_animation_tag
execute if score #mhdp_ruko_lv AsaMatrix matches 1.. run scoreboard players set #mhdp_ruko_lv AsaMatrix 0
execute if entity @s[tag=!IsFlying] run tag @s add AnmDeath
execute if entity @s[tag=IsFlying] run tag @s add AnmFlyDeath