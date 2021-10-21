scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate_reset
tag @s remove AnmFly

# ランダム
loot spawn ~ 0 ~ loot asa_animator:reus/fly_move
# 爪
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmAttackF
# ブレス
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmBreathF
# 回り込み
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmMoveF
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]