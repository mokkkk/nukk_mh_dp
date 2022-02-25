
# 状態取得
execute if score #mhdp_nazuti_lv AsaMatrix matches 1.. run tag @s add NazutiLv1
execute if score #mhdp_nazuti_lv AsaMatrix matches 2.. run tag @s add NazutiLv2
# ランダム
loot spawn ~ 0 ~ loot asa_animator:nazuti/normal/middle
## 共通
    # 移動
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmMoveStart
    # 飛び掛かり
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmJump
    # 突進
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmDashStart
    # 毒弾ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmBreathB
    # 毒霧ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run function asa_animator:nazuti/manager/change_normal/_/breathf
    # 毒霧展開（前方）
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run tag @s add AnmFogF
    # Aコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:7}}}] run function asa_animator:nazuti/manager/change_combo/start_a
## LV1 -
    # 2連毒弾ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:8}}}] run tag @s add AnmBreathB2
    # Cコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:9}}}] run function asa_animator:nazuti/manager/change_combo/start_c
    # Dコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:10}}}] run function asa_animator:nazuti/manager/change_combo/start_d
## Lv2 -
    # 高速ステルス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:11}}}] run function asa_animator:nazuti/manager/change_normal/_/stealthv2
    # Fコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:12}}}] run function asa_animator:nazuti/manager/change_combo/start_f
    # Gコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:13}}}] run function asa_animator:nazuti/manager/change_combo/start_g

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s
tag @s remove NazutiLv1
tag @s remove NazutiLv2