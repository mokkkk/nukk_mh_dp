
# 所持アイテム取得
    execute unless entity @s[tag=MhdpPleased] run function oh_my_dat:please
    
    execute store result score #mhdp_temp_time AsaMatrix run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Time set from storage mh_dp:status Time
    execute if score #mhdp_temp_time AsaMatrix matches 1.. run function mh_dp:player/data/get_mainhand
    
# Mhdp武器を持っている場合，weapon/attack/on_attack実行
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag{MhdpWeapon:1b} run function mh_dp:weapon/attack/on_attack

# 終了
    advancement revoke @s only mh_dp:player/attack_sword
