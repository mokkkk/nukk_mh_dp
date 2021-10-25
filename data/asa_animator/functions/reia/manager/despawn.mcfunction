
# メッセージ
tellraw @a {"text": "【雌火竜は居なくなった】"}

# タグ消去
tag @e[tag=ReiaTarget] remove ReiaTarget
tag @e[tag=ReiaAttackTarget] remove ReiaAttackTarget

# marker消去
kill @e[type=marker,tag=ReiaBreathTarget]
kill @e[type=marker,tag=ReiaCharge]

# 当たり判定削除
function asa_animator:reia/manager/health/kill

# ボスバー削除
bossbar remove asa_animator:reia_health

# パーツ削除
kill @e[tag=ReiaParts]
kill @e[tag=ReiaRoot]