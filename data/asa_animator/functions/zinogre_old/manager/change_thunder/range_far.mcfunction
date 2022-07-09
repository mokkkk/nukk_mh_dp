
# ランダム
loot spawn ~ 0 ~ loot asa_animator:zinogre/far_thunder
# 雷光弾
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmShot
# 突進（コンボ）
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmJumpAttackS
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]