scoreboard players set #asa_zinogre_kindex AsaMatrix 0
scoreboard players set #asa_zinogre_tick_current AsaMatrix 0
scoreboard players set #asa_zinogre_tick_end AsaMatrix 0
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate_reset
tag @s remove AnmTailWhip