execute as @e[type=slime,tag=BrachyParts] run data modify entity @s Size set value 0
execute as @e[type=slime,tag=BrachyParts] run tp @s ~ 0 ~
kill @e[type=slime,tag=BrachyParts]