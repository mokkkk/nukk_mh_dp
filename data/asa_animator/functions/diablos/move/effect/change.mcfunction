scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate_reset
tag @s remove AnmMove

# タックル，角振り回し，角振り上げ
loot spawn ~ 0 ~ loot asa_animator:diablos/after_move
# ショルダータックル
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmTackle
# 噛みつき
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmAttack
# 角振り上げ
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmDashAttack
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]