# 7 Damage
data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute positioned ^-3 ^ ^ as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,distance=..3] run function asa_animator:teo/anim/tail/events/damage_sub
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,distance=..3] run function asa_animator:teo/anim/tail/events/damage_sub
execute positioned ^3 ^ ^ as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,distance=..3] run function asa_animator:teo/anim/tail/events/damage_sub
particle block grass_block ~ ~ ~ 1 0 1 0 10
playsound block.grass.step master @a ~ ~ ~ 2 0.7