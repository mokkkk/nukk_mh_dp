execute as @e[type=slime,tag=RukoParts] run data modify entity @s Size set value 0
execute as @e[type=slime,tag=RukoParts] run tp @s ~ 0 ~
tag @e[type=slime,tag=RukoParts] add Death
kill @e[type=slime,tag=RukoParts]