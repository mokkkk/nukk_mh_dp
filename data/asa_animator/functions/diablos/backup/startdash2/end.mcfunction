scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate_reset
tag @s remove AnmStartD2
tag @s add AnmDash
tag @s add StartDash2
scoreboard players set #diablos_dash_count AsaMatrix 0