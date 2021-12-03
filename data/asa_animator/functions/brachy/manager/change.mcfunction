
# タイマーリセット
scoreboard players set @s AsaMatrix 0

# 粘菌カウント増加
# scoreboard players add #mhdp_brachy_bomb_count AsaMatrix 2

# 怒りカウント増加
# execute if entity @s[tag=IsAnger] run scoreboard players add #mhdp_brachy_anger_count AsaMatrix 1
# execute if entity @s[tag=IsAnger] if score #mhdp_brachy_anger_count AsaMatrix matches 18.. run function asa_animator:brachyr/manager/model/change_to_normal

# 非コンボ時ターゲットリセット
execute if predicate asa_animator:brachyr/combo run function asa_animator:brachyr/manager/change_target

# 通常時
# execute if predicate asa_animator:brachyr/combo run function asa_animator:brachyr/manager/change_normal/change

# コンボ
# execute unless predicate asa_animator:brachyr/combo run function asa_animator:brachyr/manager/change_normal/combo/change

# 強制
tag @s add AnmUpper

# 終了
tag @s remove ChangeAnm