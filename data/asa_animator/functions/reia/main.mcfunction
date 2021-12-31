
# タイマー増加
scoreboard players add #mhdp_reia_kill_timer AsaMatrix 1

# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:reia/manager/change

# 待機
execute if predicate asa_animator:reia/stay unless entity @s[tag=IsFlying] run function asa_animator:reia/anim/stay/main
# 軸合わせ
execute unless predicate asa_animator:reia/stay if entity @s[tag=AnmTurn] run function asa_animator:reia/anim/turn/main
# 行動
execute unless predicate asa_animator:reia/stay unless entity @s[tag=AnmTurn] run function asa_animator:reia/anim/main

# 当たり判定位置
execute as @e[type=slime,tag=ReiaParts] run function asa_animator:reia/manager/health/pos

# デスポーン
execute unless entity @s[tag=AnmSummon] if data storage mh_dp:settings {Custom:{DisableDespawn:false}} unless entity @a[distance=0..64] run function asa_animator:reia/manager/despawn