
# メッセージ
tellraw @a {"text": "【斬竜は居なくなった】"}

# タグ消去
tag @e[tag=DynoTarget] remove DynoTarget
tag @e[tag=DynoAttackTarget] remove DynoAttackTarget

# 当たり判定削除
function asa_animator:dyno/manager/health/kill

# ボスバー削除
bossbar remove asa_animator:dyno_health

# パーツ削除
kill @e[tag=DynoParts]
kill @e[tag=DynoRoot]
kill @e[type=marker,tag=DynoMoveRotate]
kill @e[type=marker,tag=DynoBreathTarget]