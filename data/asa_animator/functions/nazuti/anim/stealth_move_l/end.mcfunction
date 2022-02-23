scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=NazutiParts] run function #asa_matrix:animate_reset
tag @s remove AnmStealthMoveL

# 状態取得
execute if score #mhdp_nazuti_lv AsaMatrix matches 1.. run tag @s add NazutiLv1
execute if score #mhdp_nazuti_lv AsaMatrix matches 2.. run tag @s add NazutiLv2
# ランダム
execute if entity @s[tag=IsAnmStealth] run loot spawn ~ 0 ~ loot asa_animator:nazuti/normal/after_stealth
## 共通
    # 毒弾ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmBreathB
    # 霧ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run function asa_animator:nazuti/manager/change_normal/_/breathf
    # 飛び掛かり
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmJump
# lv1-
    # 2連毒弾ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmBreathB2
    # 飛び掛かり
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmPressC0
# lv1-
    # 縦薙ぎ霧ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run tag @s add AnmBreathV

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s
tag @s remove NazutiLv1
tag @s remove NazutiLv2

tag @s remove IsAnmStealth