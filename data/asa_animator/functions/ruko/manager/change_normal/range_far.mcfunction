
# 状態取得
execute if score #mhdp_ruko_lv AsaMatrix matches 1.. run tag @s add RukoLv1
execute if score #mhdp_ruko_lv AsaMatrix matches 2.. run tag @s add RukoLv2
# ランダム
loot spawn ~ 0 ~ loot asa_animator:ruko/normal/far
## 共通
    # ドラゴンレーザー
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run function asa_animator:ruko/manager/change_normal/_/breath
## LV1 -
    # 薙ぎ払いドラゴンレーザー
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmBreathLarge
    # 岩飛ばし
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmStoneShot
## LV2 -
    # チャージブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmBreathC

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s
tag @s remove RukoLv1
tag @s remove RukoLv2