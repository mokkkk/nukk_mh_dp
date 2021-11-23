# 4 Damage
data merge storage score_damage: {Damage:8.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute if entity @s[tag=IsHeatTail] run data modify storage score_damage: Damage set value 10.0f
execute if entity @s[tag=IsHeatTail] run data modify storage mhdp: Epf set value 2
execute positioned ^ ^ ^-2 as @e[type=!armor_stand,type=!marker,tag=!DynoParts,distance=..4] run function asa_animator:dyno/anim/slash_swing_l/events/damage_sub
execute positioned ^ ^ ^2 as @e[type=!armor_stand,type=!marker,tag=!DynoParts,distance=..4] run function asa_animator:dyno/anim/slash_swing_l/events/damage_sub
execute positioned ^ ^ ^-2 run particle block grass_block ~ ~ ~ 1 0.1 1 0 10
execute positioned ^ ^ ^2 run particle block grass_block ~ ~ ~ 1 0.1 1 0 10
execute positioned ^ ^ ^-2 run particle explosion ~ ~ ~ 1 0.1 1 0 10
execute positioned ^ ^ ^2 run particle explosion ~ ~ ~ 1 0.1 1 0 10
