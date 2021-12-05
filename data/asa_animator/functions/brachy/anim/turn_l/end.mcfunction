scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=BrachyParts] run function #asa_matrix:animate_reset
tag @s remove AnmTurnL
execute if predicate asa_animator:brachy/combo run tag @s add ChangeAnm