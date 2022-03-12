
# 状態取得
execute if score #mhdp_teo_lv AsaMatrix matches 1.. run tag @s add TeoLv1
execute if score #mhdp_teo_lv AsaMatrix matches 2.. run tag @s add TeoLv2

# ランダム
loot spawn ~ 0 ~ loot asa_animator:teo/f/middle
## 共通
    # 突進
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmDashStart
    # 移動
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmMoveStart
    # 飛び掛かり
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run function asa_animator:teo/manager/change_normal/_/jump
    # 滑空突進
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmFlyTackle
    # コンボB
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run function asa_animator:teo/manager/change_combo/start_b
## LV1 -
    # 粉塵爆発（遠距離）
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run tag @s add AnmBombF
    # 薙ぎ払い火炎放射
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:7}}}] run tag @s add AnmFlameLarge
    # 粉塵飛ばし
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:8}}}] run tag @s add AnmBombLine
    # 近接コンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:9}}}] run function asa_animator:teo/manager/change_normal/_/combo
    # コンボBB
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:10}}}] run function asa_animator:teo/manager/change_combo/start_bb
    # コンボBC
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:11}}}] run function asa_animator:teo/manager/change_combo/start_bc
## Lv2 -
    # 粉塵まき散らし
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:12}}}] run tag @s add AnmBombDashStart
    # ノヴァ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:13}}}] run tag @s add AnmNova
    

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s
tag @s remove TeoLv1
tag @s remove TeoLv2