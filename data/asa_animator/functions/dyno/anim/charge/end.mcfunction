scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=DynoParts] run function #asa_matrix:animate_reset
tag @s remove AnmCharge
scoreboard players set #mhdp_dyno_actcount_head AsaMatrix 0