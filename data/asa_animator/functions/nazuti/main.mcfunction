
# タイマー増加
# scoreboard players add #mhdp_nazuti_kill_timer AsaMatrix 1

# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:nazuti/manager/change

# function asa_animator:nazuti/anim/stay/main

# 待機
# execute if predicate asa_animator:nazuti/stay if entity @s[tag=IsStand] run function asa_animator:nazuti/anim/stay_stand/main
execute if predicate asa_animator:nazuti/stay run function asa_animator:nazuti/anim/stay/main
# 軸合わせ
# execute if entity @s[tag=AnmTurn,tag=!IsFlying] run function asa_animator:nazuti/anim/turn/main
# execute if entity @s[tag=AnmTurn,tag=IsFlying] run function asa_animator:nazuti/anim/flying_turn/main
# 行動
execute unless entity @s[tag=AnmTurn] unless predicate asa_animator:nazuti/stay run function asa_animator:nazuti/anim/main

# パーティクル
# execute if score #mhdp_nazuti_lv AsaMatrix matches 1 run particle cloud ~ ~2 ~ 1.5 1.5 1.5 0.2 2
# execute if score #mhdp_nazuti_lv AsaMatrix matches 2 run particle large_smoke ~ ~2 ~ 1.5 1.5 1.5 0.3 2

# 当たり判定位置
# execute if entity @s[tag=!IsAnger] as @e[type=slime,tag=NazutiParts] run function asa_animator:nazuti/manager/health/pos
# execute if entity @s[tag=IsAnger] as @e[type=slime,tag=NazutiParts] run function asa_animator:nazuti/manager/health/pos_anger

# デスポーン
# execute unless entity @s[tag=AnmSummon] if data storage mh_dp:settings {Custom:{DisableDespawn:false}} unless entity @a[distance=0..64] run function asa_animator:nazuti/manager/despawn