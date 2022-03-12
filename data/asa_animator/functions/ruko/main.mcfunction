
# タイマー増加
scoreboard players add #mhdp_ruko_kill_timer AsaMatrix 1

# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:ruko/manager/change

# 待機
execute if predicate asa_animator:ruko/stay if entity @s[tag=IsStand] run function asa_animator:ruko/anim/stay_stand/main
execute if predicate asa_animator:ruko/stay unless entity @s[tag=IsStand] run function asa_animator:ruko/anim/stay/main
# 軸合わせ
execute if entity @s[tag=AnmTurn] run function asa_animator:ruko/anim/turn/main
# 行動
execute unless entity @s[tag=AnmTurn] unless predicate asa_animator:ruko/stay run function asa_animator:ruko/anim/main

# パーティクル
execute unless entity @s[tag=IsFlying] if score #mhdp_ruko_lv AsaMatrix matches 1.. run function asa_animator:ruko/anim/charge/events/particle

# メテオ
execute if entity @e[type=marker,tag=RukoMeteoManager] as @e[type=marker,tag=RukoMeteoManager] run function asa_animator:ruko/anim/sp_attack_1/events/meteo/main_bullet
execute if entity @e[type=marker,tag=RukoMeteoShot] as @e[type=marker,tag=RukoMeteoShot] at @s run function asa_animator:ruko/anim/sp_attack_1/events/shot/main_bullet

# 当たり判定位置
execute as @e[type=slime,tag=RukoParts] run function asa_animator:ruko/manager/health/pos

# 画面効果
execute if score #mhdp_ruko_lv AsaMatrix matches 2.. run function asa_animator:ruko/manager/font/_

# デスポーン
execute if data storage mh_dp:settings {Custom:{DisableDespawn:false}} unless entity @a[distance=0..64] run function asa_animator:ruko/manager/despawn