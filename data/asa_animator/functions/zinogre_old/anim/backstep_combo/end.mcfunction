scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate_reset
tag @s remove AnmBstepC
function asa_animator:zinogre/anim/backstep_combo/events/change_thunder