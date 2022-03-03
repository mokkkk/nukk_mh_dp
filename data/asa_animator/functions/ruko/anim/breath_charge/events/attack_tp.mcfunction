scoreboard players remove @s AsaMatrix 1
execute positioned ~ ~ ~ run particle dust 0.98 0.463 0.463 3 ~ ~ ~ 0 0 0 0.02 1 force
execute positioned ~ ~ ~ run particle dust 0.592 0.243 0.243 3 ~ ~ ~ 0.5 0.5 0.5 0.02 2 force
execute positioned ~ ~ ~ if entity @e[tag=RukoTarget,distance=0..3] run scoreboard players set @s AsaMatrix 0
execute if entity @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!RukoParts,distance=0..3] run scoreboard players set @s AsaMatrix 0
execute if entity @s[scores={AsaMatrix=1..}] if block ~ ~ ~ #asa_animator:no_collision positioned ^ ^ ^1 run function asa_animator:ruko/anim/breath_charge/events/attack_tp
execute if entity @s[scores={AsaMatrix=1..}] unless block ~ ~ ~ #asa_animator:no_collision positioned ^ ^ ^-1 run tp @s ~ ~ ~
execute if entity @s[tag=!End,scores={AsaMatrix=..0}] positioned ~ ~ ~ run tp @s ~ ~ ~
execute if entity @s[scores={AsaMatrix=..0}] run tag @s add End