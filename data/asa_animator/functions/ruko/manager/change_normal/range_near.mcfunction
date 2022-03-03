
# 状態取得
execute if score #mhdp_ruko_lv AsaMatrix matches 1.. run tag @s add RukoLv1
execute if score #mhdp_ruko_lv AsaMatrix matches 2.. run tag @s add RukoLv2
# ランダム
loot spawn ~ 0 ~ loot asa_animator:ruko/normal/near
## 共通
    # サイドステップ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run function asa_animator:ruko/manager/change_normal/_/step
    # ひっかき
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run function asa_animator:ruko/manager/change_normal/_/claw
    # 2連噛みつき
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run function asa_animator:ruko/manager/change_normal/_/bite2
    # 龍薙ぎ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run function asa_animator:ruko/manager/change_normal/_/bitec
    # ボディプレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmPress
    # 滑空ボディプレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run tag @s add AnmFly
    # ドラゴンレーザー
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:7}}}] run function asa_animator:ruko/manager/change_normal/_/breath
    # Dコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:8}}}] run function asa_animator:ruko/manager/change_combo/start_d
## LV1 -
    # 吸引龍薙ぎ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:9}}}] run function asa_animator:ruko/manager/change_normal/_/gbitec
    # 吸引滑空ボディプレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:10}}}] run tag @s add AnmGFly
    # バックステップ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:11}}}] run tag @s add AnmStepB
    # 岩回転
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:12}}}] run tag @s add AnmStone
    # BJB
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:13}}}] run tag @s add AnmBjb
    # Eコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:14}}}] run function asa_animator:ruko/manager/change_combo/start_e
## LV2 -
    # 拡散岩飛ばし
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:15}}}] run tag @s add AnmStoneShotL0
    # 地面ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:16}}}] run tag @s add AnmBreathG
    # Iコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:17}}}] run function asa_animator:ruko/manager/change_combo/start_i
    # Kコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:18}}}] run function asa_animator:ruko/manager/change_combo/start_k
    # Lコンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:19}}}] run function asa_animator:ruko/manager/change_combo/start_l

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s
tag @s remove RukoLv1
tag @s remove RukoLv2
tag @s remove IsBack