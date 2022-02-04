
# 状態取得
execute if score #mhdp_teo_lv AsaMatrix matches 2.. run tag @s add TeoLv2
# ランダム
loot spawn ~ 0 ~ loot asa_animator:teo/f/far
## 共通
    # 突進
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmDashStart
    # 滑空突進
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmFlyTackle
## LV2 -
    # ノヴァ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmNova

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s
tag @s remove TeoLv2