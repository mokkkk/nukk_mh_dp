
# メッセージ
tellraw @a {"text": "【轟竜は居なくなった】"}

# タグ消去
tag @e[tag=TigaTarget] remove TigaTarget
tag @e[tag=TigaAttackTarget] remove TigaAttackTarget

# 当たり判定削除
function asa_animator:tiga/manager/health/kill

# ボスバー削除
bossbar remove asa_animator:tiga_health

# パーツ削除
function asa_animator:tiga/kill
kill @e[type=marker,tag=TigaMoveRotate]
kill @e[type=marker,tag=TigaDashTarget]