
# HPセット
    scoreboard players set #mhdp_tiga_health AsaMatrix 52000
# HP倍率適用
    scoreboard players operation #mhdp_tiga_health AsaMatrix *= #mhdp_hp_multiply AsaMatrix
    execute store result score #mhdp_tiga_head_damage AsaMatrix store result score #mhdp_tiga_arml_damage AsaMatrix store result score #mhdp_tiga_tail_damage AsaMatrix store result score #mhdp_tiga_anger_damage_max AsaMatrix run scoreboard players operation #mhdp_tiga_health AsaMatrix /= #asam_const_100 AsaMatrix

# ボスバー設定
    bossbar add asa_animator:tiga_health [{"text": "轟竜"},{"text":"\uE000","font":"mhdp"}]
    execute store result bossbar asa_animator:tiga_health max run scoreboard players get #mhdp_tiga_health AsaMatrix
    bossbar set asa_animator:tiga_health players @a
    bossbar set asa_animator:tiga_health visible true
    execute store result bossbar asa_animator:tiga_health value run scoreboard players get #mhdp_tiga_health AsaMatrix

# 部位耐久値
    ## 頭：16%
    scoreboard players set #mhdp_const_temp AsaMatrix 16
    scoreboard players operation #mhdp_tiga_head_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_tiga_head_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 腕：18%
    scoreboard players set #mhdp_const_temp AsaMatrix 18
    scoreboard players operation #mhdp_tiga_arml_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    execute store result score #mhdp_tiga_armr_damage AsaMatrix run scoreboard players operation #mhdp_tiga_arml_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 尻尾：22%
    scoreboard players set #mhdp_const_temp AsaMatrix 22
    scoreboard players operation #mhdp_tiga_tail_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_tiga_tail_damage AsaMatrix /= #asam_const_100 AsaMatrix
# 怒り
    ## 25%
    scoreboard players set #mhdp_const_temp AsaMatrix 25
    scoreboard players operation #mhdp_tiga_anger_damage_max AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_tiga_anger_damage_max AsaMatrix /= #asam_const_100 AsaMatrix

# タイマーセット
    scoreboard players set #mhdp_tiga_kill_timer AsaMatrix 0
    scoreboard players set #mhdp_tiga_actcount AsaMatrix 8
    scoreboard players set #mhdp_tiga_anger_count AsaMatrix 0
    scoreboard players operation #mhdp_tiga_anger_damage AsaMatrix = #mhdp_tiga_anger_damage_max AsaMatrix

# 終了
    scoreboard players reset #mhdp_const_temp