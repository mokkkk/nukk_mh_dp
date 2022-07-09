scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate_reset
tag @s remove AnmFstep
execute unless entity @s[tag=IsThunder] run tag @s add AnmHand2

execute if entity @s[tag=IsThunder] run function asa_animator:zinogre/anim/forwardstep/effects/change_thunder