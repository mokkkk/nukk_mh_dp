
# HPセット
    scoreboard players set #mhdp_brachy_health AsaMatrix 45000
# HP倍率適用
    scoreboard players operation #mhdp_brachy_health AsaMatrix *= #mhdp_hp_multiply AsaMatrix
    execute store result score #mhdp_brachy_head_damage AsaMatrix store result score #mhdp_brachy_arml_damage AsaMatrix store result score #mhdp_brachy_armr_damage AsaMatrix store result score #mhdp_brachy_tail_damage AsaMatrix store result score #mhdp_brachy_anger_damage_max AsaMatrix run scoreboard players operation #mhdp_brachy_health AsaMatrix /= #asam_const_100 AsaMatrix

# ボスバー設定
    bossbar add asa_animator:brachy_health [{"text": "砕竜"},{"text":"\uE000","font":"mhdp"}]
    execute store result bossbar asa_animator:brachy_health max run scoreboard players get #mhdp_brachy_health AsaMatrix
    bossbar set asa_animator:brachy_health players @a
    bossbar set asa_animator:brachy_health visible true
    execute store result bossbar asa_animator:brachy_health value run scoreboard players get #mhdp_brachy_health AsaMatrix

# 部位耐久値
    ## 頭：25%
    scoreboard players set #mhdp_const_temp AsaMatrix 25
    scoreboard players operation #mhdp_brachy_head_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_brachy_head_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 腕，尻尾：20%
    scoreboard players set #mhdp_const_temp AsaMatrix 20
    scoreboard players operation #mhdp_brachy_arml_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    execute store result score #mhdp_brachy_armr_damage AsaMatrix store result score #mhdp_brachy_tail_damage AsaMatrix run scoreboard players operation #mhdp_brachy_arml_damage AsaMatrix /= #asam_const_100 AsaMatrix
# 怒り
    ## 15%
    scoreboard players set #mhdp_const_temp AsaMatrix 15
    scoreboard players operation #mhdp_brachy_anger_damage_max AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_brachy_anger_damage_max AsaMatrix /= #asam_const_100 AsaMatrix

# 初期化
    scoreboard players set #mhdp_brachy_kill_timer AsaMatrix 0
    scoreboard players set #mhdp_brachy_bomb_count AsaMatrix 0
    scoreboard players operation #mhdp_brachy_anger_damage AsaMatrix = #mhdp_brachy_anger_damage_max AsaMatrix

# 終了
scoreboard players reset #mhdp_const_temp