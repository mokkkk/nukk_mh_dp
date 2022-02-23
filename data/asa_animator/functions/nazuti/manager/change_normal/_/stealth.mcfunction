
execute if predicate asa_animator:random/050 run tag @s add AnmStealthMoveB
execute if entity @s[tag=!AnmStealthMoveB] if predicate asa_animator:random/050 run tag @s add AnmStealthMoveL
execute if entity @s[tag=!AnmStealthMoveB,tag=!AnmStealthMoveL] run tag @s add AnmStealthMoveR