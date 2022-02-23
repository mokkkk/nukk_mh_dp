
# メッセージ
tellraw @a {"text": "【霞龍は居なくなった】"}

# タグ消去
tag @e[tag=NazutiTarget] remove NazutiTarget
tag @e[tag=NazutiAttackTarget] remove NazutiAttackTarget
kill @e[type=marker,tag=NazutiBreathTarget]
kill @e[type=marker,tag=NazutiMoveRotate]
kill @e[type=marker,tag=NazutiDashTarget]
kill @e[type=marker,tag=NazutiChargeFPos]
kill @e[type=marker,tag=NazutiSpTornado]
kill @e[type=marker,tag=NazutiMovePos]
kill @e[type=marker,tag=NazutiTongue]

# 当たり判定削除
function asa_animator:nazuti/manager/health/kill

# ボスバー削除
bossbar remove asa_animator:nazuti_health

# パーツ削除
function asa_animator:nazuti/kill