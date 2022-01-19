

# タイマーリセット
scoreboard players set @s AsaMatrix 0

# 非コンボ時ターゲットリセット
execute if predicate asa_animator:kushala/combo run function asa_animator:kushala/manager/change_target

# 風纏い
# フェーズ変更

# function asa_animator:kushala/manager/change_combo/start_a

# 通常時
execute if predicate asa_animator:kushala/combo unless entity @s[tag=AnmCharge] run function asa_animator:kushala/manager/change_normal/change
# 飛行時
execute if predicate asa_animator:kushala/combo unless entity @s[tag=AnmCharge] run function asa_animator:kushala/manager/change_flying/change

# 軸合わせ
execute if predicate asa_animator:kushala/combo unless predicate asa_animator:kushala/turn run tag @s add AnmTurn

# コンボ
execute unless predicate asa_animator:kushala/combo unless entity @s[tag=AnmCharge] run function asa_animator:kushala/manager/change_combo/change

# 強制
# function asa_animator:kushala/manager/change_normal/_/claw
# tag @s add AnmCharge

# 終了
tag @s remove ChangeAnm