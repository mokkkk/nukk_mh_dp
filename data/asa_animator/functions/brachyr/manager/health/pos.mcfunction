# 位置調整
execute if entity @s[tag=Head] rotated as @s at @e[type=armor_stand,tag=BrachyRParts,tag=HeadU,limit=1] run tp @s ^ ^0.6 ^1.3 ~ ~
execute if entity @s[tag=Neck0] rotated as @s at @e[type=armor_stand,tag=BrachyRParts,tag=Neck0,limit=1] run tp @s ^ ^0.7 ^-0.3 ~ ~

execute if entity @s[tag=Body0] rotated as @s at @e[type=armor_stand,tag=BrachyRParts,tag=Body0,limit=1] run tp @s ^ ^0.5 ^-0.1 ~ ~
execute if entity @s[tag=Body1] rotated as @s at @e[type=armor_stand,tag=BrachyRParts,tag=Body1,limit=1] run tp @s ^ ^0.55 ^-0.4 ~ ~

execute if entity @s[tag=LegL0] rotated as @s at @e[type=armor_stand,tag=BrachyRParts,tag=LegL1,limit=1] run tp @s ^ ^1.2 ^ ~ ~
execute if entity @s[tag=LegR0] rotated as @s at @e[type=armor_stand,tag=BrachyRParts,tag=LegR1,limit=1] run tp @s ^ ^1.2 ^ ~ ~
execute if entity @s[tag=LegL1] rotated as @s at @e[type=armor_stand,tag=BrachyRParts,tag=LegL2,limit=1] run tp @s ^0. ^0.3 ^0.6 ~ ~
execute if entity @s[tag=LegR1] rotated as @s at @e[type=armor_stand,tag=BrachyRParts,tag=LegR2,limit=1] run tp @s ^-0.2 ^0.3 ^0.6 ~ ~

execute if entity @s[tag=Tail0] rotated as @s at @e[type=armor_stand,tag=BrachyRParts,tag=Tail0,limit=1] run tp @s ^ ^0.8 ^-1 ~ ~
execute if entity @s[tag=Tail1] rotated as @s at @e[type=armor_stand,tag=BrachyRParts,tag=Tail1,limit=1] run tp @s ^ ^0.8 ^-1.1 ~ ~
execute if entity @s[tag=Tail2] rotated as @s at @e[type=armor_stand,tag=BrachyRParts,tag=Tail3,limit=1] run tp @s ^ ^0.8 ^-0.4 ~ ~

execute if entity @s[tag=ArmL0] rotated as @s at @e[type=armor_stand,tag=BrachyRParts,tag=ArmL0,limit=1] run tp @s ^0.2 ^0.4 ^ ~ ~
execute if entity @s[tag=ArmR0] rotated as @s at @e[type=armor_stand,tag=BrachyRParts,tag=ArmR0,limit=1] run tp @s ^-0.2 ^0.4 ^ ~ ~
execute if entity @s[tag=ArmL1] rotated as @s at @e[type=armor_stand,tag=BrachyRParts,tag=ArmL1,limit=1] run tp @s ^ ^0.4 ^0.4 ~ ~
execute if entity @s[tag=ArmR1] rotated as @s at @e[type=armor_stand,tag=BrachyRParts,tag=ArmR1,limit=1] run tp @s ^ ^0.4 ^0.4 ~ ~
execute if entity @s[tag=ArmL2] rotated as @s at @e[type=armor_stand,tag=BrachyRParts,tag=ArmL1,limit=1] run tp @s ^ ^0.4 ^2.3 ~ ~
execute if entity @s[tag=ArmR2] rotated as @s at @e[type=armor_stand,tag=BrachyRParts,tag=ArmR1,limit=1] run tp @s ^ ^0.4 ^2.3 ~ ~

# HP確認
execute if entity @s[tag=!Death,nbt=!{Health: 1000f}]] run function asa_animator:brachyr/manager/health/check