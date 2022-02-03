scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate_reset
tag @s remove AnmBombDashStart
tag @s add AnmBombDash
execute if predicate asa_animator:random/050 run tag @s add IsRight
scoreboard players set #mhdp_teo_dash_count AsaMatrix 4