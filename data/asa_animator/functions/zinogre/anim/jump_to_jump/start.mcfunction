execute as @e[type=armor_stand,tag=ZinogreParts,tag=HeadU] run data merge entity @s {Pose:{Head:[-47f,44f,20f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=HeadL] run data merge entity @s {Pose:{Head:[-37f,44f,20f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Neck0] run data merge entity @s {Pose:{Head:[-44.5f,44f,10f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Neck1] run data merge entity @s {Pose:{Head:[-12f,44f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Neck2] run data merge entity @s {Pose:{Head:[-2f,44f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Body0] run data merge entity @s {Pose:{Head:[5f,44f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Body1] run data merge entity @s {Pose:{Head:[-10f,19f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegL0] run data merge entity @s {Pose:{Head:[0f,17f,-10f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegR0] run data merge entity @s {Pose:{Head:[10f,12f,10f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegL1] run data merge entity @s {Pose:{Head:[80f,17f,-10f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegR1] run data merge entity @s {Pose:{Head:[90f,22f,10f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegL2] run data merge entity @s {Pose:{Head:[10f,7f,-10f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegR2] run data merge entity @s {Pose:{Head:[10f,22f,10f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegL3] run data merge entity @s {Pose:{Head:[0f,-13f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegR3] run data merge entity @s {Pose:{Head:[0f,42f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Tail0] run data merge entity @s {Pose:{Head:[-32.5f,34.5f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Tail1] run data merge entity @s {Pose:{Head:[-15f,57.5f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Tail2] run data merge entity @s {Pose:{Head:[10f,80f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Tail3] run data merge entity @s {Pose:{Head:[45f,100.5f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmL0] run data merge entity @s {Pose:{Head:[80f,74f,-20f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmR0] run data merge entity @s {Pose:{Head:[110f,34f,40f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmL1] run data merge entity @s {Pose:{Head:[45f,34f,-10f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmR1] run data merge entity @s {Pose:{Head:[100f,74f,30f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmL2] run data merge entity @s {Pose:{Head:[0f,29f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmR2] run data merge entity @s {Pose:{Head:[5f,79f,10f]}}

# ターゲットリセット
    function asa_animator:zinogre/manager/change_target