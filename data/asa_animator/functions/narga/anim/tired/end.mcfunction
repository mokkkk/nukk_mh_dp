scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=NargaParts] run function #asa_matrix:animate_reset
tag @s remove AnmTired
tag @s remove AngerTypeA
tag @s remove AngerTypeB
tag @s remove AngerTypeC
scoreboard players set #mhdp_narga_anger_damage AsaMatrix 0