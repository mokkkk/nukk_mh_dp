
# 遭遇履歴更新
    execute store result score #mhdp_const_temp AsaMatrix run data get storage mh_dp:status Monster.Count
    scoreboard players add #mhdp_const_temp AsaMatrix 1
    execute store result storage mh_dp:status Monster.Count int 1 run scoreboard players get #mhdp_const_temp AsaMatrix
    data modify storage mh_dp:status Monster.Meet.BrachyR set value true

# HPセット
    scoreboard players set #mhdp_brachyr_health AsaMatrix 80000
# HP倍率適用
    scoreboard players operation #mhdp_brachyr_health AsaMatrix *= #mhdp_hp_multiply AsaMatrix
    execute store result score #mhdp_brachyr_head_damage AsaMatrix store result score #mhdp_brachyr_arml_damage AsaMatrix store result score #mhdp_brachyr_armr_damage AsaMatrix store result score #mhdp_brachyr_tail_damage AsaMatrix store result score #mhdp_brachyr_anger_damage_max AsaMatrix store result score #mhdp_brachyr_phase2_health AsaMatrix run scoreboard players operation #mhdp_brachyr_health AsaMatrix /= #asam_const_100 AsaMatrix
    scoreboard players operation #mhdp_brachyr_phase2_health AsaMatrix /= #asam_const_2 AsaMatrix

# ボスバー設定
    bossbar add asa_animator:brachyr_health [{"text": "砕竜"},{"text":"\uE000","font":"mhdp"}]
    execute store result bossbar asa_animator:brachyr_health max run scoreboard players get #mhdp_brachyr_health AsaMatrix
    bossbar set asa_animator:brachyr_health players @a
    bossbar set asa_animator:brachyr_health visible true
    execute store result bossbar asa_animator:brachyr_health value run scoreboard players get #mhdp_brachyr_health AsaMatrix

# 部位耐久値
    ## 頭：12%
    scoreboard players set #mhdp_const_temp AsaMatrix 12
    scoreboard players operation #mhdp_brachyr_head_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_brachyr_head_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 腕：15%
    scoreboard players set #mhdp_const_temp AsaMatrix 15
    scoreboard players operation #mhdp_brachyr_arml_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    execute store result score #mhdp_brachyr_armr_damage AsaMatrix run scoreboard players operation #mhdp_brachyr_arml_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 尻尾：13%
    scoreboard players set #mhdp_const_temp AsaMatrix 13
    scoreboard players operation #mhdp_brachyr_tail_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_brachyr_tail_damage AsaMatrix /= #asam_const_100 AsaMatrix
# 怒り
    ## 15%
    scoreboard players set #mhdp_const_temp AsaMatrix 15
    scoreboard players operation #mhdp_brachyr_anger_damage_max AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_brachyr_anger_damage_max AsaMatrix /= #asam_const_100 AsaMatrix

# 初期化
    scoreboard players set #mhdp_brachyr_kill_timer AsaMatrix 0
    scoreboard players set #mhdp_brachyr_act_count AsaMatrix 0
    scoreboard players set #mhdp_brachyr_head_active AsaMatrix 0
    scoreboard players set #mhdp_brachyr_arml_active AsaMatrix 0
    scoreboard players set #mhdp_brachyr_armr_active AsaMatrix 0
    scoreboard players set #mhdp_brachyr_tail_active AsaMatrix 0
    scoreboard players operation #mhdp_brachyr_anger_damage AsaMatrix = #mhdp_brachyr_anger_damage_max AsaMatrix

# 終了
scoreboard players reset #mhdp_const_temp