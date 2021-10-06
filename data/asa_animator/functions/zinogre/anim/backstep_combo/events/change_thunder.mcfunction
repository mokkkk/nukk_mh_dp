
# ランダム
loot spawn ~ 0 ~ loot asa_animator:zinogre/combo_step_thunder
# 雷光弾
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmShot
# チャージお手
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmHandC
# 突進
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmJumpAttackC
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]