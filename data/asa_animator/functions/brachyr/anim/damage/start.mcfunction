execute as @e[type=armor_stand,tag=BrachyRParts,tag=HeadU] run data merge entity @s {Pose:{Head:[15f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyRParts,tag=HeadL] run data merge entity @s {Pose:{Head:[15f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Neck0] run data merge entity @s {Pose:{Head:[10f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Neck1] run data merge entity @s {Pose:{Head:[-5f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Neck2] run data merge entity @s {Pose:{Head:[-10f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Body0] run data merge entity @s {Pose:{Head:[-5f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Body1] run data merge entity @s {Pose:{Head:[5f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyRParts,tag=LegL0] run data merge entity @s {Pose:{Head:[-25f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyRParts,tag=LegR0] run data merge entity @s {Pose:{Head:[-25f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyRParts,tag=LegL1] run data merge entity @s {Pose:{Head:[75f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyRParts,tag=LegR1] run data merge entity @s {Pose:{Head:[75f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyRParts,tag=LegL2] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyRParts,tag=LegR2] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Tail0] run data merge entity @s {Pose:{Head:[-5f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Tail1] run data merge entity @s {Pose:{Head:[-10f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Tail2] run data merge entity @s {Pose:{Head:[-15f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyRParts,tag=Tail3] run data merge entity @s {Pose:{Head:[-30f,0f,0f]}}
execute as @e[type=armor_stand,tag=BrachyRParts,tag=ArmL0] run data merge entity @s {Pose:{Head:[15f,0f,-20f]}}
execute as @e[type=armor_stand,tag=BrachyRParts,tag=ArmR0] run data merge entity @s {Pose:{Head:[15f,0f,20f]}}
execute as @e[type=armor_stand,tag=BrachyRParts,tag=ArmL1] run data merge entity @s {Pose:{Head:[5f,10f,0f]}}
execute as @e[type=armor_stand,tag=BrachyRParts,tag=ArmR1] run data merge entity @s {Pose:{Head:[5f,-10f,0f]}}

# ダメージ適用
scoreboard players remove #mhdp_brachyr_health AsaMatrix 1000
# ボスバー設定
execute store result bossbar asa_animator:brachyr_health value run scoreboard players get #mhdp_brachyr_health AsaMatrix
# 効果音など
playsound minecraft:entity.player.hurt master @a ~ ~ ~ 2 1