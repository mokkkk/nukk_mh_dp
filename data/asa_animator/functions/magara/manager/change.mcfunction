

# タイマーリセット
    scoreboard players set @s AsaMatrix 0

# 非コンボ時ターゲットリセット
    execute if predicate asa_animator:magara/stay run function asa_animator:magara/manager/change_target
    # execute if predicate asa_animator:magara/stay if predicate asa_animator:magara/combo run function asa_animator:magara/manager/change_target

# 状態タグリセット
#     function asa_animator:magara/manager/remove_state_tag

# 行動
#     execute if entity @e[tag=magaraAttackTarget] run function asa_animator:magara/manager/change_act

# 軸合わせ
#     execute if predicate asa_animator:magara/combo unless predicate asa_animator:magara/turn run function asa_animator:magara/manager/change_normal/_/turn_b

# コンボ
#     execute unless predicate asa_animator:magara/combo run function asa_animator:magara/manager/change_combo/change

# 怒り終了
#     execute if entity @s[tag=IsAnger] if score #mhdp_magara_anger_count AsaMatrix matches ..0 run function asa_animator:magara/manager/end_anger

# 強制
    tag @s add AnmDArmR
    # function asa_animator:magara/manager/change_normal/_/bite_turn

# 終了
    tag @s remove ChangeAnm
