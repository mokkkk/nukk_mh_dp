scoreboard players set @s AsaMatrix 0
function asa_animator:kushala/manager/remove_animation_tag
execute if entity @s[tag=!IsFlying] run tag @s add AnmHeadDamage
execute if entity @s[tag=IsFlying] run tag @s add AnmFlyDamage
scoreboard players operation #mhdp_kushala_sp_damage AsaMatrix = #mhdp_kushala_sp_damage_max AsaMatrix
scoreboard players set #mhdp_kushala_actcount_lv AsaMatrix 0
scoreboard players set #mhdp_kushala_lv AsaMatrix 0