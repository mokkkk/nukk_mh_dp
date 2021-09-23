
# タグ消去
tag @e[tag=DiablosTarget] remove DiablosTarget
tag @e[tag=DiablosAttackTarget] remove DiablosAttackTarget

# marker消去
kill @e[type=marker,tag=DiablosDashTarget]

# パーティクル
execute at @e[type=armor_stand,tag=DiablosParts] run particle poof ~ ~1 ~ 1 1 1 0 30

# アイテムドロップ
# loot spawn ~ ~ ~ loot mh_dp:bonus/reus

# 当たり判定削除
function asa_animator:diablos/health/kill

# ボスバー削除
bossbar remove asa_animator:diablos_health

# パーツ削除
kill @e[tag=DiablosParts]
kill @e[tag=DiablosRoot]