# 位置調整
execute if entity @s[tag=Head] rotated as @s at @e[type=armor_stand,tag=DynoParts,tag=HeadU,limit=1] run tp @s ^ ^0.7 ^0.5 ~ ~
execute if entity @s[tag=Neck0] rotated as @s at @e[type=armor_stand,tag=DynoParts,tag=Neck0,limit=1] run tp @s ^ ^0.7 ^-0.1 ~ ~
execute if entity @s[tag=Neck1] rotated as @s at @e[type=armor_stand,tag=DynoParts,tag=Neck1,limit=1] run tp @s ^ ^0.7 ^-0.2 ~ ~
execute if entity @s[tag=Body0] rotated as @s at @e[type=armor_stand,tag=DynoParts,tag=Body0,limit=1] run tp @s ^ ^0.4 ^-0.3 ~ ~
execute if entity @s[tag=Body1] rotated as @s at @e[type=armor_stand,tag=DynoParts,tag=Body1,limit=1] run tp @s ^ ^0.4 ^-0.4 ~ ~
execute if entity @s[tag=LegL1] rotated as @s at @e[type=armor_stand,tag=DynoParts,tag=LegL1,limit=1] run tp @s ^ ^0.7 ^ ~ ~
execute if entity @s[tag=LegR1] rotated as @s at @e[type=armor_stand,tag=DynoParts,tag=LegR1,limit=1] run tp @s ^ ^0.7 ^ ~ ~
execute if entity @s[tag=LegL2] rotated as @s at @e[type=armor_stand,tag=DynoParts,tag=LegL2,limit=1] run tp @s ^0.2 ^ ^0.6 ~ ~
execute if entity @s[tag=LegR2] rotated as @s at @e[type=armor_stand,tag=DynoParts,tag=LegR2,limit=1] run tp @s ^-0.2 ^ ^0.6 ~ ~
execute if entity @s[tag=Tail0] rotated as @s at @e[type=armor_stand,tag=DynoParts,tag=Tail0,limit=1] run tp @s ^ ^0.8 ^-1 ~ ~
execute if entity @s[tag=Tail2] rotated as @s at @e[type=armor_stand,tag=DynoParts,tag=Tail1,limit=1] run tp @s ^ ^0.8 ^-1 ~ ~
execute if entity @s[tag=Tail3] rotated as @s at @e[type=armor_stand,tag=DynoParts,tag=Tail2,limit=1] run tp @s ^ ^0.8 ^-0.7 ~ ~


execute if entity @s[tag=ArmL] rotated as @s at @e[type=armor_stand,tag=DynoParts,tag=ArmL0,limit=1] run tp @s ^0.2 ^0.4 ^ ~ ~
execute if entity @s[tag=ArmR] rotated as @s at @e[type=armor_stand,tag=DynoParts,tag=ArmR0,limit=1] run tp @s ^-0.2 ^0.4 ^ ~ ~

execute if entity @s[tag=Tail4] run function asa_animator:dyno/manager/health/pos_tail4
execute if entity @s[tag=Tail5] run function asa_animator:dyno/manager/health/pos_tail5
execute if entity @s[tag=Tail1] run function asa_animator:dyno/manager/health/pos_tail1

# HP確認
execute if entity @s[nbt=!{Health:1000f},tag=!Death] run function asa_animator:dyno/manager/health/check