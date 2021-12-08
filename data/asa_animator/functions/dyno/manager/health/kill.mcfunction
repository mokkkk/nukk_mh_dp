execute as @e[type=slime,tag=DynoParts] run data modify entity @s Size set value 0
execute as @e[type=slime,tag=DynoParts] run tp @s ~ 0 ~
tag @e[type=slime,tag=DynoParts] add Death
kill @e[type=slime,tag=DynoParts]