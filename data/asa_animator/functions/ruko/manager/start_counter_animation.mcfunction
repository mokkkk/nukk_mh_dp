scoreboard players set @s AsaMatrix 0
execute if entity @s[tag=!IsFlying] run function asa_animator:nazuti/manager/remove_animation_tag
execute if entity @s[tag=!IsFlying] run tag @s add AnmCounterMove
scoreboard players operation #mhdp_nazuti_counter_damage AsaMatrix = #mhdp_nazuti_counter_damage_max AsaMatrix