
# 遭遇履歴更新
    execute store result score #mhdp_const_temp AsaMatrix run data get storage mh_dp:status Monster.Count
    scoreboard players add #mhdp_const_temp AsaMatrix 1
    execute store result storage mh_dp:status Monster.Count int 1 run scoreboard players get #mhdp_const_temp AsaMatrix
    data modify storage mh_dp:status Monster.Meet.Ruko set value true

# HPセット
    scoreboard players set #mhdp_ruko_health AsaMatrix 83000
# HP倍率適用
    scoreboard players operation #mhdp_ruko_health AsaMatrix *= #mhdp_hp_multiply AsaMatrix
    execute store result score #mhdp_ruko_head_damage AsaMatrix store result score #mhdp_ruko_body_damage AsaMatrix store result score #mhdp_ruko_tail_damage AsaMatrix store result score #mhdp_ruko_sp_damage_max AsaMatrix store result score #mhdp_ruko_anger_damage_max AsaMatrix run scoreboard players operation #mhdp_ruko_health AsaMatrix /= #asam_const_100 AsaMatrix

# ボスバー設定
    bossbar add asa_animator:ruko_health [{"text": "極龍"},{"text":"\uE000","font":"mhdp"}]
    bossbar set asa_animator:ruko_health color red
    execute store result bossbar asa_animator:ruko_health max run scoreboard players get #mhdp_ruko_health AsaMatrix
    bossbar set asa_animator:ruko_health players @a
    bossbar set asa_animator:ruko_health visible true
    execute store result bossbar asa_animator:ruko_health value run scoreboard players get #mhdp_ruko_health AsaMatrix

# 部位耐久値
    ## 頭：30%
    scoreboard players set #mhdp_const_temp AsaMatrix 30
    scoreboard players operation #mhdp_ruko_head_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_ruko_head_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 胴：25%
    scoreboard players set #mhdp_const_temp AsaMatrix 25
    scoreboard players operation #mhdp_ruko_body_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_ruko_body_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 尻尾：27%
    scoreboard players set #mhdp_const_temp AsaMatrix 27
    scoreboard players operation #mhdp_ruko_tail_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_ruko_tail_damage AsaMatrix /= #asam_const_100 AsaMatrix
# 特殊怯み
    ## 35%
    scoreboard players set #mhdp_const_temp AsaMatrix 35
    scoreboard players operation #mhdp_ruko_sp_damage_max AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_ruko_sp_damage_max AsaMatrix /= #asam_const_100 AsaMatrix
# 怒り
    ## 15%
    scoreboard players set #mhdp_const_temp AsaMatrix 15
    scoreboard players operation #mhdp_ruko_anger_damage_max AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_ruko_anger_damage_max AsaMatrix /= #asam_const_100 AsaMatrix

# 初期化
    scoreboard players set #mhdp_ruko_kill_timer AsaMatrix 0
    scoreboard players set #mhdp_ruko_actcount AsaMatrix 6
    scoreboard players set #mhdp_ruko_lv AsaMatrix 0
    scoreboard players operation #mhdp_ruko_sp_damage AsaMatrix = #mhdp_ruko_sp_damage_max AsaMatrix
    scoreboard players operation #mhdp_ruko_anger_damage AsaMatrix = #mhdp_ruko_anger_damage_max AsaMatrix

# 終了
scoreboard players reset #mhdp_const_temp