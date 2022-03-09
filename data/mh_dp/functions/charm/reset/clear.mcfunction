
# 所持アイテム取得
    function oh_my_dat:please

    execute store result score #mhdp_temp_time AsaMatrix run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Time set from storage mh_dp:status Time
    execute if score #mhdp_temp_time AsaMatrix matches 1.. run function mh_dp:player/data/get_bothhand

# メインハンド or オフハンドを検知してアイテム置き換え
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag{MhdpCharm:1} run tag @s add Cleared
    execute if entity @s[tag=Cleared] run item replace entity @s weapon.mainhand with crossbow{display:{Name:'{"text":"無垢の護石","italic":false}',Lore:['{"text":"スキル：無し","italic":false}','{"text":"装備中の護石を取り外す．","italic":false}']},CustomModelData:10101,MhdpCharm:1,HideFlags:32,ChargedProjectiles:[{id:"minecraft:air",Count:1b},{},{}],Charged:1b}
    execute unless entity @s[tag=Cleared] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Offhand.tag{MhdpCharm:1} run item replace entity @s weapon.offhand with crossbow{display:{Name:'{"text":"無垢の護石","italic":false}',Lore:['{"text":"スキル：無し","italic":false}','{"text":"装備中の護石を取り外す．","italic":false}']},CustomModelData:10101,MhdpCharm:1,HideFlags:32,ChargedProjectiles:[{id:"minecraft:air",Count:1b},{},{}],Charged:1b}

    tag @s remove Cleared
