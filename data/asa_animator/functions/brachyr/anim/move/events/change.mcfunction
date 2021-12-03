scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=BrachyRParts] run function #asa_matrix:animate_reset
tag @s remove AnmMove
tag @s add AnmMovePunchL

# # ランダム
# loot spawn ~ 0 ~ loot asa_animator:brachyr/normal/after_move
# # 叩きつけパンチ
# execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run function asa_animator:brachyr/manager/change_normal/_/punch_r
# # アッパー
# execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run function asa_animator:brachyr/manager/change_normal/_/move_punch
# # 線状爆破
# execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmHeadShot
# execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s