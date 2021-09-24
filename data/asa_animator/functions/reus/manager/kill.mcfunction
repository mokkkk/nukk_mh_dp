
# メッセージ
tellraw @a {"text": "【戦いに勝利した！】"}
# 討伐タイマー計算

# タグ消去
tag @e[tag=ReusTarget] remove ReusTarget
tag @e[tag=ReusAttackTarget] remove ReusAttackTarget

# marker消去
kill @e[type=marker,tag=ReusBreathTarget]
kill @e[type=marker,tag=ReusChargeFPos]
kill @e[type=marker,tag=ReusChargeTarget]
kill @e[type=marker,tag=ReusChargeAttack]

# パーティクル
execute at @e[type=armor_stand,tag=ReusParts] run particle poof ~ ~1 ~ 1 1 1 0 30

# アイテムドロップ
loot spawn ~ ~ ~ loot mh_dp:bonus/reus

# 当たり判定削除
function asa_animator:reus/health/kill

# ボスバー削除
bossbar remove asa_animator:reus_health

# パーツ削除
kill @e[tag=ReusParts]
kill @e[tag=ReusRoot]