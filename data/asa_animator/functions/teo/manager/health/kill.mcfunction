execute as @e[type=slime,tag=TeoParts] run data modify entity @s Size set value 0
execute as @e[type=slime,tag=TeoParts] run tp @s ~ 0 ~
tag @e[type=slime,tag=TeoParts] add Death
kill @e[type=slime,tag=TeoParts]