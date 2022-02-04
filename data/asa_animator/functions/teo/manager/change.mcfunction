

# タイマーリセット
scoreboard players set @s AsaMatrix 0

# 非コンボ時ターゲットリセット
execute if predicate asa_animator:teo/stay if predicate asa_animator:teo/combo run function asa_animator:teo/manager/change_target

# 行動
# execute if entity @e[tag=TeoAttackTarget] run function asa_animator:teo/manager/change_act

# 軸合わせ
# execute if predicate asa_animator:teo/combo unless predicate asa_animator:teo/turn run function asa_animator:teo/manager/change_normal/_/turn

# 強制

# コンボ
execute unless predicate asa_animator:teo/combo run function asa_animator:teo/manager/change_combo/change

# 怒り終了
# execute if entity @s[tag=IsAnger] if score #mhdp_teo_anger_count AsaMatrix matches ..0 run function asa_animator:teo/manager/end_anger

# 強制
# tag @s add AnmBite
# execute as @e[tag=TeoRoot] run function asa_animator:teo/manager/change_combo/start_a

# 終了
tag @s remove ChangeAnm