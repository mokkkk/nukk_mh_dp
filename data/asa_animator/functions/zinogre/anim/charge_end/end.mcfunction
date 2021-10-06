scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate_reset
tag @s remove AnmChargeE
scoreboard players set #asa_zinogre_charge AsaMatrix 0
scoreboard players set #asa_zinogre_charge_damage AsaMatrix 0