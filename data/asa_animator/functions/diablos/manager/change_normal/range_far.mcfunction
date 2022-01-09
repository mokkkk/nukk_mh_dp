
# ランダム
loot spawn ~ 0 ~ loot asa_animator:diablos/far
# 突進
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmDashStart
# 潜航
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmDive
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]