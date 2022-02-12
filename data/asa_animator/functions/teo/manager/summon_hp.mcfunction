
# HPセット
    scoreboard players set #mhdp_teo_health AsaMatrix 92000
# HP倍率適用
    scoreboard players operation #mhdp_teo_health AsaMatrix *= #mhdp_hp_multiply AsaMatrix
    execute store result score #mhdp_teo_head_damage AsaMatrix store result score #mhdp_teo_body_damage AsaMatrix store result score #mhdp_teo_tail_damage AsaMatrix store result score #mhdp_teo_sp_damage_max AsaMatrix store result score #mhdp_teo_anger_damage_max AsaMatrix run scoreboard players operation #mhdp_teo_health AsaMatrix /= #asam_const_100 AsaMatrix

# ボスバー設定
    bossbar add asa_animator:teo_health [{"text": "炎王龍"},{"text":"\uE000","font":"mhdp"}]
    bossbar set asa_animator:teo_health color red
    execute store result bossbar asa_animator:teo_health max run scoreboard players get #mhdp_teo_health AsaMatrix
    bossbar set asa_animator:teo_health players @a
    bossbar set asa_animator:teo_health visible true
    execute store result bossbar asa_animator:teo_health value run scoreboard players get #mhdp_teo_health AsaMatrix

# 部位耐久値
    ## 頭：45%
    scoreboard players set #mhdp_const_temp AsaMatrix 45
    scoreboard players operation #mhdp_teo_head_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_teo_head_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 胴：22%
    scoreboard players set #mhdp_const_temp AsaMatrix 22
    scoreboard players operation #mhdp_teo_body_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_teo_body_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 尻尾：20%
    scoreboard players set #mhdp_const_temp AsaMatrix 20
    scoreboard players operation #mhdp_teo_tail_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_teo_tail_damage AsaMatrix /= #asam_const_100 AsaMatrix
# 特殊怯み
    ## 30%
    scoreboard players set #mhdp_const_temp AsaMatrix 30
    scoreboard players operation #mhdp_teo_sp_damage_max AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_teo_sp_damage_max AsaMatrix /= #asam_const_100 AsaMatrix
# 怒り
    ## 20%
    scoreboard players set #mhdp_const_temp AsaMatrix 20
    scoreboard players operation #mhdp_teo_anger_damage_max AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_teo_anger_damage_max AsaMatrix /= #asam_const_100 AsaMatrix

# 初期化
    scoreboard players set #mhdp_teo_kill_timer AsaMatrix 0
    scoreboard players set #mhdp_teo_actcount AsaMatrix 6
    scoreboard players set #mhdp_teo_lv AsaMatrix 0
    scoreboard players operation #mhdp_teo_sp_damage AsaMatrix = #mhdp_teo_sp_damage_max AsaMatrix
    scoreboard players operation #mhdp_teo_anger_damage AsaMatrix = #mhdp_teo_anger_damage_max AsaMatrix

# 終了
scoreboard players reset #mhdp_const_temp