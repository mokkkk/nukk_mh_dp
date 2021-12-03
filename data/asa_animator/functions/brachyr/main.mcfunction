
# タイマー増加
# scoreboard players add #mhdp_brachy_kill_timer AsaMatrix 1

# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:brachy/manager/change

# 待機
execute if predicate asa_animator:brachyr/stay run function asa_animator:brachyr/anim/stay/main
# 行動
execute unless predicate asa_animator:brachyr/stay run function asa_animator:brachyr/anim/main

# 当たり判定位置
# execute as @e[type=slime,tag=BrachyParts] run function asa_animator:brachy/manager/health/pos

# デスポーン
# execute unless entity @s[tag=AnmSummon] unless entity @a[distance=0..64] run function asa_animator:brachy/manager/despawn