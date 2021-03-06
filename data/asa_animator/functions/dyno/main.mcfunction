
# タイマー増加
scoreboard players add #mhdp_dyno_kill_timer AsaMatrix 1

# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:dyno/manager/change

# 待機
execute if predicate asa_animator:dyno/stay run function asa_animator:dyno/anim/stay/main
# 行動
execute unless predicate asa_animator:dyno/stay run function asa_animator:dyno/anim/main

# 当たり判定位置
execute as @e[type=slime,tag=DynoParts,sort=arbitrary] run function asa_animator:dyno/manager/health/pos

# デスポーン
execute unless entity @s[tag=AnmSummon] if data storage mh_dp:settings {Custom:{DisableDespawn:false}} unless entity @a[distance=0..64] run function asa_animator:dyno/manager/despawn

# 怒りパーティクル
execute if entity @s[tag=IsAnger] as @e[type=armor_stand,tag=DynoParts,tag=HeadU,distance=0..15] at @s positioned ^ ^1 ^0.5 run particle large_smoke ~ ~ ~ 0.2 0.2 0.2 0.05 1
# 赤熱化パーティクル
execute if entity @s[tag=IsHeatHead] as @e[type=armor_stand,tag=DynoParts,tag=HeadU,distance=0..15] at @s positioned ^ ^1 ^0.5 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.05 1
execute if entity @s[tag=IsHeatTail] as @e[type=armor_stand,tag=DynoParts,tag=Tail3,distance=0..15] at @s positioned ^ ^1 ^-1 run particle flame ~ ~ ~ 0.7 0.7 0.7 0.05 1
execute if entity @s[tag=IsHeatTail] as @e[type=armor_stand,tag=DynoParts,tag=Tail3,distance=0..15] at @s positioned ^ ^1 ^-3 run particle flame ~ ~ ~ 0.7 0.7 0.7 0.05 1