# ランダム
loot spawn ~ 0 ~ loot asa_animator:diablos/normal/middle
# 尻尾たたきつけ
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmTailWhip
# 移動→噛みつき
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmMove
# 突進1
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmStartD1
# 突進2
execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmStartD2
# 頭突き刺し
execute if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmHead
# 潜航
execute if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run tag @s add AnmDive
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]