scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate_reset
tag @s remove AnmAnger
tag @s remove StartAnger
tag @s add IsAnger
tag @s add Angered
function asa_animator:reus/manager/change