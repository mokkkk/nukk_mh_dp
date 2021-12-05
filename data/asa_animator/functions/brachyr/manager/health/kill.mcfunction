execute as @e[type=slime,tag=BrachyRParts] run data modify entity @s Size set value 0
execute as @e[type=slime,tag=BrachyRParts] run tp @s ~ 0 ~
execute as @e[type=slime,tag=BrachyRParts] run tag @s add Death
kill @e[type=slime,tag=BrachyRParts]
