execute as @e[type=slime,tag=TigaParts] run data modify entity @s Size set value 0
execute as @e[type=slime,tag=TigaParts] run tp @s ~ 0 ~
tag @e[type=slime,tag=TigaParts] add Death
kill @e[type=slime,tag=TigaParts]