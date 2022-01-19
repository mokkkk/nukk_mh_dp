
# タイマー増加
scoreboard players add #mhdp_kushala_kill_timer AsaMatrix 1

# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:kushala/manager/change

# 待機
execute if predicate asa_animator:kushala/stay if entity @s[tag=IsStand] run function asa_animator:kushala/anim/stay_stand/main
execute if predicate asa_animator:kushala/stay if entity @s[tag=!IsStand,tag=!IsFlying] run function asa_animator:kushala/anim/stay/main
execute if predicate asa_animator:kushala/stay if entity @s[tag=IsFlying,tag=!IsStand] run function asa_animator:kushala/anim/flying_stay/main
# 軸合わせ
execute if entity @s[tag=AnmTurn,tag=!IsFlying] run function asa_animator:kushala/anim/turn/main
execute if entity @s[tag=AnmTurn,tag=IsFlying] run function asa_animator:kushala/anim/flying_turn/main
# 行動
execute unless entity @s[tag=AnmTurn] unless predicate asa_animator:kushala/stay run function asa_animator:kushala/anim/main

# パーティクル
execute if score #mhdp_kushala_lv AsaMatrix matches 1 run particle cloud ~ ~2 ~ 1.5 1.5 1.5 0.2 2
execute if score #mhdp_kushala_lv AsaMatrix matches 2 run particle large_smoke ~ ~2 ~ 1.5 1.5 1.5 0.3 2

# 当たり判定位置
execute as @e[type=slime,tag=KushalaParts] run function asa_animator:kushala/manager/health/pos

# デスポーン
# execute unless entity @s[tag=AnmSummon] if data storage mh_dp:settings {Custom:{DisableDespawn:false}} unless entity @a[distance=0..64] run function asa_animator:kushala/manager/despawn