
# タイマー増加
# scoreboard players add #mhdp_tiga_kill_timer AsaMatrix 1

# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:tiga/manager/change

# 待機
execute if predicate asa_animator:tiga/stay run function asa_animator:tiga/anim/stay/main
# 行動
execute unless predicate asa_animator:tiga/stay unless entity @s[tag=IsAnger] run function asa_animator:tiga/anim/main
execute unless predicate asa_animator:tiga/stay if entity @s[tag=IsAnger] run function asa_animator:tiga/anim_anger/main

# 当たり判定位置
# execute as @e[type=slime,tag=TigaParts] run function asa_animator:tiga/manager/health/pos

# デスポーン
# execute unless entity @s[tag=AnmSummon] unless entity @a[distance=0..64] run function asa_animator:tiga/manager/despawn
