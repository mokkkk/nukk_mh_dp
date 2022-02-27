
# タイマー増加
# scoreboard players add #mhdp_ruko_kill_timer AsaMatrix 1

# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:ruko/manager/change

# 待機
execute if predicate asa_animator:ruko/stay if entity @s[tag=IsStand] run function asa_animator:ruko/anim/stay_stand/main
execute if predicate asa_animator:ruko/stay unless entity @s[tag=IsStand] run function asa_animator:ruko/anim/stay/main
# 軸合わせ
# execute if entity @s[tag=AnmTurn,tag=!IsTurnRight] run function asa_animator:ruko/anim/turn_l/main
# execute if entity @s[tag=AnmTurn,tag=IsTurnRight] run function asa_animator:ruko/anim/turn_r/main
# 行動
execute unless entity @s[tag=AnmTurn] unless predicate asa_animator:ruko/stay run function asa_animator:ruko/anim/main

# パーティクル
# execute if score #mhdp_ruko_lv AsaMatrix matches 1.. run function asa_animator:ruko/anim/charge/events/particle

# 当たり判定位置
# execute unless entity @s[tag=IsAnger] as @e[type=slime,tag=RukoParts] run function asa_animator:ruko/manager/health/pos
# execute if entity @s[tag=IsAnger] as @e[type=slime,tag=RukoParts] run function asa_animator:ruko/manager/health/pos_anger

# デスポーン
# execute if data storage mh_dp:settings {Custom:{DisableDespawn:false}} unless entity @a[distance=0..64] run function asa_animator:ruko/manager/despawn

function asa_animator:ruko/anim/charge/events/particle