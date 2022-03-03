scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=RukoParts] run function #asa_matrix:animate_reset
tag @s remove AnmClawCR
scoreboard players reset #mhdp_ruko_claw_count