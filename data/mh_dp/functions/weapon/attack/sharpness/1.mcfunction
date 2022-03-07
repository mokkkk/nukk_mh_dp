
# 色決定
    execute store result score #mhdp_temp_sharp AsaMatrix run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus.Sharpness[1]
    scoreboard players operation #mhdp_temp_sharp_sum AsaMatrix += #mhdp_temp_sharp AsaMatrix
    execute if score #mhdp_temp_sharp_current AsaMatrix < #mhdp_temp_sharp_sum AsaMatrix run tag @s add MhdpSharpEnd
    execute if entity @s[tag=MhdpSharpEnd] run scoreboard players set #mhdp_temp_sharp_color AsaMatrix 1
