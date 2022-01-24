
# HPセット
    scoreboard players set #mhdp_narga_health AsaMatrix 45000
# HP倍率適用
    scoreboard players operation #mhdp_narga_health AsaMatrix *= #mhdp_hp_multiply AsaMatrix
    execute store result score #mhdp_narga_head_damage AsaMatrix store result score #mhdp_narga_arml_damage AsaMatrix store result score #mhdp_narga_tail_damage AsaMatrix store result score #mhdp_narga_anger_damage_max AsaMatrix run scoreboard players operation #mhdp_narga_health AsaMatrix /= #asam_const_100 AsaMatrix

# ボスバー設定
    bossbar add asa_animator:narga_health [{"text": "迅竜"},{"text":"\uE000","font":"mhdp"}]
    execute store result bossbar asa_animator:narga_health max run scoreboard players get #mhdp_narga_health AsaMatrix
    bossbar set asa_animator:narga_health players @a
    bossbar set asa_animator:narga_health visible true
    execute store result bossbar asa_animator:narga_health value run scoreboard players get #mhdp_narga_health AsaMatrix

# 部位耐久値
    ## 頭：18%
    scoreboard players set #mhdp_const_temp AsaMatrix 18
    scoreboard players operation #mhdp_narga_head_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_narga_head_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 胴：22%
    scoreboard players set #mhdp_const_temp AsaMatrix 22
    scoreboard players operation #mhdp_narga_arml_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    execute store result score #mhdp_narga_armr_damage AsaMatrix run scoreboard players operation #mhdp_narga_arml_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 尻尾：20%
    scoreboard players set #mhdp_const_temp AsaMatrix 20
    scoreboard players operation #mhdp_narga_tail_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_narga_tail_damage AsaMatrix /= #asam_const_100 AsaMatrix
# 怒り
    ## 25%
    scoreboard players set #mhdp_const_temp AsaMatrix 25
    scoreboard players operation #mhdp_narga_anger_damage_max AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_narga_anger_damage_max AsaMatrix /= #asam_const_100 AsaMatrix

# 初期化
    scoreboard players set #mhdp_narga_kill_timer AsaMatrix 0
    scoreboard players operation #mhdp_narga_anger_damage AsaMatrix = #mhdp_narga_anger_damage_max AsaMatrix

# 終了
    scoreboard players reset #mhdp_const_temp