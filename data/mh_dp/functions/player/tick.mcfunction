
# ジャンプ
execute if entity @s[scores={MhdpJump=1..}] run function mh_dp:player/jump/main
scoreboard players remove @s[scores={MhdpTAvoid=1..}] MhdpTAvoid 1

# 火属性やられ
execute if entity @s[scores={MhdpBlightFire=100..},tag=!BlightFire] run function mh_dp:player/blight/fire/start
execute if entity @s[tag=BlightFire] run function mh_dp:player/blight/fire/main
execute if entity @s[scores={MhdpBlightFire=1..}] run scoreboard players remove @s MhdpBlightFire 1

# 重複ダメージ対策
tag @s remove TickDamaged