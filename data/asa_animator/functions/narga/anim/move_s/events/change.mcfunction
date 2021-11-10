scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate_reset
tag @s remove AnmMoveS

# ランダム
loot spawn ~ 0 ~ loot asa_animator:narga/normal/after_move
# 噛みつき
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmBite
# 尻尾振り
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmTailWhip
# 尻尾回転
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmTailSpin
execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s