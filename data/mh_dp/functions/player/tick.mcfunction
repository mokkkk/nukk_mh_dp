
# ジャンプ
execute if entity @s[scores={MhdpJump=1..}] run function mh_dp:player/jump/main
execute if entity @s[scores={MhdpTAvoid=1..}] run scoreboard players remove @s MhdpTAvoid 1

# 火属性やられ
execute if entity @s[scores={MhdpBlightFire=100..},tag=!BlightFire] run function mh_dp:player/blight/fire/start
execute if entity @s[tag=BlightFire] run function mh_dp:player/blight/fire/main
execute if entity @s[scores={MhdpBlightFire=1..}] run scoreboard players remove @s MhdpBlightFire 1

# 無敵時間
execute if entity @s[scores={MhdpTDamage=1..}] run scoreboard players remove @s MhdpTDamage 1