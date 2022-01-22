
# HPセット
    scoreboard players set #mhdp_kushala_health AsaMatrix 80000
# HP倍率適用
    scoreboard players operation #mhdp_kushala_health AsaMatrix *= #mhdp_hp_multiply AsaMatrix
    execute store result score #mhdp_kushala_head_damage AsaMatrix store result score #mhdp_kushala_body_damage AsaMatrix store result score #mhdp_kushala_tail_damage AsaMatrix store result score #mhdp_kushala_sp_damage_max AsaMatrix store result score #mhdp_kushala_anger_damage_max AsaMatrix run scoreboard players operation #mhdp_kushala_health AsaMatrix /= #asam_const_100 AsaMatrix

# ボスバー設定
    bossbar add asa_animator:kushala_health {"text": "鋼竜"}
    execute store result bossbar asa_animator:kushala_health max run scoreboard players get #mhdp_kushala_health AsaMatrix
    bossbar set asa_animator:kushala_health players @a
    bossbar set asa_animator:kushala_health visible true
    execute store result bossbar asa_animator:kushala_health value run scoreboard players get #mhdp_kushala_health AsaMatrix

# 部位耐久値
    ## 頭：50%
    scoreboard players set #mhdp_const_temp AsaMatrix 50
    scoreboard players operation #mhdp_kushala_head_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_kushala_head_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 胴：20%
    scoreboard players set #mhdp_const_temp AsaMatrix 20
    scoreboard players operation #mhdp_kushala_body_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_kushala_body_damage AsaMatrix /= #asam_const_100 AsaMatrix
    ## 尻尾：25%
    scoreboard players set #mhdp_const_temp AsaMatrix 25
    scoreboard players operation #mhdp_kushala_tail_damage AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_kushala_tail_damage AsaMatrix /= #asam_const_100 AsaMatrix
# 特殊怯み
    ## 35%
    scoreboard players set #mhdp_const_temp AsaMatrix 35
    scoreboard players operation #mhdp_kushala_sp_damage_max AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_kushala_sp_damage_max AsaMatrix /= #asam_const_100 AsaMatrix
# 怒り
    ## 15%
    scoreboard players set #mhdp_const_temp AsaMatrix 15
    scoreboard players operation #mhdp_kushala_anger_damage_max AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_kushala_anger_damage_max AsaMatrix /= #asam_const_100 AsaMatrix

# 初期化
    scoreboard players set #mhdp_kushala_kill_timer AsaMatrix 0
    scoreboard players set #mhdp_kushala_actcount AsaMatrix 6
    scoreboard players set #mhdp_kushala_lv AsaMatrix 0
    scoreboard players operation #mhdp_kushala_sp_damage AsaMatrix = #mhdp_kushala_sp_damage_max AsaMatrix
    scoreboard players operation #mhdp_kushala_anger_damage AsaMatrix = #mhdp_kushala_anger_damage_max AsaMatrix

# 終了
scoreboard players reset #mhdp_const_temp

# 天候変化
execute unless data storage mh_dp:settings {Temp:{AwaitDwc:true}} store result storage mh_dp:settings Temp.Dwc int 1 run gamerule doWeatherCycle
execute unless data storage mh_dp:settings {Temp:{AwaitDwc:true}} run data modify storage mh_dp:settings Temp.AwaitDwc set value true
gamerule doWeatherCycle false
weather rain