
# ランダム
loot spawn ~ 0 ~ loot asa_animator:reus/flying/near
# なぎ払い爪
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmFlyAttackL
# なぎ払いブレス
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmFlyBreathL
# 後退
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmFlyMoveB
# 回り込み左
execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmFlyMoveL
# 回り込み右
execute if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmFlyMoveR
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]