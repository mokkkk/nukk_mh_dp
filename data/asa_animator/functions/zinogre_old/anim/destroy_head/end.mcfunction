scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ZinogreParts] if score @s AsamID = #asa_id_temp AsamID run function #asa_matrix:animate_reset
tag @s remove AnmDHead