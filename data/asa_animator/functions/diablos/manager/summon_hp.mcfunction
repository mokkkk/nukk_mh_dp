
# HPセット
    execute if data storage mh_dp:settings Custom{QuestRank:0} run scoreboard players set #mhdp_diablos_health AsaMatrix 55000
    execute if data storage mh_dp:settings Custom{QuestRank:1} run scoreboard players set #mhdp_diablos_health AsaMatrix 75000
# HP倍率適用
    scoreboard players operation #mhdp_diablos_health AsaMatrix *= #mhdp_hp_multiply AsaMatrix
    execute store result score #mhdp_diablos_head_damage AsaMatrix store result score #mhdp_diablos_body_damage AsaMatrix store result score #mhdp_diablos_tail_damage AsaMatrix store result score #mhdp_diablos_anger_damage_max AsaMatrix run scoreboard players operation #mhdp_diablos_health AsaMatrix /= #asam_const_100 AsaMatrix

# ボスバー設定
    bossbar add asa_animator:diablos_health [{"text": "角竜"},{"text":"\uE000","font":"mhdp"}]
    execute if data storage mh_dp:settings Custom{QuestRank:1} run bossbar set asa_animator:diablos_health color red
    execute store result bossbar asa_animator:diablos_health max run scoreboard players get #mhdp_diablos_health AsaMatrix
    bossbar set asa_animator:diablos_health players @a
    bossbar set asa_animator:diablos_health visible true
    execute store result bossbar asa_animator:diablos_health value run scoreboard players get #mhdp_diablos_health AsaMatrix

# 部位耐久値
    ## 頭：25%
    scoreboard players set #mhdp_const_temp AsaMatrix 25
    scoreboard players operation #mhdp_diablos_head_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_diablos_head_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 胴：20%
    scoreboard players set #mhdp_const_temp AsaMatrix 20
    scoreboard players operation #mhdp_diablos_body_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_diablos_body_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 尻尾：23%
    scoreboard players set #mhdp_const_temp AsaMatrix 23
    scoreboard players operation #mhdp_diablos_tail_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_diablos_tail_damage AsaMatrix /= #asam_const_100 AsaMatrix
# 怒り
    ## 20%
    scoreboard players set #mhdp_const_temp AsaMatrix 20
    scoreboard players operation #mhdp_diablos_anger_damage_max AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_diablos_anger_damage_max AsaMatrix /= #asam_const_100 AsaMatrix

# 初期化
    scoreboard players set #mhdp_diablos_kill_timer AsaMatrix 0
    scoreboard players operation #mhdp_diablos_anger_damage AsaMatrix = #mhdp_diablos_anger_damage_max AsaMatrix

# 終了
    scoreboard players reset #mhdp_const_temp