
# HP取得
    execute store result score #mhdp_temp_health AsaMatrix run data get entity @s Health 100

# ダメージ量取得
    scoreboard players set #mhdp_temp_damage AsaMatrix 100000
    execute store result score #mhdp_temp_damage_multiply AsaMatrix run scoreboard players operation #mhdp_temp_damage AsaMatrix -= #mhdp_temp_health AsaMatrix

# 実ダメージからダメージ倍率を計算 (攻撃力デフォルト6)
    scoreboard players set #mhdp_temp_multiply AsaMatrix 6
    scoreboard players operation #mhdp_temp_damage_multiply AsaMatrix /= #mhdp_temp_multiply AsaMatrix

# ダメージ量を表記ダメージに揃える
    execute store result score #mhdp_temp_damage_stat AsaMatrix run data get storage mhdp: Temp.Weapon.tag.MhdpStatus.Damage 100
    scoreboard players operation #mhdp_temp_damage_stat AsaMatrix *= #mhdp_temp_damage_multiply AsaMatrix
    execute store result score #mhdp_temp_damage AsaMatrix run scoreboard players operation #mhdp_temp_damage_stat AsaMatrix /= #asam_const_100 AsaMatrix

# 切れ味補正適応
    execute if data storage mhdp: Temp.Weapon.tag.MhdpStatus{SharpnessColor:0} run scoreboard players set #mhdp_temp_multiply AsaMatrix 50
    execute if data storage mhdp: Temp.Weapon.tag.MhdpStatus{SharpnessColor:1} run scoreboard players set #mhdp_temp_multiply AsaMatrix 75
    execute if data storage mhdp: Temp.Weapon.tag.MhdpStatus{SharpnessColor:2} run scoreboard players set #mhdp_temp_multiply AsaMatrix 100
    execute if data storage mhdp: Temp.Weapon.tag.MhdpStatus{SharpnessColor:3} run scoreboard players set #mhdp_temp_multiply AsaMatrix 120
    execute if data storage mhdp: Temp.Weapon.tag.MhdpStatus{SharpnessColor:4} run scoreboard players set #mhdp_temp_multiply AsaMatrix 140
    execute if data storage mhdp: Temp.Weapon.tag.MhdpStatus{SharpnessColor:5} run scoreboard players set #mhdp_temp_multiply AsaMatrix 160
    execute if data storage mhdp: Temp.Weapon.tag.MhdpStatus{SharpnessColor:6} run scoreboard players set #mhdp_temp_multiply AsaMatrix 180
    scoreboard players operation #mhdp_temp_damage AsaMatrix *= #mhdp_temp_multiply AsaMatrix
    scoreboard players operation #mhdp_temp_damage AsaMatrix /= #asam_const_100 AsaMatrix

# HP適応
    scoreboard players set #mhdp_temp_health AsaMatrix 100000
    scoreboard players operation #mhdp_temp_health AsaMatrix -= #mhdp_temp_damage AsaMatrix
    execute store result entity @s Health float 0.01 run scoreboard players get #mhdp_temp_health AsaMatrix

# 終了
    scoreboard players reset #mhdp_temp_health
    scoreboard players reset #mhdp_temp_damage
    scoreboard players reset #mhdp_temp_damage_multiply
    scoreboard players reset #mhdp_temp_multiply
    scoreboard players reset #mhdp_temp_damage_stat