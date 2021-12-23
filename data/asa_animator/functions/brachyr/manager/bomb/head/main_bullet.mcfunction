
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=..8}] run particle flash ~ ~0.2 ~ 0.7 0.1 0.7 0 1
execute if entity @s[scores={AsaMatrix=14..}] positioned ~ ~1 ~ run function asa_animator:brachyr/manager/bomb/head/damage