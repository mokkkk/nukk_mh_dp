
# 状態取得
    execute if entity @e[tag=ZinogreAttackTarget,distance=..10] run tag @s add IsNear

# ランダム
    loot spawn ~ 0 ~ loot asa_animator:zinogre/attack/hand2

## 超帯電
    # お手
        execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmHandL2R
    # チャージお手
        execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmHandL2CHandR
    # 尻尾叩きつけ
        execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmTailF

# 終了
    execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s
    tag @s remove IsNear
    tag @s add IsHand3