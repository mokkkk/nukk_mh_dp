# 位置調整
execute if entity @s[tag=Head] rotated as @s at @e[type=armor_stand,tag=ReusParts,tag=HeadU,limit=1] run tp @s ^ ^0.7 ^0.5 ~ ~
execute if entity @s[tag=Neck0] rotated as @s at @e[type=armor_stand,tag=ReusParts,tag=Neck0,limit=1] run tp @s ^ ^0.7 ^0.1 ~ ~
execute if entity @s[tag=Neck1] rotated as @s at @e[type=armor_stand,tag=ReusParts,tag=Neck1,limit=1] run tp @s ^ ^0.7 ^-0.2 ~ ~
execute if entity @s[tag=Body0] rotated as @s at @e[type=armor_stand,tag=ReusParts,tag=Body0,limit=1] run tp @s ^ ^0.3 ^0.2 ~ ~
execute if entity @s[tag=Body1] rotated as @s at @e[type=armor_stand,tag=ReusParts,tag=Body1,limit=1] run tp @s ^ ^0.3 ^ ~ ~
execute if entity @s[tag=LegL0] rotated as @s at @e[type=armor_stand,tag=ReusParts,tag=LegL0,limit=1] run tp @s ^ ^0.7 ^ ~ ~
execute if entity @s[tag=LegR0] rotated as @s at @e[type=armor_stand,tag=ReusParts,tag=LegR0,limit=1] run tp @s ^ ^0.7 ^ ~ ~
execute if entity @s[tag=LegL1] rotated as @s at @e[type=armor_stand,tag=ReusParts,tag=LegL1,limit=1] run tp @s ^ ^0.2 ^ ~ ~
execute if entity @s[tag=LegR1] rotated as @s at @e[type=armor_stand,tag=ReusParts,tag=LegR1,limit=1] run tp @s ^ ^0.2 ^ ~ ~
execute if entity @s[tag=Tail0] rotated as @s at @e[type=armor_stand,tag=ReusParts,tag=Tail0,limit=1] run tp @s ^ ^0.7 ^-0.2 ~ ~
execute if entity @s[tag=Tail1] rotated as @s at @e[type=armor_stand,tag=ReusParts,tag=Tail1,limit=1] run tp @s ^ ^0.7 ^0.4 ~ ~
execute if entity @s[tag=Tail2] rotated as @s at @e[type=armor_stand,tag=ReusParts,tag=Tail1,limit=1] run tp @s ^ ^0.7 ^-0.7 ~ ~
execute if entity @s[tag=Tail3] rotated as @s at @e[type=armor_stand,tag=ReusParts,tag=Tail2,limit=1] run tp @s ^ ^0.7 ^-0.2 ~ ~

# HP確認
execute if entity @s[nbt=!{Health:1000f},tag=!Death] run function asa_animator:reus/manager/health/check