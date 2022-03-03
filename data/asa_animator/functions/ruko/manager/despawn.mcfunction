
# メッセージ
tellraw @a {"text": "【極龍は居なくなった】"}

# タグ消去
tag @e[tag=RukoTarget] remove RukoTarget
tag @e[tag=RukoAttackTarget] remove RukoAttackTarget
kill @e[type=marker,tag=RukoBreathTarget]
kill @e[type=marker,tag=RukoMoveRotate]
kill @e[type=marker,tag=RukoDashTarget]
kill @e[type=marker,tag=RukoChargeFPos]
kill @e[type=marker,tag=RukoMovePos]
kill @e[type=marker,tag=RukoBreathPos]
kill @e[type=armor_stand,tag=RukoStone]
kill @e[type=armor_stand,tag=RukoStoneShot]
kill @e[type=marker,tag=RukoBreathB]
kill @e[type=marker,tag=RukoMeteoManager]
kill @e[type=marker,tag=RukoMeteoShot]

# 当たり判定削除
function asa_animator:ruko/manager/health/kill

# ボスバー削除
bossbar remove asa_animator:ruko_health

# パーツ削除
function asa_animator:ruko/kill