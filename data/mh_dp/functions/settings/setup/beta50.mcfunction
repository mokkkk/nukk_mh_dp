
# バージョン設定
scoreboard players set #mhdp_bersion AsaMatrix 4

# デスポーン設定
data modify storage mh_dp:settings Custom.DisableDespawn set value 0b
# スコアボード定義
scoreboard players set #mhdp_id_holder MhdpMonsterID 0
scoreboard objectives add MhdpMonsterID dummy
scoreboard players set #mhdp_id_holder MhdpMonsterID 0
scoreboard objectives add MhdpJump minecraft.custom:minecraft.jump
scoreboard objectives add MhdpTDamage dummy
scoreboard objectives add MhdpTAvoid dummy
scoreboard objectives add MhdpBlightFire dummy
data modify storage mh_dp:status Monster.Win.Tiga set value false