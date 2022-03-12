
# 無敵時間設定
execute if predicate mh_dp:player/stat/sprint run scoreboard players set @s MhdpTAvoid 4
execute if predicate mh_dp:player/stat/sprint if entity @s[tag=CharmNarga,scores={MhdpHealth=..6}] run scoreboard players set @s MhdpTAvoid 6
execute if predicate mh_dp:player/stat/sprint if entity @s[tag=BlightFire] run scoreboard players remove @s MhdpBlightFire 100
scoreboard players set @s MhdpJump 0
