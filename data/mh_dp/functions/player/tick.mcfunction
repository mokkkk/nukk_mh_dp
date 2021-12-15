
# ジャンプ
execute if entity @s[scores={MhdpJump=1..}] run function mh_dp:player/jump/main
scoreboard players remove @s[scores={MhdpTAvoid=1..}] MhdpTAvoid 1

# 重複ダメージ対策
tag @s remove TickDamaged