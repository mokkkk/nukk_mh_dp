
# ランダム
loot spawn ~ 0 ~ loot asa_animator:reus/flying/after_move_f
# なぎ払い爪
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmFlyAttackL
# 爪
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmFlyAttack
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]