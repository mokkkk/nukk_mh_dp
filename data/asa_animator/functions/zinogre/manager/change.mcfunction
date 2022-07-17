

# タイマーリセット
    scoreboard players set @s AsaMatrix 0

# 非コンボ時ターゲットリセット
    execute if predicate asa_animator:zinogre/stay if predicate asa_animator:zinogre/combo run function asa_animator:zinogre/manager/change_target

# 状態タグリセット
    tag @s remove IsHand3
    tag @s remove IsHandC2

# 行動
    execute if entity @e[tag=zinogreAttackTarget] run function asa_animator:zinogre/manager/change_act

# 軸合わせ
    # execute if predicate asa_animator:zinogre/combo unless predicate asa_animator:zinogre/turn run tag @s add AnmTurn

# コンボ
    execute unless predicate asa_animator:zinogre/combo run function asa_animator:zinogre/manager/change_combo/change

# 怒り終了
    # execute if entity @s[tag=IsAnger] if score #mhdp_zinogre_anger_count AsaMatrix matches ..0 run function asa_animator:zinogre/manager/end_anger

# 強制
    # execute as @e[tag=ZinogreRoot] run function asa_animator:zinogre/manager/change_combo/start_tb
    function asa_animator:zinogre/manager/change_normal/_/tackle
    # tag @s add AnmTailB

# 終了
    tag @s remove ChangeAnm