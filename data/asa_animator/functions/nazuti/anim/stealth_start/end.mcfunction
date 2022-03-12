scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=NazutiParts] run function #asa_matrix:animate_reset
tag @s remove AnmStealth
tag @s add IsAnmStealth

function asa_animator:nazuti/manager/change_normal/_/stealth