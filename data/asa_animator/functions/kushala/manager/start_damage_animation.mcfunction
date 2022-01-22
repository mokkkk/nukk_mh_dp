scoreboard players set @s AsaMatrix 0
function asa_animator:kushala/manager/remove_animation_tag
execute if entity @s[tag=!IsFlying] run tag @s add AnmSpDamage
execute if entity @s[tag=IsFlying] run tag @s add AnmFlyDamage
playsound entity.item.break master @a ~ ~ ~ 2 0.5
execute if score #mhdp_kushala_lv AsaMatrix matches 1 run particle cloud ~ ~2 ~ 1 1 1 0.3 100
execute if score #mhdp_kushala_lv AsaMatrix matches 2 run particle large_smoke ~ ~2 ~ 1 1 1 0.3 100
scoreboard players operation #mhdp_kushala_sp_damage AsaMatrix = #mhdp_kushala_sp_damage_max AsaMatrix
scoreboard players set #mhdp_kushala_actcount_lv AsaMatrix 0
scoreboard players set #mhdp_kushala_lv AsaMatrix 0
weather rain