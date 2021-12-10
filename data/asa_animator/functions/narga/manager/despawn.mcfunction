
# メッセージ
tellraw @a {"text": "【迅竜は居なくなった】"}

# タグ消去
tag @e[tag=NargaTarget] remove NargaTarget
tag @e[tag=NargaAttackTarget] remove NargaAttackTarget

# 当たり判定削除
function asa_animator:narga/manager/health/kill

# ボスバー削除
bossbar remove asa_animator:narga_health

# パーツ削除
function asa_animator:narga/kill
kill @e[type=marker,tag=NargaAngerEye]