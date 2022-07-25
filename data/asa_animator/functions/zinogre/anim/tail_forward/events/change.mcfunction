scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate_reset
tag @s remove AnmTailF
tag @s remove AnmSClaw2TailF
kill @e[type=marker,tag=ZinogreMoveRotate]

# 始動確認
    execute if predicate asa_animator:zinogre/starttags run tag @s add IsStart
# 遷移が特殊なため，必ず始動タグを付与
    tag @s add StartAnmTailF

# 始動：尻尾叩きつけ（後）
    execute if entity @s[tag=StartAnmTailB] run tag @s add AnmDashStart
# 始動：回転爪
    execute if entity @s[tag=StartAnmSClaw] run function asa_animator:zinogre/manager/change_normal/_/sault
# 始動：その他
    execute if entity @s[tag=IsStart] if predicate asa_animator:zinogre/stay if predicate asa_animator:random/050 run function asa_animator:zinogre/manager/change_normal/_/tailw 
    execute if predicate asa_animator:zinogre/stay run function asa_animator:zinogre/manager/change_normal/_/sault

# 終了
    tag @s remove IsStart