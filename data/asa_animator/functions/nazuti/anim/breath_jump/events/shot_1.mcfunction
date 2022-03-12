
scoreboard players add @s AsaMatrix 1

execute as @e[type=marker,tag=NazutiBreathJB] at @s run function asa_animator:nazuti/anim/breath_jump/events/shot_1_jb

execute if entity @e[tag=MhdpDHit] positioned ~ ~-1 ~ as @e[tag=MhdpDHit] run function asa_animator:nazuti/anim/breath_jump/events/damage

execute if entity @s[scores={AsaMatrix=15..}] run function asa_animator:nazuti/anim/breath_jump/events/shot_2