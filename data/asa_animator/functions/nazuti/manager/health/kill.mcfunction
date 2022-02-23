execute as @e[type=slime,tag=NazutiParts] run data modify entity @s Size set value 0
execute as @e[type=slime,tag=NazutiParts] run tp @s ~ 0 ~
tag @e[type=slime,tag=NazutiParts] add Death
kill @e[type=slime,tag=NazutiParts]