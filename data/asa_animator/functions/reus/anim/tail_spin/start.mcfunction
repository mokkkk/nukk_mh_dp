execute as @e[type=armor_stand,tag=ReusParts,tag=HeadU] run data merge entity @s {Pose:{Head:[5f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=HeadL] run data merge entity @s {Pose:{Head:[5f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=Neck0] run data merge entity @s {Pose:{Head:[15f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=Neck1] run data merge entity @s {Pose:{Head:[10f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=Neck2] run data merge entity @s {Pose:{Head:[5f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=Body0] run data merge entity @s {Pose:{Head:[5f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=Body1] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=LegL0] run data merge entity @s {Pose:{Head:[-20f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=LegR0] run data merge entity @s {Pose:{Head:[-20f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=LegL1] run data merge entity @s {Pose:{Head:[40f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=LegR1] run data merge entity @s {Pose:{Head:[40f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=LegL2] run data merge entity @s {Pose:{Head:[-10f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=LegR2] run data merge entity @s {Pose:{Head:[-10f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=Tail0] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=Tail1] run data merge entity @s {Pose:{Head:[-5f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=Tail2] run data merge entity @s {Pose:{Head:[-10f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=WingL0] run data merge entity @s {Pose:{Head:[70f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=WingR0] run data merge entity @s {Pose:{Head:[70f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=WingL1] run data merge entity @s {Pose:{Head:[70f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=WingR1] run data merge entity @s {Pose:{Head:[70f,0f,0f]}}

# 尻尾切断時
execute if entity @s[tag=DestroyTail] run function asa_animator:reus/anim/tail_spin/end