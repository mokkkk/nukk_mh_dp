
# ランダム
loot spawn ~ 0 ~ loot asa_animator:reia/normal/near
# 尻尾回転
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run function asa_animator:reia/manager/change/_/tail
# 火炎噛みつき
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run function asa_animator:reia/manager/change/_/bite
# 噛みつき+尻尾回転
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run function asa_animator:reia/manager/change/_/b_tail
# 着地Bjb
execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmBjbLand
# サマソ
execute if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmSault
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]