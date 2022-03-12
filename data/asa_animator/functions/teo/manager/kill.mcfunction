
# メッセージ
tellraw @a {"text": "【戦いに勝利した！】"}
# 討伐タイマー計算
scoreboard players remove #mhdp_teo_kill_timer AsaMatrix 118
execute store result score #mhdp_min AsaMatrix store result score #mhdp_sec AsaMatrix run scoreboard players get #mhdp_teo_kill_timer AsaMatrix
scoreboard players operation #mhdp_sec AsaMatrix %= #asam_const_min AsaMatrix
scoreboard players operation #mhdp_min AsaMatrix /= #asam_const_min AsaMatrix
scoreboard players operation #mhdp_sec AsaMatrix /= #asam_const_sec AsaMatrix

execute if score #mhdp_sec AsaMatrix matches 10.. if score #mhdp_min AsaMatrix matches 10.. run tellraw @a [{"text":"【討伐タイム "},{"score":{"name":"#mhdp_min","objective":"AsaMatrix"}},{"text":":"},{"score":{"name":"#mhdp_sec","objective":"AsaMatrix"}},{"text":"】"}]
execute if score #mhdp_sec AsaMatrix matches ..9 if score #mhdp_min AsaMatrix matches 10.. run tellraw @a [{"text":"【討伐タイム "},{"score":{"name":"#mhdp_min","objective":"AsaMatrix"}},{"text":":0"},{"score":{"name":"#mhdp_sec","objective":"AsaMatrix"}},{"text":"】"}]
execute if score #mhdp_sec AsaMatrix matches 10.. if score #mhdp_min AsaMatrix matches ..9 run tellraw @a [{"text":"【討伐タイム 0"},{"score":{"name":"#mhdp_min","objective":"AsaMatrix"}},{"text":":"},{"score":{"name":"#mhdp_sec","objective":"AsaMatrix"}},{"text":"】"}]
execute if score #mhdp_sec AsaMatrix matches ..9 if score #mhdp_min AsaMatrix matches ..9 run tellraw @a [{"text":"【討伐タイム 0"},{"score":{"name":"#mhdp_min","objective":"AsaMatrix"}},{"text":":0"},{"score":{"name":"#mhdp_sec","objective":"AsaMatrix"}},{"text":"】"}]
scoreboard players reset #mhdp_sec
scoreboard players reset #mhdp_min

# タグ消去
tag @e[tag=TeoTarget] remove TeoTarget
tag @e[tag=TeoAttackTarget] remove TeoAttackTarget

# パーティクル
execute at @e[type=armor_stand,tag=TeoParts] run particle poof ~ ~1 ~ 1 1 1 0 30

# アイテムドロップ
execute positioned ~ ~5 ~ run function asa_animator:teo/manager/loot

# 進捗達成
advancement grant @a[distance=0..64] only mh_dp:trophies/root_hard
advancement grant @a[distance=0..64] only mh_dp:trophies/teo
data modify storage mh_dp:status Monster.Win.Teo set value true

# 当たり判定削除
function asa_animator:teo/manager/health/kill

# ボスバー削除
bossbar remove asa_animator:teo_health

# パーツ削除
function asa_animator:teo/kill