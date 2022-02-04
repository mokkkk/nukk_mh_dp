
# 状態取得
execute if score #mhdp_teo_lv AsaMatrix matches 1.. run tag @s add TeoLv1
execute if score #mhdp_teo_lv AsaMatrix matches 2.. run tag @s add TeoLv2
function asa_animator:teo/manager/change_normal/_/tail_check

# ランダム
loot spawn ~ 0 ~ loot asa_animator:teo/f/near
## 共通
    # バックステップ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmStepB
    # ひっかき
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run function asa_animator:teo/manager/change_normal/_/claw
    # 噛みつき
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmBite
    # 移動噛みつき
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run function asa_animator:teo/manager/change_normal/_/bitelr
    # コンボA
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run function asa_animator:teo/manager/change_combo/start_a
    # 尻尾振り
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run tag @s add AnmTail
## LV1 -
    # 炎薙ぎ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:7}}}] run function asa_animator:teo/manager/change_normal/_/bitec
    # 粉塵爆発
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:8}}}] run function asa_animator:teo/manager/change_normal/_/bomb
    # 直下火炎放射
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:9}}}] run tag @s add AnmFlameGround
    # 滞空火炎放射
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:10}}}] run tag @s add AnmStartFly
    # 近接コンボ
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:11}}}] run function asa_animator:teo/manager/change_normal/_/combo
    # コンボFA
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:12}}}] run function asa_animator:teo/manager/change_combo/start_fa
## Lv2 -
    # 溜め火炎放射
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:13}}}] run tag @s add AnmFlameNova

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s
tag @s remove IsBack
tag @s remove TeoLv1
tag @s remove TeoLv2