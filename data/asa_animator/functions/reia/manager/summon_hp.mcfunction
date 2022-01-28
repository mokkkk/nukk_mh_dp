


# HPセット
    scoreboard players set #mhdp_reia_health AsaMatrix 46000
# HP倍率適用
    scoreboard players operation #mhdp_reia_health AsaMatrix *= #mhdp_hp_multiply AsaMatrix
    execute store result score #mhdp_reia_head_damage AsaMatrix store result score #mhdp_reia_body_damage AsaMatrix store result score #mhdp_reia_tail_damage AsaMatrix store result score #mhdp_reia_anger_damage_max AsaMatrix store result score #mhdp_reia_anger_damage_max AsaMatrix run scoreboard players operation #mhdp_reia_health AsaMatrix /= #asam_const_100 AsaMatrix

# ボスバー設定
    bossbar add asa_animator:reia_health [{"text": "雌火竜"},{"text":"\uE000","font":"mhdp"}]
    execute store result bossbar asa_animator:reia_health max run scoreboard players get #mhdp_reia_health AsaMatrix
    bossbar set asa_animator:reia_health players @a
    bossbar set asa_animator:reia_health visible true
    execute store result bossbar asa_animator:reia_health value run scoreboard players get #mhdp_reia_health AsaMatrix

# 部位耐久値
    ## 頭：15%
    scoreboard players set #mhdp_const_temp AsaMatrix 15
    scoreboard players operation #mhdp_reia_head_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_reia_head_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 胴：20%
    scoreboard players set #mhdp_const_temp AsaMatrix 20
    scoreboard players operation #mhdp_reia_body_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_reia_body_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 尻尾：25%
    scoreboard players set #mhdp_const_temp AsaMatrix 25
    scoreboard players operation #mhdp_reia_tail_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_reia_tail_damage AsaMatrix /= #asam_const_100 AsaMatrix
# 怒り
    ## 20%
    scoreboard players set #mhdp_const_temp AsaMatrix 20
    scoreboard players operation #mhdp_reia_anger_damage_max AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_reia_anger_damage_max AsaMatrix /= #asam_const_100 AsaMatrix

# 初期化
    scoreboard players set #mhdp_reia_kill_timer AsaMatrix 0
    scoreboard players operation #mhdp_reia_anger_damage AsaMatrix = #mhdp_reia_anger_damage_max AsaMatrix

# 終了
    scoreboard players reset #mhdp_const_temp