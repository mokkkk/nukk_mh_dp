scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate_reset
tag @s remove AnmMove

execute if entity @s[tag=IsSault] run tag @s add AnmSault

# ランダム
execute unless entity @s[tag=IsSault] run loot spawn ~ 0 ~ loot asa_animator:reia/normal/after_move
# 噛みつき
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmMoveBite
# サマソ
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmSault
# チャージブレス
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmCharge
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]

tag @s remove IsSault