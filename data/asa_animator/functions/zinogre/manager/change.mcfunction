

# タイマーリセット
    scoreboard players set @s AsaMatrix 0

# 非コンボ時ターゲットリセット
    execute if predicate asa_animator:zinogre/stay if predicate asa_animator:zinogre/combo run function asa_animator:zinogre/manager/change_target

# 状態タグリセット
    function asa_animator:zinogre/manager/remove_state_tag

# 行動
    execute if entity @e[tag=ZinogreAttackTarget] run function asa_animator:zinogre/manager/change_act

# 軸合わせ
    execute if predicate asa_animator:zinogre/combo unless predicate asa_animator:zinogre/turn run function asa_animator:zinogre/manager/change_normal/_/turn_b

# コンボ
    execute unless predicate asa_animator:zinogre/combo run function asa_animator:zinogre/manager/change_combo/change

# 怒り終了
    execute if entity @s[tag=IsAnger] if score #mhdp_zinogre_anger_count AsaMatrix matches ..0 run function asa_animator:zinogre/manager/end_anger

# 強制
    # execute as @e[tag=ZinogreRoot] run function asa_animator:zinogre/manager/change_combo/start_tb
    # function asa_animator:zinogre/manager/change_normal/_/head
    # tag @s add AnmSClaw
    # tag @s add AnmDeath
    # function asa_animator:zinogre/manager/change_normal/_/turn_b

# 終了
    tag @s remove ChangeAnm