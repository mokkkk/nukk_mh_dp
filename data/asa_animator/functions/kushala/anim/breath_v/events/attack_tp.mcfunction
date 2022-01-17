scoreboard players remove @s AsaMatrix 1
execute positioned ~ ~ ~ run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.02 2 force
execute positioned ~ ~ ~ if entity @e[tag=KushalaTarget,distance=0..2] run scoreboard players set @s AsaMatrix 0
execute if entity @s[scores={AsaMatrix=1..}] if block ~ ~ ~ #asa_animator:no_collision positioned ^ ^ ^1 run function asa_animator:kushala/anim/breath_v/events/attack_tp
execute if entity @s[scores={AsaMatrix=1..}] unless block ~ ~ ~ #asa_animator:no_collision positioned ^ ^ ^-1 run tp @s ~ ~ ~
execute if entity @s[tag=!End,scores={AsaMatrix=..0}] positioned ~ ~ ~ run tp @s ~ ~ ~
execute if entity @s[scores={AsaMatrix=..0}] run tag @s add End