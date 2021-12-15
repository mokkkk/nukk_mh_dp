
# バージョン設定
data modify storage mh_dp:settings Version set value "Beta4.2"
scoreboard objectives add MhdpJump minecraft.custom:minecraft.jump
scoreboard objectives add MhdpTAvoid dummy

# 通知
tellraw @a {"text":"【MH_DP ： Beta v4.2にアップデートされました】"}