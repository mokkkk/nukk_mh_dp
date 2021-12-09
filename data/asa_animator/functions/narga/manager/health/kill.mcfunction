execute as @e[type=slime,tag=NargaParts] run data modify entity @s Size set value 0
execute as @e[type=slime,tag=NargaParts] run tp @s ~ 0 ~
tag @e[type=slime,tag=NargaParts] add Death
kill @e[type=slime,tag=NargaParts]