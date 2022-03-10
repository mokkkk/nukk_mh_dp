
# OhMyDat更新
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Offhand.tag.CustomModelData set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Offhand.tag.MhdpStatus.OffModel
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Offhand.tag.MhdpStatus.IsOffhand set value true

# オフハンド用モデルに変更
    item modify entity @s weapon.offhand mh_dp:weapon/model_to_off

# 終了
    playsound item.armor.equip_iron master @s ~ ~ ~ 1 1