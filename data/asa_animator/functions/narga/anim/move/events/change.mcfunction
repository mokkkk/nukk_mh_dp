tag @s remove AnmMove
tag @s remove MoveLeft
execute if predicate asa_animator:random/050 run tag @s add AnmBite2
execute unless entity @s[tag=AnmBite2] run tag @s add AnmTackle