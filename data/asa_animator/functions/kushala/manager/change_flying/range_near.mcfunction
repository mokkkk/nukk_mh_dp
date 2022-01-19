
# 状態取得
execute if score #mhdp_kushala_lv AsaMatrix matches 1.. run tag @s add KushalaLv1
execute if score #mhdp_kushala_lv AsaMatrix matches 2.. run tag @s add KushalaLv2
# ランダム
loot spawn ~ 0 ~ loot asa_animator:kushala/normal/near
## 共通
    # サイドステップ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run function asa_animator:kushala/manager/change_normal/_/move_lr
    # ひっかき
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run function asa_animator:kushala/manager/change_normal/_/claw
    # 噛みつき
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run function asa_animator:kushala/manager/change_normal/_/bite
    # 竜巻ブレス（着地）
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmBjbL
    # Aコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run function asa_animator:kushala/manager/change_combo/start_a
## LV1 -
    # 風薙ぎ噛みつき
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run function asa_animator:kushala/manager/change_normal/_/bitec
    # 落下ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:7}}}] run function asa_animator:kushala/manager/change_normal/_/breathu
    # Bコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:8}}}] run function asa_animator:kushala/manager/change_combo/start_b
    # Cコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:9}}}] run function asa_animator:kushala/manager/change_combo/start_c
    # Gコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:11}}}] run function asa_animator:kushala/manager/change_combo/start_g
## Lv2 -
    # Dコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:10}}}] run function asa_animator:kushala/manager/change_combo/start_d
    # Hコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:12}}}] run function asa_animator:kushala/manager/change_combo/start_h

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s
tag @s remove KushalaLv1
tag @s remove KushalaLv2