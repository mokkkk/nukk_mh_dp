
# 遭遇履歴更新
    execute store result score #mhdp_const_temp AsaMatrix run data get storage mh_dp:status Monster.Count
    scoreboard players add #mhdp_const_temp AsaMatrix 1
    execute store result storage mh_dp:status Monster.Count int 1 run scoreboard players get #mhdp_const_temp AsaMatrix
    data modify storage mh_dp:status Monster.Meet.Dyno set value true

# HPセット
    execute if data storage mh_dp:settings Custom{QuestRank:0} run scoreboard players set #mhdp_dyno_health AsaMatrix 52000
    execute if data storage mh_dp:settings Custom{QuestRank:1} run scoreboard players set #mhdp_dyno_health AsaMatrix 72000
# HP倍率適用
    scoreboard players operation #mhdp_dyno_health AsaMatrix *= #mhdp_hp_multiply AsaMatrix
    execute store result score #mhdp_dyno_head_damage AsaMatrix store result score #mhdp_dyno_legl_damage AsaMatrix store result score #mhdp_dyno_legr_damage AsaMatrix store result score #mhdp_dyno_tail_damage AsaMatrix store result score #mhdp_dyno_anger_damage_max AsaMatrix store result score #mhdp_dyno_head_heat_damage_max AsaMatrix run scoreboard players operation #mhdp_dyno_health AsaMatrix /= #asam_const_100 AsaMatrix

# ボスバー設定
    bossbar add asa_animator:dyno_health [{"text": "斬竜"},{"text":"\uE000","font":"mhdp"}]
    execute if data storage mh_dp:settings Custom{QuestRank:1} run bossbar set asa_animator:dyno_health color red
    execute store result bossbar asa_animator:dyno_health max run scoreboard players get #mhdp_dyno_health AsaMatrix
    bossbar set asa_animator:dyno_health players @a
    bossbar set asa_animator:dyno_health visible true
    execute store result bossbar asa_animator:dyno_health value run scoreboard players get #mhdp_dyno_health AsaMatrix

# 部位耐久値
    ## 頭：20%
    scoreboard players set #mhdp_const_temp AsaMatrix 20
    scoreboard players operation #mhdp_dyno_head_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_dyno_head_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 脚：17%
    scoreboard players set #mhdp_const_temp AsaMatrix 17
    scoreboard players operation #mhdp_dyno_legl_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    execute store result score #mhdp_dyno_legr_damage AsaMatrix run scoreboard players operation #mhdp_dyno_legl_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 尻尾：35%
    scoreboard players set #mhdp_const_temp AsaMatrix 35
    scoreboard players operation #mhdp_dyno_tail_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_dyno_tail_damage AsaMatrix /= #asam_const_100 AsaMatrix
# 特殊怯み
    ## 頭：20%
    scoreboard players set #mhdp_const_temp AsaMatrix 20
    scoreboard players operation #mhdp_dyno_head_heat_damage_max AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_dyno_head_heat_damage_max AsaMatrix /= #asam_const_100 AsaMatrix
# 怒り
    ## 20%
    scoreboard players set #mhdp_const_temp AsaMatrix 20
    scoreboard players operation #mhdp_dyno_anger_damage_max AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_dyno_anger_damage_max AsaMatrix /= #asam_const_100 AsaMatrix

# 初期化
    scoreboard players set #mhdp_dyno_kill_timer AsaMatrix 0
    scoreboard players set #mhdp_dyno_actcount_head AsaMatrix 0
    scoreboard players set #mhdp_dyno_actcount_tail AsaMatrix 0
    scoreboard players set #mhdp_dyno_actcount_generic AsaMatrix 0
    scoreboard players set #mhdp_dyno_kill_timer AsaMatrix 0
    scoreboard players operation #mhdp_dyno_head_heat_damage AsaMatrix = #mhdp_dyno_head_heat_damage_max AsaMatrix
    scoreboard players operation #mhdp_dyno_anger_damage AsaMatrix = #mhdp_dyno_anger_damage_max AsaMatrix

# 終了
    scoreboard players reset #mhdp_const_temp
