scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=RukoParts] run function #asa_matrix:animate_reset
tag @s remove AnmClawCR
tag @s add AnmClawCL
# tag @s add AnmClawDR
scoreboard players remove #mhdp_ruko_claw_count AsaMatrix 1