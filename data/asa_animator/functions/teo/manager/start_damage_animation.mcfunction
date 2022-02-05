scoreboard players set @s AsaMatrix 0
function asa_animator:teo/manager/remove_animation_tag
execute if entity @s[tag=!IsFlying] run tag @s add AnmSpDamage
execute if entity @s[tag=IsFlying] run tag @s add AnmFlyDamage
playsound entity.item.break master @a ~ ~ ~ 2 0.5
execute if score #mhdp_teo_lv AsaMatrix matches 1 run particle small_flame ~ ~2 ~ 1 1 1 0.3 100
execute if score #mhdp_teo_lv AsaMatrix matches 2 run particle flame ~ ~2 ~ 1 1 1 0.3 100
scoreboard players operation #mhdp_teo_sp_damage AsaMatrix = #mhdp_teo_sp_damage_max AsaMatrix
function asa_animator:teo/manager/lv/reset
scoreboard players set #mhdp_teo_lv AsaMatrix 0