
# ランダム
loot spawn ~ 0 ~ loot asa_animator:zinogre/combo_fstep
# 突進
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmJumpAttackC
# お手
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmHand3
# チャージお手
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmHandC
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]