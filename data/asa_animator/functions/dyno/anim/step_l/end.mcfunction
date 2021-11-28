scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=DynoParts] run function #asa_matrix:animate_reset
tag @s remove AnmLStep

# ランダム
execute unless entity @s[tag=IsHeatHead] unless entity @s[tag=IsHeatTail] run loot spawn ~ 0 ~ loot asa_animator:dyno/normal/after_sstep
execute if entity @s[tag=IsHeatHead] unless entity @s[tag=IsHeatTail] run loot spawn ~ 0 ~ loot asa_animator:dyno/head/after_sstep
execute unless entity @s[tag=IsHeatHead] if entity @s[tag=IsHeatTail] run loot spawn ~ 0 ~ loot asa_animator:dyno/tail/after_sstep
execute if entity @s[tag=IsHeatHead] if entity @s[tag=IsHeatTail] run loot spawn ~ 0 ~ loot asa_animator:dyno/head_tail/after_sstep
# 尻尾・突き
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run function asa_animator:dyno/manager/change_normal/_/thrust
# 尻尾・叩きつけ
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run function asa_animator:dyno/manager/change_normal/_/swing
# ブレス・通常
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmBreath
# ブレス・バックステップ
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmBreathBStep
execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s