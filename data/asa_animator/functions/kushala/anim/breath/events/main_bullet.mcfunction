
particle explosion ~ ~1.4 ~ 0.3 0.3 0.3 0 1 force
execute unless entity @s[tag=Lv2] run particle cloud ~ ~1.4 ~ 0.3 0.3 0.3 0.1 5
execute if entity @s[tag=Lv2] run particle large_smoke ~ ~1.4 ~ 0.3 0.3 0.3 0.2 8

execute unless entity @s[tag=Lv2] if entity @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!KushalaParts,distance=0..3] run function asa_animator:kushala/anim/breath/events/damage
execute if entity @s[tag=Lv2] if entity @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!KushalaParts,distance=0..3.5] run function asa_animator:kushala/anim/breath/events/damage_

scoreboard players add @s AsaMatrix 1
execute unless block ^ ^ ^1 #asa_animator:no_collision run scoreboard players set @s AsaMatrix 30
execute if entity @s[scores={AsaMatrix=30..}] run function asa_animator:kushala/anim/breath/events/damage

tp @s ^ ^ ^1