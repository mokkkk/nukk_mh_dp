
# タイマー増加
# scoreboard players add #mhdp_teo_kill_timer AsaMatrix 1

# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:teo/manager/change

# 待機
# execute if predicate asa_animator:teo/stay if entity @s[tag=IsStand] run function asa_animator:teo/anim/stay_stand/main
execute if predicate asa_animator:teo/stay if entity @s[tag=!IsStand,tag=!IsFlying] run function asa_animator:teo/anim/stay/main
execute if predicate asa_animator:teo/stay if entity @s[tag=IsFlying,tag=!IsStand] run function asa_animator:teo/anim/flying_stay/main
# 軸合わせ
# execute if entity @s[tag=AnmTurn,tag=!IsFlying] run function asa_animator:teo/anim/turn/main
# execute if entity @s[tag=AnmTurn,tag=IsFlying] run function asa_animator:teo/anim/flying_turn/main
# 行動
execute unless entity @s[tag=AnmTurn] unless predicate asa_animator:teo/stay run function asa_animator:teo/anim/main

# パーティクル
execute if entity @s[tag=IsFire] if score #mhdp_teo_lv AsaMatrix matches 1.. run particle small_flame ~ ~2 ~ 1.5 1.5 1.5 0 2
execute if entity @s[tag=IsFire] if score #mhdp_teo_lv AsaMatrix matches 2 run particle flame ~ ~2 ~ 1.5 1.5 1.5 0.1 4

# AECダメージ
execute if entity @s[tag=IsFire] if score #mhdp_teo_lv AsaMatrix matches 2 as @e[tag=!TeoParts,predicate=asa_animator:teo/effect,distance=0..40] at @s run function asa_animator:teo/anim/flame_ground/events/damage

# 当たり判定位置
# execute if entity @s[tag=!IsAnger] as @e[type=slime,tag=TeoParts] run function asa_animator:teo/manager/health/pos
# execute if entity @s[tag=IsAnger] as @e[type=slime,tag=TeoParts] run function asa_animator:teo/manager/health/pos_anger

# デスポーン
# execute unless entity @s[tag=AnmSummon] if data storage mh_dp:settings {Custom:{DisableDespawn:false}} unless entity @a[distance=0..64] run function asa_animator:teo/manager/despawn

# 画面エフェクト用メモ
# bossbar add test [{"text": "\uE002","font": "mhdp"},{"text": "\uF80B\uF823","font": "default"},{"text": "test","font": "default"}]
# bossbar set test name [{"text": "\uE002","font": "mhdp"},{"text": "\uF81B\uF833","font": "default"},{"text": "てすと","font": "default"}]