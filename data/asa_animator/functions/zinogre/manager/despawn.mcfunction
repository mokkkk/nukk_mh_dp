
# メッセージ
tellraw @a {"text": "【雷狼竜は居なくなった】"}

# タグ消去
tag @e[tag=ZinogreTarget] remove ZinogreTarget
tag @e[tag=ZinogreAttackTarget] remove ZinogreAttackTarget

# 当たり判定削除
function asa_animator:zinogre/manager/health/kill

# ボスバー削除
bossbar remove asa_animator:zinogre_health

# パーツ削除
kill @e[tag=ZinogreParts]
kill @e[tag=ZinogreRoot]