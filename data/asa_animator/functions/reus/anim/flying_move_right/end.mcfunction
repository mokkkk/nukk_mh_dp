scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate_reset
tag @s remove AnmFlyMoveR
function asa_animator:reus/anim/flying_move_left/events/change