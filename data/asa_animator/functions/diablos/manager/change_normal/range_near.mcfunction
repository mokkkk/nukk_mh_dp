
# 位置関係確認
function asa_animator:diablos/manager/check_pos/forward
function asa_animator:diablos/manager/check_pos/back
# ランダム
loot spawn ~ 0 ~ loot asa_animator:diablos/near

# All
    # 短距離突進
    execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmShortDash
    # 尻尾叩きつけ
    execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmTailShot
    # 尻尾回転
    execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run function asa_animator:diablos/manager/change_normal/_/tail
    # 潜航
    execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmDive
# Forward
    # 頭振り回し
    execute if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmAttack
    # 角突き刺し
    execute if entity @e[type=item,nbt={Item:{tag:{Act:9}}}] run tag @s add AnmHead
# Back
    # 尻尾振り回し
    execute if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run tag @s add AnmTailWhip
    # 歩き→短距離突進
    execute if entity @e[type=item,nbt={Item:{tag:{Act:7}}}] run function asa_animator:diablos/manager/change_normal/_/walk
# Default
    # タックル
    execute if entity @e[type=item,nbt={Item:{tag:{Act:8}}}] run function asa_animator:diablos/manager/change_normal/_/tackle

tag @s remove IsForward
tag @s remove IsBack
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]