# ランダム
loot spawn ~ 0 ~ loot asa_animator:zinogre/middle_thunder
# 雷光弾
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmShot
# ステップ（コンボ）
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmFstep
# 突進（コンボ）
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmJumpAttackS
# ヘッドバット（コンボ）
execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmHead
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]