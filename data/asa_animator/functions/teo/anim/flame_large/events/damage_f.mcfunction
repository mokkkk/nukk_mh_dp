# 5 Damage
data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:2}
execute positioned ^ ^ ^ as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,distance=..2] run function asa_animator:teo/anim/flame_large/events/damage_f_sub
execute positioned ^ ^ ^4 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,distance=..3] run function asa_animator:teo/anim/flame_large/events/damage_f_sub
execute positioned ^ ^ ^7 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,distance=..3] run function asa_animator:teo/anim/flame_large/events/damage_f_sub
execute positioned ^ ^ ^10.5 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,distance=..3.5] run function asa_animator:teo/anim/flame_large/events/damage_f_sub
playsound item.firecharge.use master @a ~ ~ ~ 2 0.5
particle small_flame ^ ^ ^ 0.2 0.2 0.2 0.05 10
particle small_flame ^ ^ ^1 0.2 0.2 0.2 0.05 10
particle flame ^ ^ ^2 0.3 0.3 0.3 0.05 20
particle flame ^ ^ ^3 0.4 0.4 0.4 0.05 20
particle flame ^ ^ ^4 0.4 0.4 0.4 0.05 20
particle flame ^ ^ ^5 0.5 0.5 0.5 0.05 30
particle flame ^ ^ ^6 0.5 0.5 0.5 0.05 30
particle flame ^ ^ ^7 0.5 0.5 0.5 0.05 30
particle flame ^ ^ ^8 0.7 0.7 0.7 0.05 40
particle flame ^ ^ ^9 0.8 0.8 0.8 0.05 40
particle flame ^ ^ ^10 1.1 1.1 1.1 0.05 40