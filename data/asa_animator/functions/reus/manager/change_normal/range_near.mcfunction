
# ランダム
loot spawn ~ 0 ~ loot asa_animator:reus/normal/near
# 尻尾回転
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmTail
# 床ドン
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmJump
# 噛みつき
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmBite
# 2連噛みつき
execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmBite2
# チャージ噛みつき
execute if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmBiteC
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]