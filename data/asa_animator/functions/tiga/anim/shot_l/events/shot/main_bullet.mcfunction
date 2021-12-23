
particle block sandstone ~ ~0.2 ~ 0.3 0.3 0.3 0 3
scoreboard players add @s AsaMatrix 1

execute if entity @s[scores={AsaMatrix=..15}] run tp @s ^ ^0.3 ^0.8
execute if entity @s[scores={AsaMatrix=16..}] run tp @s ^ ^-0.3 ^0.8
execute if entity @s[scores={AsaMatrix=100..}] run function asa_animator:tiga/anim/shot_l/events/shot/damage
execute if entity @e[distance=0..3,tag=TigaTarget] run function asa_animator:tiga/anim/shot_l/events/shot/damage
execute unless block ~ ~-1 ~ #asa_animator:no_collision run function asa_animator:tiga/anim/shot_l/events/shot/damage