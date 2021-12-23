
# バージョン設定
scoreboard players set #mhdp_bersion AsaMatrix 4
scoreboard objectives add MhdpJump minecraft.custom:minecraft.jump
scoreboard objectives add MhdpTDamage dummy
scoreboard objectives add MhdpTAvoid dummy
scoreboard objectives add MhdpBlightFire dummy
data modify storage mh_dp:status Monster.Win.Tiga set value false

# 通知
tellraw @a {"text":"【MH_DP ： Beta v5.0にアップデートされました】"}