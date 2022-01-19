execute as @e[type=slime,tag=KushalaParts] run data modify entity @s Size set value 0
execute as @e[type=slime,tag=KushalaParts] run tp @s ~ 0 ~
tag @e[type=slime,tag=KushalaParts] add Death
kill @e[type=slime,tag=KushalaParts]