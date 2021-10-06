
# ランダム
loot spawn ~ 0 ~ loot asa_animator:zinogre/combo_bj_thunder

# チャージお手
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmHandC
# 突進
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmJumpAttackC
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]