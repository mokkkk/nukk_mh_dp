scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate_reset
tag @s remove AnmHandLS
kill @e[type=marker,tag=ZinogreMoveRotate]

# 状態取得
execute if entity @e[tag=ZinogreAttackTarget,distance=..10] run tag @s add IsNear
# ランダム
loot spawn ~ 0 ~ loot asa_animator:zinogre/attack/hand
## 共通
    # お手
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmHandL2R
## 超帯電
    # 尻尾叩きつけ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmTailF
execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s

# 終了
tag @s remove IsNear