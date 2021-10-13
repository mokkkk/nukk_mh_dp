
# ランダム
loot spawn ~ 0 ~ loot asa_animator:diablos/normal/snear

# 歩き→短距離突進
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmWalk
# タックル
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmTackle
# 尻尾回転
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmTailSpin

kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]