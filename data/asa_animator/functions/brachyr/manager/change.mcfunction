
# タイマーリセット
scoreboard players set @s AsaMatrix 0

# 粘菌カウント増加
execute unless entity @s[tag=Phase2] run function asa_animator:brachyr/manager/reactive/check

# 行動カウント増加
scoreboard players add #mhdp_brachyr_act_count AsaMatrix 1

# 非コンボ時ターゲットリセット
execute if predicate asa_animator:brachyr/combo run function asa_animator:brachyr/manager/change_target

# 通常時
execute if predicate asa_animator:brachyr/combo run function asa_animator:brachyr/manager/change_normal/change

# コンボ
execute unless predicate asa_animator:brachyr/combo run function asa_animator:brachyr/manager/change_normal/combo/change

# 終了
tag @s remove ChangeAnm