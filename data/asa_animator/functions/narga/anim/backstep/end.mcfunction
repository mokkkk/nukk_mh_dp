scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=NargaParts] run function #asa_matrix:animate_reset
tag @s remove AnmBStep

execute if predicate asa_animator:random/050 run tag @s add AnmMoveStart
execute unless entity @s[tag=AnmMoveStart] run tag @s add AnmTailShot