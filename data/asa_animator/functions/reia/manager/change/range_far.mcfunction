
# ランダム
loot spawn ~ 0 ~ loot asa_animator:reia/normal/far
# ブレス
execute if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmBreath3
# 移動
execute if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmFly
# 突進
execute if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmDashStart
kill @e[type=item,nbt={Item:{tag:{ActPaper:1}}}]