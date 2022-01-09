scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate_reset
tag @s remove AnmMove
# ランダム
loot spawn ~ 0 ~ loot asa_animator:diablos/move
# 頭振り回し
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmAttack
# 尻尾叩きつけ
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmTailShot
# 角突き刺し
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmHead
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]