
# タイマー増加
scoreboard players add #mhdp_reia_kill_timer AsaMatrix 1

# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:reia/manager/change

# 待機
execute if predicate asa_animator:reia/stay unless entity @s[tag=IsFlying] run function asa_animator:reia/anim/stay/main
# 軸合わせ
execute unless predicate asa_animator:reia/stay if entity @s[tag=AnmTurnL] run function asa_animator:reia/anim/turn_l/main
execute unless predicate asa_animator:reia/stay if entity @s[tag=AnmTurnR] run function asa_animator:reia/anim/turn_r/main
# 行動
execute unless predicate asa_animator:reia/stay unless entity @s[tag=IsTurn] run function asa_animator:reia/anim/main

# 当たり判定位置
execute as @e[type=slime,tag=ReiaParts] run function asa_animator:reia/manager/health/pos

# 怒り時パーティクル
execute if entity @s[tag=IsAnger] at @e[type=armor_stand,tag=ReiaParts,tag=HeadU] run particle smoke ^ ^1.3 ^0.7 0.3 0.3 0.3 0.01 1

# デスポーン
execute unless entity @s[tag=AnmSummon] if data storage mh_dp:settings {Custom:{DisableDespawn:false}} unless entity @a[distance=0..64] run function asa_animator:reia/manager/despawn