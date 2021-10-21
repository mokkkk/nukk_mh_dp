
# ランダム
loot spawn ~ 0 ~ loot asa_animator:reus/flying/after_move_b
# ブレス
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmFlyBreath
# なぎ払い爪
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmFlyAttackL
# なぎ払いブレス
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmFlyBreathL
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]