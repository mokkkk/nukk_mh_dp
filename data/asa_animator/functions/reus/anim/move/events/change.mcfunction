scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate_reset
tag @s remove AnmMove

# ランダム
loot spawn ~ 0 ~ loot asa_animator:reus/normal/after_move
# 噛みつき
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmBite
# 噛みつき・2連
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmBite2
# 床ドン
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmJump
# チャージ噛みつき
execute if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmBiteC
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]