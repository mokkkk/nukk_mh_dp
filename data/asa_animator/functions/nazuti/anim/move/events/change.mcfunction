scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate_reset
execute at @s align y run tp @s ~ ~5 ~
execute at @s run function asa_animator:zinogre/manager/check_ground
tag @s remove AnmMove
tag @s add AnmDashStart

# 状態取得
# execute if score #mhdp_nazuti_lv AsaMatrix matches 1.. run tag @s add NazutiLv1
# # ランダム
# loot spawn ~ 0 ~ loot asa_animator:nazuti/normal/after_move
# ## 共通
#     # ひっかき
#     execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run function asa_animator:nazuti/manager/change_normal/_/claw
#     # 噛みつき
#     execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run function asa_animator:nazuti/manager/change_normal/_/bite
#     # 竜巻ブレス（着地）
#     execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmBjbL
#     # 風薙ぎ噛みつき
#     execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run function asa_animator:nazuti/manager/change_normal/_/bitec
# 
# execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s
# tag @s remove NazutiLv1