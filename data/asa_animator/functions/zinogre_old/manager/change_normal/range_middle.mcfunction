# ランダム
loot spawn ~ 0 ~ loot asa_animator:zinogre/middle
# 雷光弾
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmShot
# ステップ（コンボ）
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmFstep
# 突進
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmJumpAttack
# ヘッドバット（コンボ）
execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmHead
# バックジャンプ（コンボ）
execute if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmBjump
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]