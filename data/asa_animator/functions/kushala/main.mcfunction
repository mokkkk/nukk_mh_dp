
# タイマー増加
# scoreboard players add #mhdp_kushala_kill_timer AsaMatrix 1

# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:kushala/manager/change

# 待機
execute if predicate asa_animator:kushala/stay run function asa_animator:kushala/anim/stay/main
# 軸合わせ
# execute if entity @s[tag=AnmTurnL] run function asa_animator:kushala/anim/turn_l/main
# execute if entity @s[tag=AnmTurnR] run function asa_animator:kushala/anim/turn_r/main
# 行動
execute unless entity @s[tag=IsTurn] unless predicate asa_animator:kushala/stay run function asa_animator:kushala/anim/main

# 当たり判定位置
# execute as @e[type=slime,tag=KushalaParts] run function asa_animator:kushala/manager/health/pos

# デスポーン
# execute unless entity @s[tag=AnmSummon] if data storage mh_dp:settings {Custom:{DisableDespawn:false}} unless entity @a[distance=0..64] run function asa_animator:kushala/manager/despawn