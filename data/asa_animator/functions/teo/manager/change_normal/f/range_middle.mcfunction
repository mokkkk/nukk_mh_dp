
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
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:14}}}] run function asa_animator:teo/manager/change_combo/start_b
## LV1 -
    # 粉塵爆発（遠距離）
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmBombF
    # 滞空火炎放射
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run tag @s add AnmStartFly
    # 薙ぎ払い火炎放射
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:7}}}] run tag @s add AnmFlameLarge
    # 近接コンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:8}}}] run function asa_animator:teo/manager/change_normal/_/combo
    # コンボFB
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:9}}}] run function asa_animator:teo/manager/change_combo/start_fb
    # コンボFC
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:10}}}] run function asa_animator:teo/manager/change_combo/start_fc
## Lv2 -
    # 火の粉飛ばし
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:11}}}] run tag @s add AnmFlameLine
    # 溜め火炎放射
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:12}}}] run tag @s add AnmFlameNova
    # コンボFD
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:13}}}] run function asa_animator:teo/manager/change_combo/start_fd
    

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s
tag @s remove TeoLv1
tag @s remove TeoLv2