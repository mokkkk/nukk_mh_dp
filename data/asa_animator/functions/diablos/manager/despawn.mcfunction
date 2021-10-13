
# メッセージ
tellraw @a {"text": "【角竜は居なくなった】"}

# タグ消去
tag @e[tag=DiablosTarget] remove DiablosTarget
tag @e[tag=DiablosAttackTarget] remove DiablosAttackTarget

# marker消去
kill @e[type=marker,tag=DiablosDashTarget]
kill @e[type=marker,tag=DiablosDiveParticle]

# 当たり判定削除
function asa_animator:diablos/manager/health/kill

# ボスバー削除
bossbar remove asa_animator:diablos_health

# パーツ削除
kill @e[tag=DiablosParts]
kill @e[tag=DiablosRoot]