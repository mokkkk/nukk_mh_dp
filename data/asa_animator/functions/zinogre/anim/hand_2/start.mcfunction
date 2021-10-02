scoreboard players set #asa_zinogre_tick_current AsaMatrix 0
function asa_animator:zinogre/anim/hand_2/events/set_tick
execute as @e[type=armor_stand,tag=ZinogreParts,tag=HeadU] run data merge entity @s {Pose:{Head:[30f,0f,-20f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=HeadL] run data merge entity @s {Pose:{Head:[60f,0f,-20f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Neck0] run data merge entity @s {Pose:{Head:[0f,20f,-10f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Neck1] run data merge entity @s {Pose:{Head:[0f,40f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Neck2] run data merge entity @s {Pose:{Head:[0f,45f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Body0] run data merge entity @s {Pose:{Head:[0f,50f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Body1] run data merge entity @s {Pose:{Head:[0f,20f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegL0] run data merge entity @s {Pose:{Head:[20f,30f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegR0] run data merge entity @s {Pose:{Head:[20f,30f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegL1] run data merge entity @s {Pose:{Head:[-10f,30f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegR1] run data merge entity @s {Pose:{Head:[-10f,30f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegL2] run data merge entity @s {Pose:{Head:[0f,30f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=LegR2] run data merge entity @s {Pose:{Head:[0f,30f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Tail0] run data merge entity @s {Pose:{Head:[-10f,55f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Tail1] run data merge entity @s {Pose:{Head:[-10f,90f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=Tail2] run data merge entity @s {Pose:{Head:[-10f,125f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmL0] run data merge entity @s {Pose:{Head:[0f,50f,-20f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmR0] run data merge entity @s {Pose:{Head:[-30f,110f,25f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmL1] run data merge entity @s {Pose:{Head:[-30f,10f,-20f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmR1] run data merge entity @s {Pose:{Head:[-40f,100f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmL2] run data merge entity @s {Pose:{Head:[-5f,-20f,0f]}}
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmR2] run data merge entity @s {Pose:{Head:[-5f,70f,0f]}}
