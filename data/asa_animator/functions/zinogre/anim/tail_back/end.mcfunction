scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate_reset
tag @s remove AnmTailB
kill @e[type=marker,tag=ZinogreMoveRotate]

# ランダム
loot spawn ~ 0 ~ loot asa_animator:zinogre/attack/tailb
## 共通
    # バックステップ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmBStep
    # 尻尾薙ぎ払い
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run function asa_animator:zinogre/manager/change_normal/_/tailw
    # 尻尾叩きつけ（前）
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmTailF

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s