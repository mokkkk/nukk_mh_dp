
# ランダム
loot spawn ~ 0 ~ loot asa_animator:zinogre/near
# ヘッドバット（コンボ）
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmHead
# タックル
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmTackle
# バックステップ（コンボ）
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmBstep
# サマソ
execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmTailSpin
# ボディプレス（コンボ）
execute if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmPress
# バックジャンプ（コンボ）
execute if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run tag @s add AnmBjump
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]