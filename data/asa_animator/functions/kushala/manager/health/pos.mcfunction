# 位置調整
execute if entity @s[tag=Head] rotated as @s at @e[type=armor_stand,tag=KushalaParts,tag=HeadU,limit=1] run tp @s ^ ^0.7 ^0.5 ~ ~
execute if entity @s[tag=Neck0] rotated as @s at @e[type=armor_stand,tag=KushalaParts,tag=Neck0,limit=1] run tp @s ^ ^0.7 ^0.1 ~ ~
execute if entity @s[tag=Neck1] rotated as @s at @e[type=armor_stand,tag=KushalaParts,tag=Neck1,limit=1] run tp @s ^ ^0.7 ^-0.2 ~ ~
execute if entity @s[tag=Neck2] rotated as @s at @e[type=armor_stand,tag=KushalaParts,tag=Neck2,limit=1] run tp @s ^ ^0.7 ^-0.2 ~ ~
execute if entity @s[tag=Body0] rotated as @s at @e[type=armor_stand,tag=KushalaParts,tag=Body0,limit=1] run tp @s ^ ^0.7 ^0.2 ~ ~
execute if entity @s[tag=Body1] rotated as @s at @e[type=armor_stand,tag=KushalaParts,tag=Body1,limit=1] run tp @s ^ ^0.4 ^-0.9 ~ ~

execute if entity @s[tag=Tail0] rotated as @s at @e[type=armor_stand,tag=KushalaParts,tag=Tail0,limit=1] run tp @s ^ ^0.8 ^-0.8 ~ ~
execute if entity @s[tag=Tail1] rotated as @s at @e[type=armor_stand,tag=KushalaParts,tag=Tail0,limit=1] run tp @s ^ ^0.8 ^-2.0 ~ ~
execute if entity @s[tag=Tail2] rotated as @s at @e[type=armor_stand,tag=KushalaParts,tag=Tail1,limit=1] run tp @s ^ ^0.8 ^-0.6 ~ ~
execute if entity @s[tag=Tail3] rotated as @s at @e[type=armor_stand,tag=KushalaParts,tag=Tail2,limit=1] run tp @s ^ ^0.8 ^-0.5 ~ ~
execute if entity @s[tag=Tail4] rotated as @s at @e[type=armor_stand,tag=KushalaParts,tag=Tail2,limit=1] run tp @s ^ ^0.8 ^-1.9 ~ ~

execute if entity @s[tag=LegL0] rotated as @s at @e[type=armor_stand,tag=KushalaParts,tag=LegL0,limit=1] run tp @s ^ ^0.5 ^ ~ ~
execute if entity @s[tag=LegR0] rotated as @s at @e[type=armor_stand,tag=KushalaParts,tag=LegR0,limit=1] run tp @s ^ ^0.5 ^ ~ ~
execute if entity @s[tag=LegL1] rotated as @s at @e[type=armor_stand,tag=KushalaParts,tag=LegL2,limit=1] run tp @s ^ ^0.2 ^0.4 ~ ~
execute if entity @s[tag=LegR1] rotated as @s at @e[type=armor_stand,tag=KushalaParts,tag=LegR2,limit=1] run tp @s ^ ^0.2 ^0.4 ~ ~

execute if entity @s[tag=ArmL0] rotated as @s at @e[type=armor_stand,tag=KushalaParts,tag=ArmL1,limit=1] run tp @s ^0.2 ^0.6 ^0.4 ~ ~
execute if entity @s[tag=ArmR0] rotated as @s at @e[type=armor_stand,tag=KushalaParts,tag=ArmR1,limit=1] run tp @s ^-0.2 ^0.6 ^0.4 ~ ~
execute if entity @s[tag=ArmL1] rotated as @s at @e[type=armor_stand,tag=KushalaParts,tag=ArmL2,limit=1] run tp @s ^0.2 ^0.8 ^0.2 ~ ~
execute if entity @s[tag=ArmR1] rotated as @s at @e[type=armor_stand,tag=KushalaParts,tag=ArmR2,limit=1] run tp @s ^-0.2 ^0.8 ^0.2 ~ ~

# HP確認
execute if entity @s[tag=!Death,nbt=!{Health: 1000f}] run function asa_animator:kushala/manager/health/check