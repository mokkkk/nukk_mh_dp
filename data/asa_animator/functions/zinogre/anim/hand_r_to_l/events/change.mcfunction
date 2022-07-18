
# 状態取得
    execute if entity @e[tag=ZinogreAttackTarget,distance=..10] run tag @s add IsNear
    execute if score #mhdp_zinogre_hand_count AsaMatrix matches 10.. run tag @s add IsFeint
    execute if entity @s[tag=IsFeint] run scoreboard players set #mhdp_zinogre_hand_count AsaMatrix 5

# 始動：飛び掛かり
    execute if entity @s[tag=StartAnmJump] run tag @s add AnmLClawR

# ランダム
    execute if predicate asa_animator:zinogre/stay run loot spawn ~ 0 ~ loot asa_animator:zinogre/attack/hand2

## 超帯電
    # お手
        execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmHandL2R
    # チャージお手
        execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmHandL2CHandR
    # 尻尾叩きつけ
        execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmTailF
    # 雷爪
        execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmLClawR

# 終了
    execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s
    tag @s remove IsFeint
    tag @s remove IsNear
    tag @s add IsHand3