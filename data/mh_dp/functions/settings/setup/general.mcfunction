
data modify storage mh_dp:settings Setup set value true

scoreboard objectives add AsaMatrix dummy
scoreboard objectives add MhdpMonsterID dummy
scoreboard objectives add MhdpJump minecraft.custom:minecraft.jump
scoreboard objectives add MhdpTDamage dummy
scoreboard objectives add MhdpTAvoid dummy
scoreboard objectives add MhdpBlightFire dummy
scoreboard objectives add MhdpBlightDragon dummy
scoreboard objectives add MhdpTKnockback dummy

# for TSB library
scoreboard objectives add Global dummy
scoreboard objectives add Temporary dummy
scoreboard objectives add Const dummy

scoreboard players set $2 Const 2
scoreboard players set $2^15 Const 32768
scoreboard players set $2^16 Const 65536

# ID設定
scoreboard players set #mhdp_id_holder MhdpMonsterID 0

# クエストランク設定
data modify storage mh_dp:settings Custom.QuestRank set value 0
# スポーン設定
data modify storage mh_dp:settings Custom.EnableBossSpawn set value 0b
# デスポーン設定
data modify storage mh_dp:settings Custom.DisableDespawn set value 0b
# 攻撃力倍率
scoreboard players set #mhdp_attack_multiply AsaMatrix 100
# HP倍率
scoreboard players set #mhdp_hp_multiply AsaMatrix 100

# 討伐数合計
data modify storage mh_dp:status Monster.Count set value 0
# 討伐履歴
data modify storage mh_dp:status Monster.Win.Reus set value false
data modify storage mh_dp:status Monster.Win.Reia set value false
data modify storage mh_dp:status Monster.Win.Diablos set value false
data modify storage mh_dp:status Monster.Win.Zinogre set value false
data modify storage mh_dp:status Monster.Win.Narga set value false
data modify storage mh_dp:status Monster.Win.Dyno set value false
data modify storage mh_dp:status Monster.Win.Brachy set value false
data modify storage mh_dp:status Monster.Win.BrachyR set value false
data modify storage mh_dp:status Monster.Win.Tiga set value false

# バージョン設定
scoreboard players set #mhdp_bersion AsaMatrix 6

tellraw @a {"text":"【MH_DP ： 初期設定が完了しました】"}