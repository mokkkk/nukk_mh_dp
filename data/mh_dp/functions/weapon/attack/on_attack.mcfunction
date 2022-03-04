
# 攻撃対象取得
    tag @s add this
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..150] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity run tag @s add Victim

# ダメージ計算
    execute as @e[type=#lib:living,tag=Victim] run function mh_dp:weapon/attack/damage/main

# 切れ味更新
    function mh_dp:weapon/attack/sharpness/main

# パーティクル
    execute if data storage mhdp: Temp.Weapon.tag.MhdpStatus{Type:1} as @e[type=#lib:living,tag=Victim] at @s positioned ~ ~1.2 ~ run function mh_dp:weapon/attack/particle/fire

# 終了
    tag @e[type=#lib:living,type=!player,tag=AttackedEntity] remove Victim
    tag @s remove this