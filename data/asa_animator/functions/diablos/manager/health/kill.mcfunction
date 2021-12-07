execute as @e[type=slime,tag=DiablosParts] run data modify entity @s Size set value 0
execute as @e[type=slime,tag=DiablosParts] run tp @s ~ 0 ~
execute as @e[type=slime,tag=DiablosParts] run tag @s add Death
kill @e[type=slime,tag=DiablosParts]