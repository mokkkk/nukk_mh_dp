
# バージョン設定
scoreboard players set #mhdp_bersion AsaMatrix 10

# クエストランク設定
data modify storage mh_dp:settings Custom.QuestRank set value 0

# デスポーン設定
data modify storage mh_dp:settings Custom.DisableDespawn set value 0b
# スコアボード定義
scoreboard objectives add MhdpBlightDragon dummy
scoreboard objectives add MhdpTKnockback dummy

# 通知
tellraw @a {"text":"【MH_DP ： v0.1.0 にアップデートされました】"}