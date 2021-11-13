
# ランダム
loot spawn ~ 0 ~ loot asa_animator:narga/normal/far
# 移動近づき
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmMoveS
# 尾棘発射
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmTailShot
# 回り込み
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] if predicate asa_animator:random/050 run tag @s add AnmJumpL
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] unless entity @s[tag=AnmJumpL] run tag @s add AnmJumpR
execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s