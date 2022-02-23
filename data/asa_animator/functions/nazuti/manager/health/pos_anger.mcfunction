# 位置調整
execute if entity @s[tag=Head] rotated as @s at @e[type=armor_stand,tag=NazutiParts,tag=HeadU,limit=1] run tp @s ^ ^0.7 ^0.5 ~ ~
execute if entity @s[tag=Head] at @s run particle poof ^ ^0.5 ^1 0 0 0 0.05 1
execute if entity @s[tag=Neck0] rotated as @s at @e[type=armor_stand,tag=NazutiParts,tag=Neck0,limit=1] run tp @s ^ ^0.7 ^0.1 ~ ~
execute if entity @s[tag=Neck1] rotated as @s at @e[type=armor_stand,tag=NazutiParts,tag=Neck1,limit=1] run tp @s ^ ^0.7 ^-0.2 ~ ~
execute if entity @s[tag=Neck2] rotated as @s at @e[type=armor_stand,tag=NazutiParts,tag=Neck2,limit=1] run tp @s ^ ^0.7 ^-0.2 ~ ~
execute if entity @s[tag=Body0] rotated as @s at @e[type=armor_stand,tag=NazutiParts,tag=Body0,limit=1] run tp @s ^ ^0.7 ^0.2 ~ ~
execute if entity @s[tag=Body1] rotated as @s at @e[type=armor_stand,tag=NazutiParts,tag=Body1,limit=1] run tp @s ^ ^0.4 ^-0.9 ~ ~

execute if entity @s[tag=LegL0] rotated as @s at @e[type=armor_stand,tag=NazutiParts,tag=LegL0,limit=1] run tp @s ^ ^0.5 ^ ~ ~
execute if entity @s[tag=LegR0] rotated as @s at @e[type=armor_stand,tag=NazutiParts,tag=LegR0,limit=1] run tp @s ^ ^0.5 ^ ~ ~
execute if entity @s[tag=LegL1] rotated as @s at @e[type=armor_stand,tag=NazutiParts,tag=LegL1,limit=1] run tp @s ^ ^0.2 ^-0.4 ~ ~
execute if entity @s[tag=LegR1] rotated as @s at @e[type=armor_stand,tag=NazutiParts,tag=LegR1,limit=1] run tp @s ^ ^0.2 ^-0.4 ~ ~

execute if entity @s[tag=ArmL0] rotated as @s at @e[type=armor_stand,tag=NazutiParts,tag=ArmL1,limit=1] run tp @s ^0.2 ^0.6 ^0.4 ~ ~
execute if entity @s[tag=ArmR0] rotated as @s at @e[type=armor_stand,tag=NazutiParts,tag=ArmR1,limit=1] run tp @s ^-0.2 ^0.6 ^0.4 ~ ~
execute if entity @s[tag=ArmL1] rotated as @s at @e[type=armor_stand,tag=NazutiParts,tag=ArmL2,limit=1] run tp @s ^0.2 ^0.8 ^0.2 ~ ~
execute if entity @s[tag=ArmR1] rotated as @s at @e[type=armor_stand,tag=NazutiParts,tag=ArmR2,limit=1] run tp @s ^-0.2 ^0.8 ^0.2 ~ ~

execute if entity @s[tag=Tail0] rotated as @s at @e[type=armor_stand,tag=NazutiParts,tag=Tail0,limit=1] run tp @s ^ ^0.8 ^-0.8 ~ ~
execute if entity @s[tag=Tail1] rotated as @s at @e[type=armor_stand,tag=NazutiParts,tag=Tail1,limit=1] run tp @s ^ ^0.8 ^.0 ~ ~
execute if entity @s[tag=Tail2] rotated as @s at @e[type=armor_stand,tag=NazutiParts,tag=Tail1,limit=1] run tp @s ^ ^0.6 ^-2.0 ~ ~
execute if entity @s[tag=Tail3] rotated as @s at @e[type=armor_stand,tag=NazutiParts,tag=Tail2,limit=1] run tp @s ^ ^0.2 ^-0.5 ~ ~

# HP確認
execute if entity @s[tag=!Death,nbt=!{Health: 1000f}] run function asa_animator:nazuti/manager/health/check