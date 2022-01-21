
# メッセージ
tellraw @a {"text": "【鋼龍は居なくなった】"}

# タグ消去
tag @e[tag=KushalaTarget] remove KushalaTarget
tag @e[tag=KushalaAttackTarget] remove KushalaAttackTarget
kill @e[type=marker,tag=KushalaBreathTarget]
kill @e[type=marker,tag=KushalaMoveRotate]
kill @e[type=marker,tag=KushalaDashTarget]
kill @e[type=marker,tag=KushalaChargeFPos]
kill @e[type=marker,tag=KushalaSpTornado]
kill @e[type=marker,tag=KushalaMovePos]

# 当たり判定削除
function asa_animator:kushala/manager/health/kill

# ボスバー削除
bossbar remove asa_animator:kushala_health

# パーツ削除
function asa_animator:kushala/kill