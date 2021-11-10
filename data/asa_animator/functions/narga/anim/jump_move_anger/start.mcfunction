execute as @e[type=armor_stand,tag=NargaParts,tag=HeadU] run data merge entity @s {Pose:{Head:[12f,0f,0f]}}
execute as @e[type=armor_stand,tag=NargaParts,tag=HeadL] run data merge entity @s {Pose:{Head:[12f,0f,0f]}}
execute as @e[type=armor_stand,tag=NargaParts,tag=Neck0] run data merge entity @s {Pose:{Head:[7f,0f,0f]}}
execute as @e[type=armor_stand,tag=NargaParts,tag=Neck1] run data merge entity @s {Pose:{Head:[12f,0f,0f]}}
execute as @e[type=armor_stand,tag=NargaParts,tag=Body0] run data merge entity @s {Pose:{Head:[20f,0f,0f]}}
execute as @e[type=armor_stand,tag=NargaParts,tag=Body1] run data merge entity @s {Pose:{Head:[-5f,0f,0f]}}
execute as @e[type=armor_stand,tag=NargaParts,tag=LegL0] run data merge entity @s {Pose:{Head:[17.5f,0f,0f]}}
execute as @e[type=armor_stand,tag=NargaParts,tag=LegR0] run data merge entity @s {Pose:{Head:[17.5f,0f,0f]}}
execute as @e[type=armor_stand,tag=NargaParts,tag=LegL1] run data merge entity @s {Pose:{Head:[-5f,0f,0f]}}
execute as @e[type=armor_stand,tag=NargaParts,tag=LegR1] run data merge entity @s {Pose:{Head:[-5f,0f,0f]}}
execute as @e[type=armor_stand,tag=NargaParts,tag=LegL2] run data merge entity @s {Pose:{Head:[0f,-8f,0f]}}
execute as @e[type=armor_stand,tag=NargaParts,tag=LegR2] run data merge entity @s {Pose:{Head:[0f,8f,0f]}}
execute as @e[type=armor_stand,tag=NargaParts,tag=Tail0] run data merge entity @s {Pose:{Head:[-13f,0f,0f]}}
execute as @e[type=armor_stand,tag=NargaParts,tag=Tail1] run data merge entity @s {Pose:{Head:[-8f,0f,0f]}}
execute as @e[type=armor_stand,tag=NargaParts,tag=Tail2] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=NargaParts,tag=ArmL0] run data merge entity @s {Pose:{Head:[15f,-80f,0f]}}
execute as @e[type=armor_stand,tag=NargaParts,tag=ArmR0] run data merge entity @s {Pose:{Head:[15f,80f,0f]}}
execute as @e[type=armor_stand,tag=NargaParts,tag=ArmL1] run data merge entity @s {Pose:{Head:[27f,-10f,0f]}}
execute as @e[type=armor_stand,tag=NargaParts,tag=ArmR1] run data merge entity @s {Pose:{Head:[27f,10f,0f]}}
execute as @e[type=armor_stand,tag=NargaParts,tag=ArmL2] run data merge entity @s {Pose:{Head:[0f,-10f,0f]}}
execute as @e[type=armor_stand,tag=NargaParts,tag=ArmR2] run data merge entity @s {Pose:{Head:[0f,10f,0f]}}
execute as @e[type=armor_stand,tag=NargaParts,tag=WingL] run data merge entity @s {Pose:{Head:[27f,-10f,0f]}}
execute as @e[type=armor_stand,tag=NargaParts,tag=WingR] run data merge entity @s {Pose:{Head:[27f,10f,0f]}}

# 怒り状態開始
tag @s add IsAnger
summon marker ~ ~ ~ {Tags:["NargaAngerEye","L"]}
summon marker ~ ~ ~ {Tags:["NargaAngerEye","R"]}
function asa_animator:narga/manager/model/change_to_anger