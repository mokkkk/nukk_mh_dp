
# タイマー増加
# scoreboard players add #mhdp_reus_kill_timer AsaMatrix 1

# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:zinogre/manager/change

# 待機
    execute if predicate asa_animator:zinogre/stay unless entity @s[tag=IsFlying] run function asa_animator:zinogre/anim/idle/main
# 軸合わせ
    # execute unless predicate asa_animator:zinogre/stay if entity @s[tag=AnmTurnL] run function asa_animator:zinogre/anim/turn_l/main
    # execute unless predicate asa_animator:zinogre/stay if entity @s[tag=AnmTurnR] run function asa_animator:zinogre/anim/turn_r/main
# 行動
    execute unless predicate asa_animator:zinogre/stay unless entity @s[tag=IsTurn] run function asa_animator:zinogre/anim/main

# 当たり判定位置
    # execute as @e[type=slime,tag=ReusParts] run function asa_animator:zinogre/manager/health/pos

# 怒り時パーティクル
    # execute if entity @s[tag=IsAnger] at @e[type=armor_stand,tag=ReusParts,tag=HeadU] run particle smoke ^ ^1.3 ^0.7 0.3 0.3 0.3 0.01 1

# 超帯電時パーティクル
    execute if entity @s[tag=IsThunder] if predicate asa_animator:random/050 run particle end_rod ^ ^5 ^1.8 3 3 3 0 1
    execute if entity @s[tag=IsThunder] run particle dust 1 1000000000 1000000000 1.3 ^ ^5 ^1.8 0.6 0.6 0.6 0 10
    execute if entity @s[tag=IsThunder] run particle dust 1 1000000000 1000000000 1 ^ ^4 ^1.8 1.2 1.2 1.2 0 10

# デスポーン
    # execute unless entity @s[tag=AnmSummon] if data storage mh_dp:settings {Custom:{DisableDespawn:false}} unless entity @a[distance=0..64] run function asa_animator:zinogre/manager/despawn