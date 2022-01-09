# ランダム
loot spawn ~ 0 ~ loot asa_animator:diablos/middle
# 尻尾たたきつけ
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmTailWhip
# 移動
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmMove
# 突進
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmDashStart
# 頭突き刺し
execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmHead
# 短距離突進
execute if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmShortDash
# 潜航
execute if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run tag @s add AnmDive
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]