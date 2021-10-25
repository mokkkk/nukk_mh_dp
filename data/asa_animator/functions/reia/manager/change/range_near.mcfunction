
# ランダム
loot spawn ~ 0 ~ loot asa_animator:reia/normal/near
# 尻尾回転
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmTail
# 火炎噛みつき
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmBite
# 噛みつき+尻尾回転
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmBiteTail
# 着地Bjb
execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmBjbLand
# サマソ
execute if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmSault
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]