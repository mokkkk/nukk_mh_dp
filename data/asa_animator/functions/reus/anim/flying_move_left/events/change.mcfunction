
# ランダム
loot spawn ~ 0 ~ loot asa_animator:reus/flying/after_move_lr
# 爪
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmFlyAttack
# ブレス
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmFlyBreath
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]