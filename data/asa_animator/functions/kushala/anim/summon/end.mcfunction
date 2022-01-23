scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate_reset
tag @s remove AnmSummon
tag @s add AnmSummonEndFly
scoreboard players set #mhdp_kushala_actcount AsaMatrix 6