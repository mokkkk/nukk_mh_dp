# ランダム
loot spawn ~ 0 ~ loot asa_animator:brachy/normal/far
# 回り込み
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run function asa_animator:brachy/manager/change_normal/_/turn
# 移動
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmMove
# 田植え
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmPlanting
# 移動コンボ
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run function asa_animator:brachy/manager/change_normal/combo/m_start
execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s