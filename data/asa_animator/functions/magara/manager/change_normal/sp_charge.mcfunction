
# 状態取得
    execute if entity @e[tag=ZinogreAttackTarget,distance=0..15] run tag @s add IsNear
# ランダム
loot spawn ~ 0 ~ loot asa_animator:zinogre/charge
## 共通
    # 帯電
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmCharge
    # ヘッドバット始動コンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run function asa_animator:zinogre/manager/change_combo/start_ta
    # 突進始動コンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run function asa_animator:zinogre/manager/change_combo/start_tb
    # お手始動コンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run function asa_animator:zinogre/manager/change_combo/start_tc
    # ボディプレス始動コンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run function asa_animator:zinogre/manager/change_combo/start_td

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s

# 終了
tag @s remove IsNear
scoreboard players set #mhdp_zinogre_actcount_charge AsaMatrix 0