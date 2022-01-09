# 位置調整
execute if entity @s[tag=Head] rotated as @s at @e[type=armor_stand,tag=DiablosParts,tag=HeadU,limit=1] run tp @s ^ ^0.7 ^0.5 ~ ~
execute if entity @s[tag=Neck0] rotated as @s at @e[type=armor_stand,tag=DiablosParts,tag=Neck0,limit=1] run tp @s ^ ^0.8 ^0.1 ~ ~
execute if entity @s[tag=Neck1] rotated as @s at @e[type=armor_stand,tag=DiablosParts,tag=Neck1,limit=1] run tp @s ^ ^0.8 ^-0.2 ~ ~
execute if entity @s[tag=Body0] rotated as @s at @e[type=armor_stand,tag=DiablosParts,tag=Body0,limit=1] run tp @s ^ ^0.5 ^0.2 ~ ~
execute if entity @s[tag=Body1] rotated as @s at @e[type=armor_stand,tag=DiablosParts,tag=Body1,limit=1] run tp @s ^ ^0.5 ^-0.2 ~ ~
execute if entity @s[tag=LegL0] rotated as @s at @e[type=armor_stand,tag=DiablosParts,tag=LegL0,limit=1] run tp @s ^ ^0.7 ^ ~ ~
execute if entity @s[tag=LegR0] rotated as @s at @e[type=armor_stand,tag=DiablosParts,tag=LegR0,limit=1] run tp @s ^ ^0.7 ^ ~ ~
execute if entity @s[tag=LegL1] rotated as @s at @e[type=armor_stand,tag=DiablosParts,tag=LegL1,limit=1] run tp @s ^ ^-0.2 ^ ~ ~
execute if entity @s[tag=LegR1] rotated as @s at @e[type=armor_stand,tag=DiablosParts,tag=LegR1,limit=1] run tp @s ^ ^-0.2 ^ ~ ~
execute if entity @s[tag=Tail0] rotated as @s at @e[type=armor_stand,tag=DiablosParts,tag=Tail0,limit=1] run tp @s ^ ^0.7 ^-0.2 ~ ~
execute if entity @s[tag=Tail1] rotated as @s at @e[type=armor_stand,tag=DiablosParts,tag=Tail1,limit=1] run tp @s ^ ^0.7 ^0.7 ~ ~
execute if entity @s[tag=Tail2] rotated as @s at @e[type=armor_stand,tag=DiablosParts,tag=Tail1,limit=1] run tp @s ^ ^0.7 ^-0.7 ~ ~
execute if entity @s[tag=Tail3] rotated as @s at @e[type=armor_stand,tag=DiablosParts,tag=Tail2,limit=1] run tp @s ^ ^0.7 ^-0.2 ~ ~

# HP確認
execute if entity @s[tag=!Death,nbt=!{Health: 1000f}] run function asa_animator:diablos/manager/health/check