
scoreboard players add #mhdp_diablos_kill_timer AsaMatrix 1

# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:diablos/manager/change

# 待機
execute if predicate asa_animator:diablos/stay run function asa_animator:diablos/anim/stay/main
# 軸合わせ
execute if entity @s[tag=AnmTurnL] run function asa_animator:diablos/anim/turn_l/main
execute if entity @s[tag=AnmTurnR] run function asa_animator:diablos/anim/turn_r/main
# 行動
execute unless entity @s[tag=IsTurn] unless predicate asa_animator:diablos/stay unless entity @s[tag=IsAnger] run function asa_animator:diablos/anim/main
execute unless entity @s[tag=IsTurn] unless predicate asa_animator:diablos/stay if entity @s[tag=IsAnger] run function asa_animator:diablos/anim_anger/main

# 怒り時パーティクル
execute if entity @s[tag=IsAnger,tag=!InGround] at @e[type=armor_stand,tag=DiablosParts,tag=HeadU] run particle smoke ^ ^1.3 ^0.8 0.3 0.3 0.3 0.01 1

# 当たり判定位置
execute unless entity @s[tag=InGround] as @e[type=slime,tag=DiablosParts] run function asa_animator:diablos/manager/health/pos
execute if entity @s[tag=InGround] as @e[type=slime,tag=DiablosParts] run tp @s ~ ~30 ~

# デスポーン
execute unless entity @s[tag=AnmSummon] if data storage mh_dp:settings {Custom:{DisableDespawn:false}} unless entity @a[distance=0..64] run function asa_animator:diablos/manager/despawn