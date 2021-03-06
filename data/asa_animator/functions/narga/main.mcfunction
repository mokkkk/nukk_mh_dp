
scoreboard players add #mhdp_narga_kill_timer AsaMatrix 1

# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:narga/manager/change

# 待機
execute if predicate asa_animator:narga/stay run function asa_animator:narga/anim/stay/main
# 通常時
execute unless predicate asa_animator:narga/stay unless entity @s[tag=AnmTurn] run function asa_animator:narga/anim/main

# 当たり判定位置
execute as @e[type=slime,tag=NargaParts] run function asa_animator:narga/manager/health/pos

# デスポーン
execute unless entity @s[tag=AnmSummon] if data storage mh_dp:settings {Custom:{DisableDespawn:false}} unless entity @a[distance=0..64] run function asa_animator:narga/manager/despawn

# 残光
execute if entity @s[tag=IsAnger] run function asa_animator:narga/manager/particle/anger