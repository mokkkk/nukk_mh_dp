
# 所持アイテム取得
    execute unless entity @s[tag=MhdpPleased] run function oh_my_dat:please
    tag @s add MhdpPleased
    execute store result score #mhdp_temp_time AsaMatrix run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Time set from storage mh_dp:status Time
    execute if score #mhdp_temp_time AsaMatrix matches 1.. run function mh_dp:player/data/get_bothhand

# メインハンド or オフハンドを検知してアイテム置き換え
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag{MhdpCharm:16} run tag @s add Cleared
    execute if entity @s[tag=Cleared] run item replace entity @s weapon.mainhand with air
    execute unless entity @s[tag=Cleared] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Offhand.tag{MhdpCharm:16} run item replace entity @s weapon.offhand with air

    tag @s remove Cleared
