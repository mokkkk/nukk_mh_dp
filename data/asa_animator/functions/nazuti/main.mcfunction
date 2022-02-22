
# タイマー増加
# scoreboard players add #mhdp_nazuti_kill_timer AsaMatrix 1

# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:nazuti/manager/change

# function asa_animator:nazuti/anim/stay/main

# 待機
# execute if predicate asa_animator:nazuti/stay if entity @s[tag=IsStand] run function asa_animator:nazuti/anim/stay_stand/main
execute if predicate asa_animator:nazuti/stay run function asa_animator:nazuti/anim/stay/main
# 軸合わせ
execute if entity @s[tag=AnmTurn,tag=!IsTurnRight] run function asa_animator:nazuti/anim/turn_l/main
execute if entity @s[tag=AnmTurn,tag=IsTurnRight] run function asa_animator:nazuti/anim/turn_r/main
# 行動
execute unless entity @s[tag=AnmTurn] unless predicate asa_animator:nazuti/stay run function asa_animator:nazuti/anim/main

# パーティクル
execute unless entity @s[tag=IsInvisible2] if score #mhdp_nazuti_lv AsaMatrix matches 1.. run particle poof ~ ~2 ~ 2 1.5 2 0.05 1
execute if entity @s[tag=IsInvisible2] if score #mhdp_nazuti_lv AsaMatrix matches 1.. run particle dust 1 1 1 0.8 ~ ~2 ~ 2 1.5 2 0.05 1 force

# 当たり判定位置
execute as @e[type=slime,tag=NazutiParts] run function asa_animator:nazuti/manager/health/pos
# execute if entity @s[tag=IsAnger] as @e[type=slime,tag=NazutiParts] run function asa_animator:nazuti/manager/health/pos_anger

# 毒霧移動
execute if entity @e[type=marker,tag=NazutiPoisonMover] as @e[type=marker,tag=NazutiPoisonMover] run function asa_animator:nazuti/manager/poison/move

# デスポーン
# execute unless entity @s[tag=AnmSummon] if data storage mh_dp:settings {Custom:{DisableDespawn:false}} unless entity @a[distance=0..64] run function asa_animator:nazuti/manager/despawn