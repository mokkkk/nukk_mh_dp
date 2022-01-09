
# 位置関係確認
function asa_animator:diablos/manager/check_pos/forward
function asa_animator:diablos/manager/check_pos/back
# ランダム
loot spawn ~ 0 ~ loot asa_animator:diablos/snear

# 歩き→短距離突進
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run function asa_animator:diablos/manager/change_normal/_/walk
# タックル
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run function asa_animator:diablos/manager/change_normal/_/tackle
# 頭振り回し
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmAttack
# 尻尾叩きつけ（岩飛ばし）
execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmTailShot
# 尻尾振り回し
execute if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmTailWhip
# 潜航
execute if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run tag @s add AnmDive

tag @s remove IsForward
tag @s remove IsBack
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]