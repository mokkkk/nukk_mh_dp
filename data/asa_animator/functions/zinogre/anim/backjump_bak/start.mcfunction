scoreboard players set #asa_zinogre_tick_current AsaMatrix 0
function asa_animator:zinogre/anim/backjump/events/set_tick
execute as @e[type=armor_stand,tag=ZinogreParts,tag=HeadU] run data merge entity @s {Pose:{Head:[35f,25f,-15f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=HeadL] run data merge entity @s {Pose:{Head:[35f,25f,-15f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Neck0] run data merge entity @s {Pose:{Head:[35f,25f,-10f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Neck1] run data merge entity @s {Pose:{Head:[20f,25f,-5f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Neck2] run data merge entity @s {Pose:{Head:[5f,25f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Body0] run data merge entity @s {Pose:{Head:[-10f,25f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Body1] run data merge entity @s {Pose:{Head:[0f,45f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegL0] run data merge entity @s {Pose:{Head:[20f,45f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegR0] run data merge entity @s {Pose:{Head:[20f,45f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegL1] run data merge entity @s {Pose:{Head:[-10f,45f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegR1] run data merge entity @s {Pose:{Head:[-10f,45f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegL2] run data merge entity @s {Pose:{Head:[0f,45f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegR2] run data merge entity @s {Pose:{Head:[0f,45f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Tail0] run data merge entity @s {Pose:{Head:[-30f,45f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Tail1] run data merge entity @s {Pose:{Head:[-5f,45f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Tail2] run data merge entity @s {Pose:{Head:[20f,45f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmL0] run data merge entity @s {Pose:{Head:[-40f,-35f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmR0] run data merge entity @s {Pose:{Head:[-40f,85f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmL1] run data merge entity @s {Pose:{Head:[-30f,-25f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmR1] run data merge entity @s {Pose:{Head:[-30f,75f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmL2] run data merge entity @s {Pose:{Head:[-5f,-25f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmR2] run data merge entity @s {Pose:{Head:[-5f,25f,0f]}}
