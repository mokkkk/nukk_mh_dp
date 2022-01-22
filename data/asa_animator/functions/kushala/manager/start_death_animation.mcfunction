scoreboard players set @s AsaMatrix 0
function asa_animator:kushala/manager/health/kill
function asa_animator:kushala/manager/remove_animation_tag
execute if score #mhdp_kushala_lv AsaMatrix matches 1.. run playsound entity.item.break master @a ~ ~ ~ 2 0.5
execute if score #mhdp_kushala_lv AsaMatrix matches 1 run particle cloud ~ ~2 ~ 1 1 1 0.3 100
execute if score #mhdp_kushala_lv AsaMatrix matches 2 run particle large_smoke ~ ~2 ~ 1 1 1 0.3 100
execute if entity @s[tag=!IsFlying] run tag @s add AnmDeath
execute if entity @s[tag=IsFlying] run tag @s add AnmFlyDeath