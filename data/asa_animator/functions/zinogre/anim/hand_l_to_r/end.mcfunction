scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate_reset
tag @s remove AnmHandL2R

# execute if entity @s[tag=IsThunder,tag=!IsHand3] run tag @s add AnmHandR2L
execute if entity @s[tag=IsThunder,tag=!IsHand3] run tag @s add AnmHandR2CHandL
execute if entity @s[tag=IsThunder,tag=!IsHand3] run tag @s add IsHand3
execute unless entity @s[tag=IsHand3] run tag @s add AnmHandRE