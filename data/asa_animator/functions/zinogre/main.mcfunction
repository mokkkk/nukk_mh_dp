
# タイマー増加
scoreboard players add #mhdp_zinogre_kill_timer AsaMatrix 1

# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:zinogre/manager/change

# 待機
    execute if predicate asa_animator:zinogre/stay run function asa_animator:zinogre/anim/idle/main
# 軸合わせ
    execute unless predicate asa_animator:zinogre/stay if entity @s[tag=AnmTurnL] run function asa_animator:zinogre/anim/turn_l/main
    execute unless predicate asa_animator:zinogre/stay if entity @s[tag=AnmTurnR] run function asa_animator:zinogre/anim/turn_r/main
# 行動
    execute unless predicate asa_animator:zinogre/stay unless entity @s[tag=IsTurn] run function asa_animator:zinogre/anim/main

# 当たり判定位置
    execute as @e[type=slime,tag=ZinogreParts] run function asa_animator:zinogre/manager/health/pos

# 超帯電時パーティクル
    execute if entity @s[tag=IsThunder,tag=!IsAnger] run function asa_animator:zinogre/manager/particle/thunder
    execute if entity @s[tag=IsAnger,tag=IsThunder] run function asa_animator:zinogre/manager/particle/anger

# デスポーン
    execute unless entity @s[tag=AnmSummon] if data storage mh_dp:settings {Custom:{DisableDespawn:false}} unless entity @a[distance=0..64] run function asa_animator:zinogre/manager/despawn
