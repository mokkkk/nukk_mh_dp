
# 攻撃対象取得
    tag @s add this
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..150] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity run tag @s add Victim

# スキル効果取得
    execute if entity @s[tag=CharmReus] run data modify storage mhdp: Temp.Charm.Reus set value true
    execute if entity @s[tag=CharmDiablos] run data modify storage mhdp: Temp.Charm.Diablos set value true

# ダメージ計算
    execute as @e[type=#lib:living,tag=Victim] run function mh_dp:weapon/attack/damage/main

# 切れ味更新
    function mh_dp:weapon/attack/sharpness/main

# 終了
    data remove storage mhdp: Temp.Charm
    tag @e[type=#lib:living,type=!player,tag=AttackedEntity] remove Victim
    tag @s remove this