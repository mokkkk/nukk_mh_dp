
particle dust 0.902 0.447 0.467 2 ^ ^ ^-0.3 0.1 0.1 0.1 0 3
particle dust 0.902 0.447 0.467 2 ^ ^ ^ 0.1 0.1 0.1 0 3
particle dust 0.902 0.447 0.467 2 ^ ^ ^0.3 0.1 0.1 0.1 0 3

# execute if entity @e[tag=NazutiTarget,distance=0..1] run function asa_animator:nazuti/anim/tongue_l/events/damage

scoreboard players remove @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=..0}] run particle spit ~ ~ ~ 0 0 0 0.2 1
execute if entity @s[scores={AsaMatrix=1..}] rotated ~3 ~ positioned ^ ^ ^1 run function asa_animator:nazuti/anim/tongue_large_l/events/tongue_l