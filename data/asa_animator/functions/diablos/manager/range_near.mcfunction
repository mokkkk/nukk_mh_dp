
# ランダム
loot spawn ~ 0 ~ loot asa_animator:diablos/near
# ショルダータックル
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmTackle
# 噛みつき
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmAttack
# 尻尾回転
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmTail
# ジャンプ攻撃
execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmJump
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]