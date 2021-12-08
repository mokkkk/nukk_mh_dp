# 位置調整
execute if entity @s[tag=Head] rotated as @s at @e[type=armor_stand,tag=NargaParts,tag=HeadU,limit=1] run tp @s ^ ^0.7 ^0.5 ~ ~
execute if entity @s[tag=Neck0] rotated as @s at @e[type=armor_stand,tag=NargaParts,tag=Neck0,limit=1] run tp @s ^ ^0.7 ^0.1 ~ ~
execute if entity @s[tag=Neck1] rotated as @s at @e[type=armor_stand,tag=NargaParts,tag=Neck1,limit=1] run tp @s ^ ^0.7 ^-0.2 ~ ~
execute if entity @s[tag=Body0] rotated as @s at @e[type=armor_stand,tag=NargaParts,tag=Body0,limit=1] run tp @s ^ ^0.4 ^0.2 ~ ~
execute if entity @s[tag=Body1] rotated as @s at @e[type=armor_stand,tag=NargaParts,tag=Body1,limit=1] run tp @s ^ ^0.4 ^-0.4 ~ ~
execute if entity @s[tag=LegL1] rotated as @s at @e[type=armor_stand,tag=NargaParts,tag=LegL1,limit=1] run tp @s ^ ^0.5 ^ ~ ~
execute if entity @s[tag=LegR1] rotated as @s at @e[type=armor_stand,tag=NargaParts,tag=LegR1,limit=1] run tp @s ^ ^0.5 ^ ~ ~
execute if entity @s[tag=Tail0] rotated as @s at @e[type=armor_stand,tag=NargaParts,tag=Tail0,limit=1] run tp @s ^ ^0.8 ^-1 ~ ~
execute if entity @s[tag=Tail1] rotated as @s at @e[type=armor_stand,tag=NargaParts,tag=Tail1,limit=1] run tp @s ^ ^0.8 ^0.4 ~ ~
execute if entity @s[tag=Tail2] rotated as @s at @e[type=armor_stand,tag=NargaParts,tag=Tail1,limit=1] run tp @s ^ ^0.8 ^-1 ~ ~
execute if entity @s[tag=Tail3] rotated as @s at @e[type=armor_stand,tag=NargaParts,tag=Tail2,limit=1] run tp @s ^ ^0.8 ^0.9 ~ ~
execute if entity @s[tag=Tail4] rotated as @s at @e[type=armor_stand,tag=NargaParts,tag=Tail2,limit=1] run tp @s ^ ^0.8 ^-0.5 ~ ~
execute if entity @s[tag=Tail5] rotated as @s at @e[type=armor_stand,tag=NargaParts,tag=Tail2,limit=1] run tp @s ^ ^0.8 ^-1.9 ~ ~

execute if entity @s[tag=ArmL0] rotated as @s at @e[type=armor_stand,tag=NargaParts,tag=ArmL0,limit=1] run tp @s ^0.2 ^0.4 ^ ~ ~
execute if entity @s[tag=ArmR0] rotated as @s at @e[type=armor_stand,tag=NargaParts,tag=ArmR0,limit=1] run tp @s ^-0.2 ^0.4 ^ ~ ~
execute if entity @s[tag=ArmL1] rotated as @s at @e[type=armor_stand,tag=NargaParts,tag=ArmL1,limit=1] run tp @s ^0.2 ^0.2 ^0.2 ~ ~
execute if entity @s[tag=ArmR1] rotated as @s at @e[type=armor_stand,tag=NargaParts,tag=ArmR1,limit=1] run tp @s ^-0.2 ^0.2 ^0.2 ~ ~
execute if entity @s[tag=ArmL2] rotated as @s at @e[type=armor_stand,tag=NargaParts,tag=ArmL2,limit=1] run tp @s ^0.2 ^0.7 ^ ~ ~
execute if entity @s[tag=ArmR2] rotated as @s at @e[type=armor_stand,tag=NargaParts,tag=ArmR2,limit=1] run tp @s ^-0.2 ^0.7 ^ ~ ~

# HP確認
execute if entity @s[nbt=!{Health:1000f},tag=!Death] run function asa_animator:narga/manager/health/check