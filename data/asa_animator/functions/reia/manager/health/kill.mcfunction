execute as @e[type=slime,tag=ReiaParts] run data modify entity @s Size set value 0
execute as @e[type=slime,tag=ReiaParts] run tp @s ~ 0 ~
tag @e[type=slime,tag=ReiaParts] add Death
kill @e[type=slime,tag=ReiaParts]