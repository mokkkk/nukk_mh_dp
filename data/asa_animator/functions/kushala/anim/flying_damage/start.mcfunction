execute as @e[type=armor_stand,tag=KushalaParts,tag=HeadU] run data merge entity @s {Pose:{Head:[30f,0f,0f]}}
execute as @e[type=armor_stand,tag=KushalaParts,tag=HeadL] run data merge entity @s {Pose:{Head:[40f,0f,0f]}}
execute as @e[type=armor_stand,tag=KushalaParts,tag=Neck0] run data merge entity @s {Pose:{Head:[20f,0f,10f]}}
execute as @e[type=armor_stand,tag=KushalaParts,tag=Neck1] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=KushalaParts,tag=Neck2] run data merge entity @s {Pose:{Head:[-20f,0f,0f]}}
execute as @e[type=armor_stand,tag=KushalaParts,tag=Body0] run data merge entity @s {Pose:{Head:[-43f,0f,0f]}}
execute as @e[type=armor_stand,tag=KushalaParts,tag=Body1] run data merge entity @s {Pose:{Head:[-49f,0f,0f]}}
execute as @e[type=armor_stand,tag=KushalaParts,tag=LegL0] run data merge entity @s {Pose:{Head:[7f,0f,0f]}}
execute as @e[type=armor_stand,tag=KushalaParts,tag=LegR0] run data merge entity @s {Pose:{Head:[7f,0f,0f]}}
execute as @e[type=armor_stand,tag=KushalaParts,tag=LegL1] run data merge entity @s {Pose:{Head:[2f,0f,10f]}}
execute as @e[type=armor_stand,tag=KushalaParts,tag=LegR1] run data merge entity @s {Pose:{Head:[-28f,0f,-10f]}}
execute as @e[type=armor_stand,tag=KushalaParts,tag=LegL2] run data merge entity @s {Pose:{Head:[32f,0f,0f]}}
execute as @e[type=armor_stand,tag=KushalaParts,tag=LegR2] run data merge entity @s {Pose:{Head:[42f,10f,0f]}}
execute as @e[type=armor_stand,tag=KushalaParts,tag=Tail0] run data merge entity @s {Pose:{Head:[-9f,0f,0f]}}
execute as @e[type=armor_stand,tag=KushalaParts,tag=Tail1] run data merge entity @s {Pose:{Head:[11f,0f,0f]}}
execute as @e[type=armor_stand,tag=KushalaParts,tag=Tail2] run data merge entity @s {Pose:{Head:[51f,0f,0f]}}
execute as @e[type=armor_stand,tag=KushalaParts,tag=ArmL0] run data merge entity @s {Pose:{Head:[-28f,30f,-20f]}}
execute as @e[type=armor_stand,tag=KushalaParts,tag=ArmR0] run data merge entity @s {Pose:{Head:[-28f,0f,30f]}}
execute as @e[type=armor_stand,tag=KushalaParts,tag=ArmL1] run data merge entity @s {Pose:{Head:[-32f,0f,0f]}}
execute as @e[type=armor_stand,tag=KushalaParts,tag=ArmR1] run data merge entity @s {Pose:{Head:[-34f,10f,-10f]}}
execute as @e[type=armor_stand,tag=KushalaParts,tag=ArmL2] run data merge entity @s {Pose:{Head:[43f,0f,-10f]}}
execute as @e[type=armor_stand,tag=KushalaParts,tag=ArmR2] run data merge entity @s {Pose:{Head:[51f,10f,10f]}}
execute as @e[type=armor_stand,tag=KushalaParts,tag=WingL0] run data merge entity @s {Pose:{Head:[-15f,45f,60f]}}
execute as @e[type=armor_stand,tag=KushalaParts,tag=WingR0] run data merge entity @s {Pose:{Head:[-15f,-45f,-60f]}}
execute as @e[type=armor_stand,tag=KushalaParts,tag=WingL1] run data merge entity @s {Pose:{Head:[-37.3f,31.1f,25f]}}
execute as @e[type=armor_stand,tag=KushalaParts,tag=WingR1] run data merge entity @s {Pose:{Head:[-37.3f,-31.1f,-25f]}}
scoreboard players set #mhdp_kushala_actcount_phase AsaMatrix 0
execute if score #mhdp_kushala_lv AsaMatrix matches 1 run scoreboard players remove #mhdp_kushala_actcount_lv AsaMatrix 10
execute if score #mhdp_kushala_lv AsaMatrix matches 1 run scoreboard players remove #mhdp_kushala_lv AsaMatrix 1
execute if score #mhdp_kushala_lv AsaMatrix matches 1 run weather rain