scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=RukoParts] run function #asa_matrix:animate_reset
tag @s remove AnmClawCL
scoreboard players remove #mhdp_ruko_claw_count AsaMatrix 1

execute if score #mhdp_ruko_lv AsaMatrix matches 1.. if score #mhdp_ruko_claw_count AsaMatrix matches 0 if predicate asa_animator:random/050 run tag @s add AnmClawDL
execute unless entity @s[tag=AnmClawDL] run tag @s add AnmClawCR