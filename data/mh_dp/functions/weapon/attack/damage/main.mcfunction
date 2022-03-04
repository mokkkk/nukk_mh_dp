
# HP取得
    execute store result score #mhdp_temp_health AsaMatrix run data get entity @s Health 100

# ダメージ量取得
    scoreboard players set #mhdp_temp_damage AsaMatrix 100000
    scoreboard players operation #mhdp_temp_damage AsaMatrix -= #mhdp_temp_health AsaMatrix

# 切れ味補正適応
    execute if data storage mhdp: Temp.Weapon.tag.MhdpStatus{SharpnessColor:0} run scoreboard players set #mhdp_temp_multiply AsaMatrix 50
    execute if data storage mhdp: Temp.Weapon.tag.MhdpStatus{SharpnessColor:1} run scoreboard players set #mhdp_temp_multiply AsaMatrix 75
    execute if data storage mhdp: Temp.Weapon.tag.MhdpStatus{SharpnessColor:2} run scoreboard players set #mhdp_temp_multiply AsaMatrix 100
    execute if data storage mhdp: Temp.Weapon.tag.MhdpStatus{SharpnessColor:3} run scoreboard players set #mhdp_temp_multiply AsaMatrix 150
    execute if data storage mhdp: Temp.Weapon.tag.MhdpStatus{SharpnessColor:4} run scoreboard players set #mhdp_temp_multiply AsaMatrix 180
    execute if data storage mhdp: Temp.Weapon.tag.MhdpStatus{SharpnessColor:5} run scoreboard players set #mhdp_temp_multiply AsaMatrix 200
    execute if data storage mhdp: Temp.Weapon.tag.MhdpStatus{SharpnessColor:6} run scoreboard players set #mhdp_temp_multiply AsaMatrix 230
    scoreboard players operation #mhdp_temp_damage AsaMatrix *= #mhdp_temp_multiply AsaMatrix
    scoreboard players operation #mhdp_temp_damage AsaMatrix /= #asam_const_100 AsaMatrix
    

# HP適応
    scoreboard players set #mhdp_temp_health AsaMatrix 100000
    scoreboard players operation #mhdp_temp_health AsaMatrix -= #mhdp_temp_damage AsaMatrix
    execute store result entity @s Health float 0.01 run scoreboard players get #mhdp_temp_health AsaMatrix

# 終了
    scoreboard players reset #mhdp_temp_health
    scoreboard players reset #mhdp_temp_damage
    scoreboard players reset #mhdp_temp_multiply