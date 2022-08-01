
# 行動カウント
    scoreboard players set #mhdp_reus_actcount_phase AsaMatrix 0
    scoreboard players set #mhdp_reus_actcount AsaMatrix 4

# ハード，確率でFJB
    execute if data storage mh_dp:settings Custom{QuestRank:1} if predicate asa_animator:random/050 run tag @s add AnmHardFjb
# 近距離，確立でBJB
    execute if predicate asa_animator:random/070 if entity @e[distance=..13,tag=ReusAttackTarget] run tag @s add AnmBjb

# その他，通常飛行
    execute unless entity @s[tag=AnmBjb] run tag @s add AnmFly