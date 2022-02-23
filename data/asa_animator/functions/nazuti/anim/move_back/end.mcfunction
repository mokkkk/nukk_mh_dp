scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=NazutiParts] run function #asa_matrix:animate_reset
tag @s remove AnmMoveB

# 状態取得
execute if score #mhdp_nazuti_lv AsaMatrix matches 1.. run tag @s add NazutiLv1
# ランダム
execute if predicate asa_animator:nazuti/combo run loot spawn ~ 0 ~ loot asa_animator:nazuti/normal/after_back
## 共通
    # 毒弾ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmBreathB
    # 霧ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run function asa_animator:nazuti/manager/change_normal/_/breathf
# lv1-
    # 2連毒弾ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmBreathB2
execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s
tag @s remove NazutiLv1