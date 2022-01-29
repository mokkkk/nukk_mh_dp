scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate_reset
tag @s remove AnmDashStart
tag @s add AnmDash
scoreboard players set #mhdp_teo_dash_count AsaMatrix 5
function asa_animator:teo/anim/dash_start/events/_