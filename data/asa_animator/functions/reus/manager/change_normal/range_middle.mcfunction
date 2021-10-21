# ランダム
loot spawn ~ 0 ~ loot asa_animator:reus/normal/middle
# 移動
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmMove
# 2連噛みつき
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmBite2
# ブレス
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmBreath
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]