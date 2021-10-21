
# ランダム
loot spawn ~ 0 ~ loot asa_animator:reus/normal/far
# ブレス
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmBreath
# 飛行開始
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmFly
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]