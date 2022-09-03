
# # タイマー増加
# scoreboard players add #mhdp_magara_kill_timer AsaMatrix 1
# 
# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:magara/manager/change

# 待機
execute if predicate asa_animator:magara/stay run function asa_animator:magara/anim/idle/main
# execute if predicate asa_animator:magara/stay run function asa_animator:magara/anim/stay/main
# 軸合わせ
# execute unless predicate asa_animator:magara/stay if entity @s[tag=AnmTurnL] run function asa_animator:magara/anim/turn_l/main
# execute unless predicate asa_animator:magara/stay if entity @s[tag=AnmTurnR] run function asa_animator:magara/anim/turn_r/main
# 行動
    # 通常
    execute unless predicate asa_animator:magara/stay unless entity @s[tag=IsTurn] run function asa_animator:magara/anim/main
    # 狂竜

# 当たり判定位置
# execute as @e[type=slime,tag=magaraParts] run function asa_animator:magara/manager/health/pos

# デスポーン
# execute unless entity @s[tag=AnmSummon] if data storage mh_dp:settings {Custom:{DisableDespawn:false}} unless entity @a[distance=0..64] run function asa_animator:magara/manager/despawn
