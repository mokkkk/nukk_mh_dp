scoreboard players remove @s AsaMatrix 1
execute positioned ~ ~ ~ run particle flame ~ ~ ~ 1 1 1 0.1 8 force
execute positioned ~ ~ ~ run particle flame ~ ~ ~ 0.5 0.5 0.5 0.1 8 force
execute positioned ~ ~ ~ if entity @e[tag=ReusTarget,distance=0..2] run scoreboard players set @s AsaMatrix 0
execute if entity @s[scores={AsaMatrix=1..}] if block ~ ~ ~ #asa_animator:no_collision positioned ^ ^ ^1 run function asa_animator:reus/anim/hard_flying_flare/events/attack_tp
execute at @s if block ^ ^ ^1.5 #asa_animator:no_collision run tp @s ^ ^ ^1