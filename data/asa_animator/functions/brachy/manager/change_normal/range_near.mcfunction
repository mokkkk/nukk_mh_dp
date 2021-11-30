
# ランダム
execute unless entity @s[tag=IsHeatHead] unless entity @s[tag=IsHeatTail] run loot spawn ~ 0 ~ loot asa_animator:dyno/normal/near
execute if entity @s[tag=IsHeatHead] unless entity @s[tag=IsHeatTail] run loot spawn ~ 0 ~ loot asa_animator:dyno/head/near
execute unless entity @s[tag=IsHeatHead] if entity @s[tag=IsHeatTail] run loot spawn ~ 0 ~ loot asa_animator:dyno/tail/near
execute if entity @s[tag=IsHeatHead] if entity @s[tag=IsHeatTail] run loot spawn ~ 0 ~ loot asa_animator:dyno/head_tail/near
# 噛みつき
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run function asa_animator:dyno/manager/change_normal/_/bite
# バックステップ
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmBStep
# サイドステップ
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run function asa_animator:dyno/manager/change_normal/_/sstep
# 尻尾・突き
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run function asa_animator:dyno/manager/change_normal/_/thrust
# 尻尾・叩きつけ
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run function asa_animator:dyno/manager/change_normal/_/swing
# 尻尾・斬り払い
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run function asa_animator:dyno/manager/change_normal/_/large
# 尻尾・ラウンドフォース
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:7}}}] run tag @s add AnmTailRound
# ブレス・バックステップ
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:8}}}] run tag @s add AnmBreathBStep
# 噛みつき・2連
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:9}}}] run tag @s add AnmBite2
execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s