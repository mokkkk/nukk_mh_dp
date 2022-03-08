
# バージョン設定
scoreboard players set #mhdp_bersion AsaMatrix 10

# クエストランク設定
data modify storage mh_dp:status Flag.QuestRank set value false
data modify storage mh_dp:settings Custom.QuestRank set value 0

# デスポーン設定
data modify storage mh_dp:settings Custom.DisableDespawn set value 0b
# スコアボード定義
scoreboard objectives add MhdpBlightDragon dummy
scoreboard objectives add MhdpTKnockback dummy
scoreboard objectives add MhdpMWeakness dummy
scoreboard objectives add MhdpMResist dummy
scoreboard objectives add MhdpTSneak minecraft.custom:sneak_time
scoreboard objectives add MhdpTDeath minecraft.custom:time_since_death
scoreboard objectives add MhdpHealth health

# for TSB library
scoreboard objectives add Global dummy
scoreboard objectives add Temporary dummy
scoreboard objectives add Const dummy
scoreboard objectives add UserID dummy
scoreboard objectives add AttackedEntity dummy
scoreboard players set $2 Const 2
scoreboard players set $2^15 Const 32768
scoreboard players set $2^16 Const 65536

# 討伐履歴
data modify storage mh_dp:status Monster.Win.Kushala set value false
data modify storage mh_dp:status Monster.Win.Teo set value false
data modify storage mh_dp:status Monster.Win.Nazuti set value false
data modify storage mh_dp:status Monster.Win.Ruko set value false

# 通知
tellraw @a {"text":"【MH_DP ： v0.1.0 にアップデートされました】"}