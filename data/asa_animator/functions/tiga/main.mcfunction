
# タイマー増加
# scoreboard players add #mhdp_dyno_kill_timer AsaMatrix 1

# アニメーション遷移
# execute if entity @s[tag=ChangeAnm] run function asa_animator:dyno/manager/change

# 待機
function asa_animator:tiga/anim/voice/main
# execute if predicate asa_animator:dyno/stay run function asa_animator:dyno/anim/stay/main
# 行動
# execute unless predicate asa_animator:dyno/stay run function asa_animator:dyno/anim/main

# 当たり判定位置
# execute as @e[type=slime,tag=DynoParts] run function asa_animator:dyno/manager/health/pos

# デスポーン
# execute unless entity @s[tag=AnmSummon] unless entity @a[distance=0..64] run function asa_animator:dyno/manager/despawn
