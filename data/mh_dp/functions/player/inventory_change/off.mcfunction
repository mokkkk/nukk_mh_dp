
# 所持アイテム取得
    function oh_my_dat:please
    
    execute store result score #mhdp_temp_time AsaMatrix run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Time set from storage mh_dp:status Time
    execute if score #mhdp_temp_time AsaMatrix matches 1.. run function mh_dp:player/data/get_bothhand
    
# Mhdp武器を持っている場合，tag確認
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Offhand.tag.MhdpStatus{IsOffhand:false} run function mh_dp:player/inventory_change/off/model

# 終了
    advancement revoke @s only mh_dp:player/inventory_changed_off