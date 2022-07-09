
# ランダム
loot spawn ~ 0 ~ loot asa_animator:zinogre/near_thunder
# ヘッドバット（コンボ）
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmHead
# タックル（コンボ）
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmTackle
# バックステップ（コンボ）
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmBstep
# ボディプレス（コンボ）
execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmPress
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]