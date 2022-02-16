

# タイマーリセット
scoreboard players set @s AsaMatrix 0

# 非コンボ時ターゲットリセット
execute if predicate asa_animator:nazuti/stay if predicate asa_animator:nazuti/combo run function asa_animator:nazuti/manager/change_target

# 行動
# execute if entity @e[tag=NazutiAttackTarget] run function asa_animator:nazuti/manager/change_act

# 軸合わせ
# execute if predicate asa_animator:nazuti/combo unless predicate asa_animator:nazuti/turn run function asa_animator:nazuti/manager/change_normal/_/turn

# コンボ
# execute unless predicate asa_animator:nazuti/combo run function asa_animator:nazuti/manager/change_combo/change

# 怒り終了
# execute if entity @s[tag=IsAnger] if score #mhdp_nazuti_anger_count AsaMatrix matches ..0 run function asa_animator:nazuti/manager/end_anger

# 強制
tag @s add AnmWindS

# 終了
tag @s remove ChangeAnm