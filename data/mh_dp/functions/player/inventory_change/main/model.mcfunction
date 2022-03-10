
# OhMyDat更新
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.CustomModelData set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus.MainModel
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus.IsOffhand set value false
    
# メインハンド用モデルに変更
    item modify entity @s weapon.mainhand mh_dp:weapon/model_to_main

# 終了
    playsound item.armor.equip_iron master @s ~ ~ ~ 1 1

say update to main model