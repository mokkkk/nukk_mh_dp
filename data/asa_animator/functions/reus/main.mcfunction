
# タイマー増加
scoreboard players add #mhdp_reus_kill_timer AsaMatrix 1

# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:reus/manager/change

# 待機
execute if predicate asa_animator:reus/stay unless entity @s[tag=IsFlying] run function asa_animator:reus/anim/stay/main
# 飛行待機
execute if predicate asa_animator:reus/stay if entity @s[tag=IsFlying] run function asa_animator:reus/anim/flying_stay/main

# 軸合わせ
execute unless predicate asa_animator:reus/stay if entity @s[tag=AnmTurn] run function asa_animator:reus/anim/turn/main

# 行動
execute unless predicate asa_animator:reus/stay unless entity @s[tag=AnmTurn] run function asa_animator:reus/anim/main

# 当たり判定位置
execute as @e[type=slime,tag=ReusParts] run function asa_animator:reus/manager/health/pos

# デスポーン
execute unless entity @s[tag=AnmSummon] unless entity @a[distance=0..64] run function asa_animator:reus/manager/despawn