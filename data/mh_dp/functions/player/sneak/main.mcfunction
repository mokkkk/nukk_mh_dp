
# 所持アイテム確認
    execute unless entity @s[tag=MhdpPleased] run function oh_my_dat:please
    tag @s add MhdpPleased
    execute store result score #mhdp_temp_time AsaMatrix run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Time set from storage mh_dp:status Time
    execute if score #mhdp_temp_time AsaMatrix matches 1.. run function mh_dp:player/data/get_mainhand

# Mhdp武器を持っている場合，weapon/sneak/main実行
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag{MhdpWeapon:1b} run function mh_dp:weapon/sneak/main
# Mhdp武器を持っていない場合，タイマーリセット
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag{MhdpWeapon:1b} run scoreboard players set @s MhdpTSneak 0

# 解除
    execute if entity @s[predicate=!mh_dp:player/stat/sneak] run function mh_dp:player/sneak/end