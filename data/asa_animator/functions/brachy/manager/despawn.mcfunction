
# メッセージ
tellraw @a {"text": "【砕竜は居なくなった】"}

# タグ消去
tag @e[tag=BrachyTarget] remove BrachyTarget
tag @e[tag=BrachyAttackTarget] remove BrachyAttackTarget

# 当たり判定削除
function asa_animator:brachy/manager/health/kill

# ボスバー削除
bossbar remove asa_animator:brachy_health

# パーツ削除
function asa_animator:brachy/kill
kill @e[type=marker,tag=BrachyMoveRotate]