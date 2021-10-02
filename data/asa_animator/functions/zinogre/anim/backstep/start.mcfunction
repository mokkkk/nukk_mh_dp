scoreboard players set #asa_zinogre_tick_current AsaMatrix 0
function asa_animator:zinogre/anim/backstep/events/set_tick
execute as @e[type=armor_stand,tag=ZinogreParts,tag=HeadU] run data merge entity @s {Pose:{Head:[95f,-25f,-20f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=HeadL] run data merge entity @s {Pose:{Head:[95f,-25f,-20f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Neck0] run data merge entity @s {Pose:{Head:[65f,-5f,-10f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Neck1] run data merge entity @s {Pose:{Head:[35f,15f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Neck2] run data merge entity @s {Pose:{Head:[5f,20f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Body0] run data merge entity @s {Pose:{Head:[-25f,25f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Body1] run data merge entity @s {Pose:{Head:[0f,-5f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegL0] run data merge entity @s {Pose:{Head:[20f,5f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegR0] run data merge entity @s {Pose:{Head:[20f,5f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegL1] run data merge entity @s {Pose:{Head:[-10f,5f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegR1] run data merge entity @s {Pose:{Head:[-10f,5f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegL2] run data merge entity @s {Pose:{Head:[0f,5f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegR2] run data merge entity @s {Pose:{Head:[0f,5f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Tail0] run data merge entity @s {Pose:{Head:[-30f,20f,-30f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Tail1] run data merge entity @s {Pose:{Head:[-50f,45f,-60f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Tail2] run data merge entity @s {Pose:{Head:[-70f,70f,-90f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmL0] run data merge entity @s {Pose:{Head:[15f,25f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmR0] run data merge entity @s {Pose:{Head:[-5f,85f,25f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmL1] run data merge entity @s {Pose:{Head:[-15f,-15f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmR1] run data merge entity @s {Pose:{Head:[-25f,75f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmL2] run data merge entity @s {Pose:{Head:[0f,-45f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmR2] run data merge entity @s {Pose:{Head:[0f,45f,0f]}}
