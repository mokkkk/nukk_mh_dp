
# 切れ味取得
    execute store result score #mhdp_temp_sharp_current AsaMatrix run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus.SharpnessCurrent
    execute store result score #mhdp_temp_sharp_max AsaMatrix run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus.SharpnessMax
    execute if score #mhdp_temp_sharp_current AsaMatrix matches 1.. run scoreboard players remove #mhdp_temp_sharp_current AsaMatrix 1
    scoreboard players set #mhdp_temp_sharp_sum AsaMatrix 0

# 非匠の場合，切れ味を戻す
    execute unless entity @s[tag=CharmKushala] if score #mhdp_temp_sharp_current AsaMatrix > #mhdp_temp_sharp_max AsaMatrix store result score #mhdp_temp_sharp_current AsaMatrix run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus.SharpnessMax

# 色決定
    execute unless entity @s[tag=MhdpSharpEnd] run function mh_dp:weapon/attack/sharpness/0
    execute unless entity @s[tag=MhdpSharpEnd] run function mh_dp:weapon/attack/sharpness/1
    execute unless entity @s[tag=MhdpSharpEnd] run function mh_dp:weapon/attack/sharpness/2
    execute unless entity @s[tag=MhdpSharpEnd] run function mh_dp:weapon/attack/sharpness/3
    execute unless entity @s[tag=MhdpSharpEnd] run function mh_dp:weapon/attack/sharpness/4
    execute unless entity @s[tag=MhdpSharpEnd] run function mh_dp:weapon/attack/sharpness/5
    execute unless entity @s[tag=MhdpSharpEnd] run function mh_dp:weapon/attack/sharpness/6

# 通知
    execute store result score #mhdp_temp_sharp_color_data AsaMatrix run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus.SharpnessColor
    execute unless score #mhdp_temp_sharp_color AsaMatrix = #mhdp_temp_sharp_color_data AsaMatrix run function mh_dp:weapon/attack/sharpness/toast

# 更新
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus.SharpnessCurrent int 1 run scoreboard players get #mhdp_temp_sharp_current AsaMatrix
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus.SharpnessColor int 1 run scoreboard players get #mhdp_temp_sharp_color AsaMatrix
    item modify entity @s weapon.mainhand mh_dp:weapon/sharpness

# 終了
    tag @s remove MhdpSharpEnd
    scoreboard players reset #mhdp_temp_sharp
    scoreboard players reset #mhdp_temp_sharp_current
    scoreboard players reset #mhdp_temp_sharp_sum
    scoreboard players reset #mhdp_temp_sharp_color_data
    scoreboard players reset #mhdp_temp_sharp_color
    scoreboard players reset #mhdp_temp_sharp_max