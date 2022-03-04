
# バージョン設定
scoreboard players set #mhdp_bersion AsaMatrix 10

# クエストランク設定
data modify storage mh_dp:settings Custom.QuestRank set value 0

# デスポーン設定
data modify storage mh_dp:settings Custom.DisableDespawn set value 0b
# スコアボード定義
scoreboard objectives add MhdpBlightDragon dummy
scoreboard objectives add MhdpTKnockback dummy
# for TSB library
scoreboard objectives add Global dummy
scoreboard objectives add Temporary dummy
scoreboard objectives add Const dummy
scoreboard objectives add UserID dummy
scoreboard objectives add AttackedEntity dummy
scoreboard players set $2 Const 2
scoreboard players set $2^15 Const 32768
scoreboard players set $2^16 Const 65536

# 通知
tellraw @a {"text":"【MH_DP ： v0.1.0 にアップデートされました】"}