
# ランダム
loot spawn ~ 0 ~ loot asa_animator:reus/flying/far
# ブレス
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmFlyBreath
# 前進
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmFlyMoveF
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]