
# 遭遇履歴更新
    execute store result score #mhdp_const_temp AsaMatrix run data get storage mh_dp:status Monster.Count
    scoreboard players add #mhdp_const_temp AsaMatrix 1
    execute store result storage mh_dp:status Monster.Count int 1 run scoreboard players get #mhdp_const_temp AsaMatrix
    data modify storage mh_dp:status Monster.Meet.Narga set value true

# HPセット
    execute if data storage mh_dp:settings Custom{QuestRank:0} run scoreboard players set #mhdp_narga_health AsaMatrix 45000
    execute if data storage mh_dp:settings Custom{QuestRank:1} run scoreboard players set #mhdp_narga_health AsaMatrix 65000
# HP倍率適用
    scoreboard players operation #mhdp_narga_health AsaMatrix *= #mhdp_hp_multiply AsaMatrix
    execute store result score #mhdp_narga_head_damage AsaMatrix store result score #mhdp_narga_arml_damage AsaMatrix store result score #mhdp_narga_tail_damage AsaMatrix store result score #mhdp_narga_anger_damage_max AsaMatrix run scoreboard players operation #mhdp_narga_health AsaMatrix /= #asam_const_100 AsaMatrix

# ボスバー設定
    bossbar add asa_animator:narga_health [{"text": "迅竜"},{"text":"\uE000","font":"mhdp"}]
    execute if data storage mh_dp:settings Custom{QuestRank:1} run bossbar set asa_animator:narga_health color red
    execute store result bossbar asa_animator:narga_health max run scoreboard players get #mhdp_narga_health AsaMatrix
    bossbar set asa_animator:narga_health players @a
    bossbar set asa_animator:narga_health visible true
    execute store result bossbar asa_animator:narga_health value run scoreboard players get #mhdp_narga_health AsaMatrix

# 部位耐久値
    ## 頭：18%
    scoreboard players set #mhdp_const_temp AsaMatrix 18
    scoreboard players operation #mhdp_narga_head_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_narga_head_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 腕：22%
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