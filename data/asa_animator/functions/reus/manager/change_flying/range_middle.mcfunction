
# 状態確認
    execute if data storage mh_dp:settings Custom{QuestRank:1} run tag @s add IsHard

# ランダム
    loot spawn ~ 0 ~ loot asa_animator:reus/flying/middle

# ブレス
    execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmFlyBreath
# 回り込み左
    execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmFlyMoveL
# 回り込み右
    execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmFlyMoveR
# 前進
    execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmFlyMoveF
# なぎ払いブレス
    execute if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmFlyBreathL
# ハード：チャージ噛みつき
    execute if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run tag @s add AnmHardFlyBiteC
# ハード：移動床ドン
    execute if entity @e[type=item,nbt={Item:{tag:{Act:7}}}] run tag @s add AnmHardFlyJump
# ハード：対地前進火炎放射
    execute if entity @e[type=item,nbt={Item:{tag:{Act:8}}}] run tag @s add AnmHardFlyFlame

# 終了
    tag @s remove IsHard
    kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]
