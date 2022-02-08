
# メッセージ
tellraw @a {"text": "【炎王龍は居なくなった】"}

# タグ消去
tag @e[tag=TeoTarget] remove TeoTarget
tag @e[tag=TeoAttackTarget] remove TeoAttackTarget
kill @e[type=marker,tag=TeoMoveRotate]
kill @e[type=marker,tag=TeoDashTarget]
kill @e[type=marker,tag=TeoChargeFPos]
kill @e[type=marker,tag=TeoMovePos]

# 当たり判定削除
function asa_animator:teo/manager/health/kill

# ボスバー削除
bossbar remove asa_animator:teo_health

# パーツ削除
function asa_animator:teo/kill