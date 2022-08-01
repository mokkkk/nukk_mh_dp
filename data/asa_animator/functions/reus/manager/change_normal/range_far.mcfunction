
# 状態確認
    execute if data storage mh_dp:settings Custom{QuestRank:1} run tag @s add IsHard

# ランダム
    loot spawn ~ 0 ~ loot asa_animator:reus/normal/far

# ブレス
    execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmBreath
# 飛行開始
    execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmFly
# ハード：FJB
    execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmHardFjb

# 終了
    tag @s remove IsHard
    kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]
