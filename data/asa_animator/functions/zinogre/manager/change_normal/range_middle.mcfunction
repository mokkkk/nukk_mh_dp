
# 状態取得
execute if score #mhdp_ruko_lv AsaMatrix matches 1.. run tag @s add RukoLv1
execute if score #mhdp_ruko_lv AsaMatrix matches 2.. run tag @s add RukoLv2
# ランダム
loot spawn ~ 0 ~ loot asa_animator:ruko/normal/middle
## 共通
    # 移動
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmMoveStart
    # 飛び掛かり
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmJump
    # 突進
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmDashStart
    # ひっかき
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run function asa_animator:ruko/manager/change_normal/_/claw
    # 滑空ボディプレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmFly
    # ドラゴンレーザー
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run function asa_animator:ruko/manager/change_normal/_/breath
    # Aコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:7}}}] run function asa_animator:ruko/manager/change_combo/start_a
    # Bコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:8}}}] run function asa_animator:ruko/manager/change_combo/start_b
    # Cコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:9}}}] run function asa_animator:ruko/manager/change_combo/start_c
## LV1 -
    # 吸引滑空ボディプレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:10}}}] run tag @s add AnmGFly
    # 薙ぎ払いドラゴンレーザー
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:11}}}] run tag @s add AnmBreathLarge
    # 岩飛ばし
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:12}}}] run tag @s add AnmStoneShot
    # 岩回転
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:13}}}] run tag @s add AnmStone
    # Eコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:14}}}] run function asa_animator:ruko/manager/change_combo/start_e
    # Fコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:15}}}] run function asa_animator:ruko/manager/change_combo/start_f
    # Gコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:16}}}] run function asa_animator:ruko/manager/change_combo/start_g
## Lv2 -
    # 地面ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:17}}}] run tag @s add AnmBreathG
    # チャージブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:18}}}] run tag @s add AnmBreathC
    # Hコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:19}}}] run function asa_animator:ruko/manager/change_combo/start_h
    # Jコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:20}}}] run function asa_animator:ruko/manager/change_combo/start_j
    # Lコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:21}}}] run function asa_animator:ruko/manager/change_combo/start_l

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s
tag @s remove RukoLv1
tag @s remove RukoLv2