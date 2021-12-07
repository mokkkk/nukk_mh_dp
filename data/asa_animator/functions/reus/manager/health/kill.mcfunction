execute as @e[type=slime,tag=ReusParts] run data modify entity @s Size set value 0
execute as @e[type=slime,tag=ReusParts] run tp @s ~ 0 ~
tag @e[type=slime,tag=ReusParts] add Death
kill @e[type=slime,tag=ReusParts]