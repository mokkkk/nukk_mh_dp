
particle explosion ~ ~5 ~ 0.5 3 0.5 0 6 force
particle sweep_attack ~ ~5 ~ 1 3.5 1 0 5

execute if entity @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!KushalaParts,distance=0..3] positioned ~ ~1.4 ~ run function asa_animator:kushala/anim/bjb_land/events/damage

scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=100..}] run kill @s
playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.5

tp @s ^ ^ ^0.3