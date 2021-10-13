
# ランダム
loot spawn ~ 0 ~ loot asa_animator:diablos/normal/near

# 頭振り回し
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmHead
# タックル
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmTackle
# 短距離突進
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmShortDash
# 歩き→短距離突進
execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmWalk
# 尻尾叩きつけ
execute if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmTailWhip
# 尻尾回転
execute if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run tag @s add AnmTailSpin
# 潜航
execute if entity @e[type=item,nbt={Item:{tag:{Act:7}}}] run tag @s add AnmDive

kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]