

# タイマーリセット
scoreboard players set @s AsaMatrix 0

# 非コンボ時ターゲットリセット
execute if predicate asa_animator:ruko/stay if predicate asa_animator:ruko/combo run function asa_animator:ruko/manager/change_target

# 行動
# execute if entity @e[tag=RukoAttackTarget] run function asa_animator:ruko/manager/change_act

# 軸合わせ
# execute if predicate asa_animator:ruko/combo unless predicate asa_animator:ruko/turn run function asa_animator:ruko/manager/change_normal/_/turn

# コンボ
# execute unless predicate asa_animator:ruko/combo run function asa_animator:ruko/manager/change_combo/change

# 怒り終了
# execute if entity @s[tag=IsAnger] if score #mhdp_ruko_anger_count AsaMatrix matches ..0 run function asa_animator:ruko/manager/end_anger

# 強制
# function asa_animator:ruko/manager/change_normal/_/claw
tag @s add AnmTurn

# 終了
tag @s remove ChangeAnm