scoreboard players set @s AsaMatrix 0
scoreboard players set #mhdp_diablos_actcount AsaMatrix 4
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate_reset
function asa_animator:diablos/anim/normal/stay/events/change