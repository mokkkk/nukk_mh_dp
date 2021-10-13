
# 周辺モンスターのダメージチェック
# execute as @e[type=slime,tag=MonsterHealth] if entity @s[nbt=!{Health:1000f}] run function asa_animator:diablos/manager/health/check

# 終了
advancement revoke @s only mh_dp:player/attack