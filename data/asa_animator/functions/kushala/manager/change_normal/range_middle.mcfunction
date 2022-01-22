
# 状態取得
execute if score #mhdp_kushala_lv AsaMatrix matches 1.. run tag @s add KushalaLv1
execute if score #mhdp_kushala_lv AsaMatrix matches 2.. run tag @s add KushalaLv2
# ランダム
loot spawn ~ 0 ~ loot asa_animator:kushala/normal/middle
## 共通
    # 前移動
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmMoveStart
    # サイドステップ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run function asa_animator:kushala/manager/change_normal/_/move_lr
    # 風弾ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmBreath
    # とびかかり
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmJump
    # 突進
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmDashStart
## LV1 -
    # 溜め風弾ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run tag @s add AnmBreathC
    # 落下ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:7}}}] run tag @s add AnmBreathU
    # Bコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:8}}}] run function asa_animator:kushala/manager/change_combo/start_b
    # Eコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:9}}}] run function asa_animator:kushala/manager/change_combo/start_e
    # Gコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:13}}}] run function asa_animator:kushala/manager/change_combo/start_g
## Lv2 -
    # 風薙ぎブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:10}}}] run tag @s add AnmBreathV
    # Dコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:11}}}] run function asa_animator:kushala/manager/change_combo/start_d
    # Fコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:12}}}] run function asa_animator:kushala/manager/change_combo/start_f
    # Hコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:14}}}] run function asa_animator:kushala/manager/change_combo/start_h

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s
tag @s remove KushalaLv1
tag @s remove KushalaLv2