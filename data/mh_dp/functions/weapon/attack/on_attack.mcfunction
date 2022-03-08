
# 攻撃対象取得
    tag @s add this
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..150] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity run tag @s add Victim

# スキル効果取得
    execute if entity @s[tag=CharmReus,tag=!BlightDragon] run data modify storage mhdp: Temp.Charm.Reus set value true
    execute if entity @s[tag=CharmDiablos,tag=!BlightDragon] run data modify storage mhdp: Temp.Charm.Diablos set value true
    execute if entity @s[tag=CharmZinogre,tag=!BlightDragon] run data modify storage mhdp: Temp.Charm.Zinogre set value true
    execute if entity @s[tag=CharmBrachy,tag=!BlightDragon] if score @s MhdpHealth matches ..6 run data modify storage mhdp: Temp.Charm.Brachy set value true
    execute if entity @s[tag=CharmTeo,tag=!BlightDragon] run data modify storage mhdp: Temp.Charm.Teo set value true
    execute if entity @s[tag=CharmRuko,tag=!BlightDragon] run data modify storage mhdp: Temp.Charm.Ruko set value true
    execute if entity @s[tag=CharmBrachyR,tag=!BlightDragon] run data modify storage mhdp: Temp.Charm.Reus set value true
    execute if entity @s[tag=CharmBrachyR,tag=!BlightDragon] if score @s MhdpHealth matches ..6 run data modify storage mhdp: Temp.Charm.Brachy set value true

# スキル効果発動
    execute if entity @s[tag=CharmNazuti,tag=!BlightDragon] if predicate asa_animator:random/020 if entity @e[type=#lib:living,tag=Victim] run function mh_dp:charm/nazuti/on_attack

# ダメージ計算
    scoreboard players set #mhdp_temp_armor AsaMatrix 0
    execute as @e[type=#lib:living,tag=Victim] run function mh_dp:weapon/attack/damage/main

# 切れ味更新
    function mh_dp:weapon/attack/sharpness/main

# 終了
    data remove storage mhdp: Temp.Charm
    scoreboard players reset #mhdp_temp_armor
    tag @e[type=#lib:living,type=!player,tag=AttackedEntity] remove Victim
    tag @s remove this