scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=RukoParts] run function #asa_matrix:animate_reset
execute unless entity @s[tag=IsAnger] run scoreboard players set #mhdp_ruko_claw_count AsaMatrix 1
execute if entity @s[tag=IsAnger] run scoreboard players set #mhdp_ruko_claw_count AsaMatrix 3
tag @s remove AnmClawR
tag @s add AnmClawCL