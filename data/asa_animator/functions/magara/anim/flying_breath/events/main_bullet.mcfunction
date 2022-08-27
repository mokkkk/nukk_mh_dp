
particle squid_ink ~ ~0.6 ~ 0.1 0.1 0.1 0 1 force
particle dust 0.325 0.239 0.4 5 ~ ~0.6 ~ 0.3 0.3 0.3 0 5 force
execute if entity @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!MagaraParts,distance=0..3] run function asa_animator:magara/anim/flying_breath/events/damage

scoreboard players add @s AsaMatrix 1
execute unless block ^ ^ ^1.2 #asa_animator:no_collision run scoreboard players set @s AsaMatrix 30
execute if entity @s[scores={AsaMatrix=30..}] run function asa_animator:magara/anim/flying_breath/events/damage

tp @s ^ ^ ^1.2