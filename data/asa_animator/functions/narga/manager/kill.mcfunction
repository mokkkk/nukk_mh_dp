
# メッセージ
tellraw @a {"text": "【戦いに勝利した！】"}
# 討伐タイマー計算
scoreboard players remove #mhdp_narga_kill_timer AsaMatrix 70
execute store result score #mhdp_min AsaMatrix store result score #mhdp_sec AsaMatrix run scoreboard players get #mhdp_narga_kill_timer AsaMatrix
scoreboard players operation #mhdp_sec AsaMatrix %= #asam_const_min AsaMatrix
scoreboard players operation #mhdp_min AsaMatrix /= #asam_const_min AsaMatrix
scoreboard players operation #mhdp_sec AsaMatrix /= #asam_const_sec AsaMatrix

execute if score #mhdp_sec AsaMatrix matches 10.. if score #mhdp_min AsaMatrix matches 10.. run tellraw @a [{"text":"【討伐タイム "},{"score":{"name":"#mhdp_min","objective":"AsaMatrix"}},{"text":":"},{"score":{"name":"#mhdp_sec","objective":"AsaMatrix"}},{"text":"】"}]
execute if score #mhdp_sec AsaMatrix matches ..9 if score #mhdp_min AsaMatrix matches 10.. run tellraw @a [{"text":"【討伐タイム "},{"score":{"name":"#mhdp_min","objective":"AsaMatrix"}},{"text":":0"},{"score":{"name":"#mhdp_sec","objective":"AsaMatrix"}},{"text":"】"}]
execute if score #mhdp_sec AsaMatrix matches 10.. if score #mhdp_min AsaMatrix matches ..9 run tellraw @a [{"text":"【討伐タイム 0"},{"score":{"name":"#mhdp_min","objective":"AsaMatrix"}},{"text":":"},{"score":{"name":"#mhdp_sec","objective":"AsaMatrix"}},{"text":"】"}]
execute if score #mhdp_sec AsaMatrix matches ..9 if score #mhdp_min AsaMatrix matches ..9 run tellraw @a [{"text":"【討伐タイム 0"},{"score":{"name":"#mhdp_min","objective":"AsaMatrix"}},{"text":":0"},{"score":{"name":"#mhdp_sec","objective":"AsaMatrix"}},{"text":"】"}]

# タグ消去
tag @e[tag=NargaTarget] remove NargaTarget
tag @e[tag=NargaAttackTarget] remove NargaAttackTarget

# パーティクル
execute at @e[type=armor_stand,tag=NargaParts] run particle poof ~ ~1 ~ 1 1 1 0 30

# アイテムドロップ
execute positioned ~ ~5 ~ run function asa_animator:narga/manager/loot

# 進捗達成
advancement grant @a[distance=0..64] only mh_dp:trophies/root
advancement grant @a[distance=0..64] only mh_dp:trophies/narga
data modify storage mh_dp:status Monster.Win.Narga set value true

# 当たり判定削除
function asa_animator:narga/manager/health/kill

# ボスバー削除
bossbar remove asa_animator:narga_health

# パーツ削除
function asa_animator:narga/kill
kill @e[type=marker,tag=NargaAngerEye]