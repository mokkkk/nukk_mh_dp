scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate_reset
tag @s remove AnmStepR

# 状態取得
execute if score #mhdp_kushala_lv AsaMatrix matches 1.. run tag @s add KushalaLv1
# ランダム
execute if predicate asa_animator:kushala/combo run loot spawn ~ 0 ~ loot asa_animator:kushala/normal/after_step
## 共通
    # 噛みつき
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run function asa_animator:kushala/manager/change_normal/_/bite
    # 風弾ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmBreath
    # 竜巻ブレス（着地）
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmBjbL
## LV1 -
    # 落下ブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run function asa_animator:kushala/manager/change_normal/_/breathu

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s
tag @s remove KushalaLv1