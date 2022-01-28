

# HPセット
    scoreboard players set #mhdp_reus_health AsaMatrix 50000
# HP倍率適用
    scoreboard players operation #mhdp_reus_health AsaMatrix *= #mhdp_hp_multiply AsaMatrix
    execute store result score #mhdp_reus_head_damage AsaMatrix store result score #mhdp_reus_body_damage AsaMatrix store result score #mhdp_reus_tail_damage AsaMatrix store result score #mhdp_reus_anger_damage_max AsaMatrix store result score #mhdp_reus_flying_damage_max AsaMatrix store result score #mhdp_reus_anger_damage_max AsaMatrix run scoreboard players operation #mhdp_reus_health AsaMatrix /= #asam_const_100 AsaMatrix

# ボスバー設定
    bossbar add asa_animator:reus_health [{"text": "火竜"},{"text":"\uE000","font":"mhdp"}]
    execute store result bossbar asa_animator:reus_health max run scoreboard players get #mhdp_reus_health AsaMatrix
    bossbar set asa_animator:reus_health players @a
    bossbar set asa_animator:reus_health visible true
    execute store result bossbar asa_animator:reus_health value run scoreboard players get #mhdp_reus_health AsaMatrix

# 部位耐久値
    ## 頭：20%
    scoreboard players set #mhdp_const_temp AsaMatrix 20
    scoreboard players operation #mhdp_reus_head_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_reus_head_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 胴：20%
    scoreboard players set #mhdp_const_temp AsaMatrix 20
    scoreboard players operation #mhdp_reus_body_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_reus_body_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 尻尾：25%
    scoreboard players set #mhdp_const_temp AsaMatrix 25
    scoreboard players operation #mhdp_reus_tail_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_reus_tail_damage AsaMatrix /= #asam_const_100 AsaMatrix
# 特殊怯み
    ## 20%
    scoreboard players set #mhdp_const_temp AsaMatrix 20
    scoreboard players operation #mhdp_reus_flying_damage_max AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_reus_flying_damage_max AsaMatrix /= #asam_const_100 AsaMatrix
# 怒り
    ## 20%
    scoreboard players set #mhdp_const_temp AsaMatrix 20
    scoreboard players operation #mhdp_reus_anger_damage_max AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_reus_anger_damage_max AsaMatrix /= #asam_const_100 AsaMatrix

# 初期化
    scoreboard players set #mhdp_reus_kill_timer AsaMatrix 0
    scoreboard players operation #mhdp_reus_flying_damage AsaMatrix = #mhdp_reus_flying_damage_max AsaMatrix
    scoreboard players operation #mhdp_reus_anger_damage AsaMatrix = #mhdp_reus_anger_damage_max AsaMatrix

# 終了
    scoreboard players reset #mhdp_const_temp