
particle explosion ~ ~7 ~ 2 8 2 0 50 force
particle sweep_attack ~ ~7 ~ 1.5 8.5 1.5 0 30

scoreboard players remove @s AsaMatrix 1
execute unless entity @s[scores={AsaMatrix=1..}] if entity @e[type=!armor_stand,type=!marker,type=!area_effect_cloud,tag=!KushalaParts,distance=0..7] positioned ~ ~1.4 ~ run function asa_animator:kushala/anim/sp_attack/events/tornado/damage

playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.5