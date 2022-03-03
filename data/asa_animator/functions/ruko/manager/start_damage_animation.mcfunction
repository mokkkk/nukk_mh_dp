scoreboard players set @s AsaMatrix 0
function asa_animator:ruko/manager/remove_animation_tag
execute if entity @s[tag=!IsFlying] run tag @s add AnmSpDamage
execute if entity @s[tag=IsFlying] run tag @s add AnmFlyDamage
playsound entity.item.break master @a ~ ~ ~ 2 0.5
scoreboard players operation #mhdp_ruko_sp_damage AsaMatrix = #mhdp_ruko_sp_damage_max AsaMatrix
function asa_animator:ruko/manager/lv/reset