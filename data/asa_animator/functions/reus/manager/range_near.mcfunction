
# ランダム
loot spawn ~ 0 ~ loot asa_animator:reus/near
# 尻尾回転
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmTail
# 噛みつき
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmBite
# ジャンプ攻撃
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmJumpN
# BJB
execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmBjb
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]