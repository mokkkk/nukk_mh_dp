
# 死亡時実行
    execute if entity @s[tag=MhdpDeath] run function mh_dp:player/death

# ジャンプ時処理
    execute if entity @s[scores={MhdpJump=1..}] run function mh_dp:player/jump/main
    execute if entity @s[scores={MhdpTAvoid=1..}] run scoreboard players remove @s MhdpTAvoid 1

# 火属性やられ
    execute if entity @s[tag=!BlightFire,scores={MhdpBlightFire=100..}] run function mh_dp:player/blight/fire/start
    execute if entity @s[tag=BlightFire] run function mh_dp:player/blight/fire/main
    execute if entity @s[scores={MhdpBlightFire=1..}] run scoreboard players remove @s MhdpBlightFire 1

# 龍属性やられ
    execute if entity @s[tag=!BlightDragon,scores={MhdpBlightDragon=100..}] run function mh_dp:player/blight/dragon/start
    execute if entity @s[tag=BlightDragon] run function mh_dp:player/blight/dragon/main
    execute if entity @s[scores={MhdpBlightDragon=1..}] run scoreboard players remove @s MhdpBlightDragon 1

# ノックバック
    execute if entity @s[tag=MdhpKnockback] at @s facing entity @e[type=marker,tag=MhdpKnockbackPos] feet rotated ~ 0 run function mh_dp:player/knockback/main

# 無敵時間
    execute if entity @s[scores={MhdpTDamage=1..}] run scoreboard players remove @s MhdpTDamage 1

# スニーク時処理
    execute if entity @s[tag=!IsSneaking,predicate=mh_dp:player/stat/sneak] run function mh_dp:player/sneak/start
    execute if entity @s[tag=IsSneaking] run function mh_dp:player/sneak/main

# 攻撃時処理
    execute if entity @s[advancements={mh_dp:player/attack_sword=true}] run function mh_dp:player/attack/weapon
    execute if entity @s[advancements={mh_dp:player/attack_piercing_arrow=true}] run function mh_dp:player/attack/piercing

# 終了
    tag @s[tag=MhdpPleased] remove MhdpPleased