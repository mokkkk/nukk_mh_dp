# ランダム
loot spawn ~ 0 ~ loot asa_animator:diablos/middle
# 移動
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmMove
# 突進
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmStartD1
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmStartD2
# 潜航
execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmDive
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]