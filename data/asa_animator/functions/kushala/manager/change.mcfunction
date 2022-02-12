

# タイマーリセット
scoreboard players set @s AsaMatrix 0

# 非コンボ時ターゲットリセット
execute if predicate asa_animator:kushala/stay if predicate asa_animator:kushala/combo run function asa_animator:kushala/manager/change_target

# 行動
execute if entity @e[tag=KushalaAttackTarget] run function asa_animator:kushala/manager/change_act

# 軸合わせ
execute if predicate asa_animator:kushala/combo unless predicate asa_animator:kushala/turn run function asa_animator:kushala/manager/change_normal/_/turn

# コンボ
execute unless predicate asa_animator:kushala/combo run function asa_animator:kushala/manager/change_combo/change

# 怒り終了
execute if entity @s[tag=IsAnger] if score #mhdp_kushala_anger_count AsaMatrix matches ..0 run function asa_animator:kushala/manager/end_anger

# 強制
# function asa_animator:kushala/manager/change_normal/_/claw
# tag @s add AnmFlyBreath

# 終了
tag @s remove ChangeAnm