scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate_reset
tag @s remove AnmPress

execute unless entity @s[tag=IsThunder] if score #asa_zinogre_charge AsaMatrix matches ..1 run tag @s add AnmCharge
execute unless entity @s[tag=IsThunder] if score #asa_zinogre_charge AsaMatrix matches 2.. run tag @s add AnmChargeE

execute if entity @s[tag=IsThunder] run tag @s add AnmBstepC