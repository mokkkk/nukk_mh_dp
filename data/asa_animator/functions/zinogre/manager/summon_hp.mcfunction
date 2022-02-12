

# HPセット
    execute if data storage mh_dp:settings Custom{QuestRank:0} run scoreboard players set #mhdp_zinogre_health AsaMatrix 45000
    execute if data storage mh_dp:settings Custom{QuestRank:1} run scoreboard players set #mhdp_zinogre_health AsaMatrix 65000
# HP倍率適用
    scoreboard players operation #mhdp_zinogre_health AsaMatrix *= #mhdp_hp_multiply AsaMatrix
    execute store result score #mhdp_zinogre_head_damage AsaMatrix store result score #mhdp_zinogre_arml_damage AsaMatrix store result score #mhdp_zinogre_tail_damage AsaMatrix run scoreboard players operation #mhdp_zinogre_health AsaMatrix /= #asam_const_100 AsaMatrix

# ボスバー設定
    bossbar add asa_animator:zinogre_health [{"text": "雷狼竜"},{"text":"\uE000","font":"mhdp"}]
    execute if data storage mh_dp:settings Custom{QuestRank:1} run bossbar set asa_animator:zinogre_health color red
    execute store result bossbar asa_animator:zinogre_health max run scoreboard players get #mhdp_zinogre_health AsaMatrix
    bossbar set asa_animator:zinogre_health players @a
    bossbar set asa_animator:zinogre_health visible true
    execute store result bossbar asa_animator:zinogre_health value run scoreboard players get #mhdp_zinogre_health AsaMatrix

# 部位耐久値
    ## 頭：20%
    scoreboard players set #mhdp_const_temp AsaMatrix 20
    scoreboard players operation #mhdp_zinogre_head_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_zinogre_head_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 腕：18%
    scoreboard players set #mhdp_const_temp AsaMatrix 18
    scoreboard players operation #mhdp_zinogre_arml_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    execute store result score #mhdp_zinogre_armr_damage AsaMatrix run scoreboard players operation #mhdp_zinogre_arml_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 尻尾：20%
    scoreboard players set #mhdp_const_temp AsaMatrix 20
    scoreboard players operation #mhdp_zinogre_tail_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_zinogre_tail_damage AsaMatrix /= #asam_const_100 AsaMatrix
# 怒り
    ## 25%
    # scoreboard players set #mhdp_const_temp AsaMatrix 25
    # scoreboard players operation #mhdp_zinogre_anger_damage_max AsaMatrix *= #mhdp_const_temp AsaMatrix
    # scoreboard players operation #mhdp_zinogre_anger_damage_max AsaMatrix /= #asam_const_100 AsaMatrix

# 初期化
    scoreboard players set #mhdp_zinogre_kill_timer AsaMatrix 0
    # scoreboard players operation #mhdp_zinogre_anger_damage AsaMatrix = #mhdp_zinogre_anger_damage_max AsaMatrix

# 終了
    scoreboard players reset #mhdp_const_temp
