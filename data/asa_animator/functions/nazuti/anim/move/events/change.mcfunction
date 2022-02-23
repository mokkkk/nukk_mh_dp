scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate_reset
execute at @s align y run tp @s ~ ~5 ~
execute at @s run function asa_animator:zinogre/manager/check_ground
tag @s remove AnmMove

# 状態取得
execute if score #mhdp_nazuti_lv AsaMatrix matches 1.. run tag @s add NazutiLv1
execute if score #mhdp_nazuti_lv AsaMatrix matches 2.. run tag @s add NazutiLv2
# ランダム
execute if predicate asa_animator:nazuti/combo run loot spawn ~ 0 ~ loot asa_animator:nazuti/normal/after_move
## 共通
    # ひっかき
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run function asa_animator:nazuti/manager/change_normal/_/claw
    # 突進
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmDashStart
    # 頭突き
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run function asa_animator:nazuti/manager/change_normal/_/head
# lv1-
    # ジャンプブレス
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmBreathJ
# lv2-
    # 毒弾ブレス乱射
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmBreathU
execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s
tag @s remove NazutiLv1
tag @s remove NazutiLv2