
# メッセージ
tellraw @a {"text": "【砕竜は居なくなった】"}

# タグ消去
tag @e[tag=BrachyTarget] remove BrachyRTarget
tag @e[tag=BrachyAttackTarget] remove BrachyRAttackTarget

# 当たり判定削除
function asa_animator:brachyr/manager/health/kill

# ボスバー削除
bossbar remove asa_animator:brachyr_health

# パーツ削除
function asa_animator:brachyr/kill
kill @e[type=marker,tag=BrachyRMoveRotate]