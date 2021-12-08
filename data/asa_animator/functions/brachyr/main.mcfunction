
# タイマー増加
scoreboard players add #mhdp_brachyr_kill_timer AsaMatrix 1

# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:brachyr/manager/change

# 待機
execute if predicate asa_animator:brachyr/stay run function asa_animator:brachyr/anim/stay/main
# 行動
execute unless predicate asa_animator:brachyr/stay run function asa_animator:brachyr/anim/main

# 当たり判定位置
execute unless entity @s[tag=Phase2] as @e[type=slime,tag=BrachyRParts] run function asa_animator:brachyr/manager/health/pos
execute if entity @s[tag=Phase2] as @e[type=slime,tag=BrachyRParts] run function asa_animator:brachyr/manager/health/pos_rage

# デスポーン
execute unless entity @s[tag=AnmSummon] unless entity @a[distance=0..64] run function asa_animator:brachyr/manager/despawn