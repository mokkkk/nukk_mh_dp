scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=RukoParts] run function #asa_matrix:animate_reset
tag @s remove AnmSp1
tag @s add AnmSp2
function asa_animator:ruko/manager/lv/reset