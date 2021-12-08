execute as @e[type=armor_stand,tag=BrachyParts,tag=HeadU] run data merge entity @s {Pose:{Head:[15f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyParts,tag=HeadL] run data merge entity @s {Pose:{Head:[15f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyParts,tag=Neck0] run data merge entity @s {Pose:{Head:[10f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyParts,tag=Neck1] run data merge entity @s {Pose:{Head:[-5f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyParts,tag=Neck2] run data merge entity @s {Pose:{Head:[-10f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyParts,tag=Body0] run data merge entity @s {Pose:{Head:[-5f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyParts,tag=Body1] run data merge entity @s {Pose:{Head:[5f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyParts,tag=LegL0] run data merge entity @s {Pose:{Head:[-25f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyParts,tag=LegR0] run data merge entity @s {Pose:{Head:[-25f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyParts,tag=LegL1] run data merge entity @s {Pose:{Head:[75f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyParts,tag=LegR1] run data merge entity @s {Pose:{Head:[75f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyParts,tag=LegL2] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyParts,tag=LegR2] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyParts,tag=Tail0] run data merge entity @s {Pose:{Head:[-5f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyParts,tag=Tail1] run data merge entity @s {Pose:{Head:[-10f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyParts,tag=Tail2] run data merge entity @s {Pose:{Head:[-15f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyParts,tag=Tail3] run data merge entity @s {Pose:{Head:[-30f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyParts,tag=ArmL0] run data merge entity @s {Pose:{Head:[15f,0f,-20f]}}
execute as @e[type=armor_stand,tag=BrachyParts,tag=ArmR0] run data merge entity @s {Pose:{Head:[15f,0f,20f]}}
execute as @e[type=armor_stand,tag=BrachyParts,tag=ArmL1] run data merge entity @s {Pose:{Head:[5f,10f,0f]}}
execute as @e[type=armor_stand,tag=BrachyParts,tag=ArmR1] run data merge entity @s {Pose:{Head:[5f,-10f,0f]}}

scoreboard players remove #mhdp_brachy_bomb_count AsaMatrix 30
execute if entity @s[tag=DestroyHead] run scoreboard players add #mhdp_brachy_bomb_count AsaMatrix 6
execute if entity @s[tag=DestroyArmL] run scoreboard players add #mhdp_brachy_bomb_count AsaMatrix 6
execute if entity @s[tag=DestroyArmR] run scoreboard players add #mhdp_brachy_bomb_count AsaMatrix 6