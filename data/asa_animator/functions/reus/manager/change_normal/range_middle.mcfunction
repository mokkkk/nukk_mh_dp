
# 状態確認
    execute if data storage mh_dp:settings Custom{QuestRank:1} run tag @s add IsHard

# ランダム
    loot spawn ~ 0 ~ loot asa_animator:reus/normal/middle
    
# 移動
    execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmMove
# 2連噛みつき
    execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmBite2
# ブレス
    execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmBreath
# ハード：滑空蹴り
    execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmHardKick

# 終了
    tag @s remove IsHard
    kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]
