
# メッセージ
tellraw @a {"text": "【火竜は居なくなった】"}

# タグ消去
tag @e[tag=ReusTarget] remove ReusTarget
tag @e[tag=ReusAttackTarget] remove ReusAttackTarget

# marker消去
kill @e[type=marker,tag=ReusBreathTarget]
kill @e[type=marker,tag=ReusChargeFPos]
kill @e[type=marker,tag=ReusChargeTarget]
kill @e[type=marker,tag=ReusChargeAttack]

# 当たり判定削除
function asa_animator:reus/manager/health/kill

# ボスバー削除
bossbar remove asa_animator:reus_health

# パーツ削除
function asa_animator:reus/kill