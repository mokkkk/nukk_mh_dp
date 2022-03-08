
# 攻撃対象取得
    tag @s add this
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..150] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity run tag @s add Victim

# スキル効果取得
    execute if entity @s[tag=CharmReus] run data modify storage mhdp: Temp.Charm.Reus set value true

# ダメージ計算
    execute as @e[type=#lib:living,tag=Victim] run function mh_dp:weapon/attack/damage/main

# 切れ味更新
    function mh_dp:weapon/attack/sharpness/main

# パーティクル
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus{Type:1} as @e[type=#lib:living,tag=Victim] at @s positioned ~ ~1.2 ~ run function mh_dp:weapon/attack/particle/fire
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus{Type:2} as @e[type=#lib:living,tag=Victim] at @s positioned ~ ~1.2 ~ run function mh_dp:weapon/attack/particle/water
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus{Type:3} as @e[type=#lib:living,tag=Victim] at @s positioned ~ ~1.2 ~ run function mh_dp:weapon/attack/particle/thunder
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus{Type:4} as @e[type=#lib:living,tag=Victim] at @s positioned ~ ~1.2 ~ run function mh_dp:weapon/attack/particle/ice
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus{Type:5} as @e[type=#lib:living,tag=Victim] at @s positioned ~ ~1.2 ~ run function mh_dp:weapon/attack/particle/dragon

# 終了
    data remove storage mhdp: Temp.Charm
    tag @e[type=#lib:living,type=!player,tag=AttackedEntity] remove Victim
    tag @s remove this