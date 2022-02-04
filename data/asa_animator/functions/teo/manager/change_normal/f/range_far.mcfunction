
# 状態取得
execute if score #mhdp_teo_lv AsaMatrix matches 1.. run tag @s add TeoLv1
execute if score #mhdp_teo_lv AsaMatrix matches 2.. run tag @s add TeoLv2
# ランダム
loot spawn ~ 0 ~ loot asa_animator:teo/f/far
## 共通
    # 突進
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmDashStart
    # 滑空突進
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmFlyTackle
## LV1 -
    # コンボFB
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run function asa_animator:teo/manager/change_combo/start_fb
## LV2 -
    # 溜め火炎放射
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmFlameNova

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s
tag @s remove TeoLv1
tag @s remove TeoLv2