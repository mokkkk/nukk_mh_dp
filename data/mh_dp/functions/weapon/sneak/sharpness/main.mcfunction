
# 所持アイテム取得
    execute unless entity @s[tag=MhdpPleased] run function oh_my_dat:please
    tag @s add MhdpPleased
    execute store result score #mhdp_temp_time AsaMatrix run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Time set from storage mh_dp:status Time
    execute if score #mhdp_temp_time AsaMatrix matches 1.. run function mh_dp:player/data/get_mainhand

# 切れ味取得
    execute unless entity @s[tag=CharmKushala] store result score #mhdp_temp_sharp_current AsaMatrix run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus.SharpnessMax
    execute if entity @s[tag=CharmKushala] store result score #mhdp_temp_sharp_current AsaMatrix run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus.SharpnessMaxCharm
    scoreboard players set #mhdp_temp_sharp_sum AsaMatrix 0

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
    execute unless score #mhdp_temp_sharp_color AsaMatrix = #mhdp_temp_sharp_color_data AsaMatrix run function mh_dp:weapon/sneak/sharpness/toast

# 更新
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus.SharpnessCurrent int 1 run scoreboard players get #mhdp_temp_sharp_current AsaMatrix
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus.SharpnessColor int 1 run scoreboard players get #mhdp_temp_sharp_color AsaMatrix
    item modify entity @s weapon.mainhand mh_dp:weapon/sharpness

# 護石効果適応
    execute if entity @s[tag=CharmDyno,tag=!BlightDragon] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.CharmDynoTime set from storage mh_dp:status Time

# 終了
    playsound entity.arrow.hit_player master @s ~ ~ ~ 1 2
    tag @s remove MhdpSharpEnd
    scoreboard players reset #mhdp_temp_sharp
    scoreboard players reset #mhdp_temp_sharp_current
    scoreboard players reset #mhdp_temp_sharp_sum
    scoreboard players reset #mhdp_temp_sharp_color_data
    scoreboard players reset #mhdp_temp_sharp_color
    scoreboard players set @s MhdpTSneak 81

