execute as @e[type=slime,tag=ZinogreParts] run data modify entity @s Size set value 0
execute as @e[type=slime,tag=ZinogreParts] run tp @s ~ 0 ~
execute as @e[type=slime,tag=ZinogreParts] run tag @s add Death
kill @e[type=slime,tag=ZinogreParts]
