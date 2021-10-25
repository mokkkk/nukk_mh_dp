scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ReiaParts] run function #asa_matrix:animate_reset
tag @s remove AnmFlyStay
execute if predicate asa_animator:random/050 run tag @s add AnmFlyCharge
execute unless entity @s[tag=AnmFlyCharge] run tag @s add AnmFlyTackle