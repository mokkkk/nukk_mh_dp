
# ランダム
loot spawn ~ 0 ~ loot asa_animator:zinogre/combo_head_normal
# バックジャンプ（コンボ）
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmBjump
# 尻尾ビターン
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmTailWhip
# ステップ（コンボ）
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] if entity @e[tag=ZinogreAttackTarget,distance=..9] run tag @s add AnmBstep
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] unless entity @e[tag=ZinogreAttackTarget,distance=..9] run tag @s add AnmFstep
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]