execute as @e[type=armor_stand,tag=DiablosParts,tag=HeadU] run data merge entity @s {Pose:{Head:[5f,0f,0f]}}
execute as @e[type=armor_stand,tag=DiablosParts,tag=HeadL] run data merge entity @s {Pose:{Head:[5f,0f,0f]}}
execute as @e[type=armor_stand,tag=DiablosParts,tag=Neck0] run data merge entity @s {Pose:{Head:[15f,0f,0f]}}
execute as @e[type=armor_stand,tag=DiablosParts,tag=Neck1] run data merge entity @s {Pose:{Head:[10f,0f,0f]}}
execute as @e[type=armor_stand,tag=DiablosParts,tag=Neck2] run data merge entity @s {Pose:{Head:[5f,0f,0f]}}
execute as @e[type=armor_stand,tag=DiablosParts,tag=Body0] run data merge entity @s {Pose:{Head:[5f,0f,0f]}}
execute as @e[type=armor_stand,tag=DiablosParts,tag=Body1] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegL0] run data merge entity @s {Pose:{Head:[-30f,0f,0f]}}
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegR0] run data merge entity @s {Pose:{Head:[-30f,0f,0f]}}
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegL1] run data merge entity @s {Pose:{Head:[30f,0f,0f]}}
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegR1] run data merge entity @s {Pose:{Head:[30f,0f,0f]}}
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegL2] run data merge entity @s {Pose:{Head:[-5f,0f,0f]}}
execute as @e[type=armor_stand,tag=DiablosParts,tag=LegR2] run data merge entity @s {Pose:{Head:[-5f,0f,0f]}}
execute as @e[type=armor_stand,tag=DiablosParts,tag=Tail0] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=DiablosParts,tag=Tail1] run data merge entity @s {Pose:{Head:[-5f,0f,0f]}}
execute as @e[type=armor_stand,tag=DiablosParts,tag=Tail2] run data merge entity @s {Pose:{Head:[-10f,0f,0f]}}
execute as @e[type=armor_stand,tag=DiablosParts,tag=WingL0] run data merge entity @s {Pose:{Head:[70f,0f,0f]}}
execute as @e[type=armor_stand,tag=DiablosParts,tag=WingR0] run data merge entity @s {Pose:{Head:[70f,0f,0f]}}
execute as @e[type=armor_stand,tag=DiablosParts,tag=WingL1] run data merge entity @s {Pose:{Head:[70f,0f,0f]}}
execute as @e[type=armor_stand,tag=DiablosParts,tag=WingR1] run data merge entity @s {Pose:{Head:[70f,0f,0f]}}
tag @s add IsAnger
scoreboard players set #mhdp_diablos_anger_actcount AsaMatrix 0