scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=DynoParts] run function #asa_matrix:animate_reset
tag @s remove AnmBStep

# ランダム
execute unless entity @s[tag=IsHeatHead] unless entity @s[tag=IsHeatTail] run loot spawn ~ 0 ~ loot asa_animator:dyno/normal/after_bstep
execute if entity @s[tag=IsHeatHead] unless entity @s[tag=IsHeatTail] run loot spawn ~ 0 ~ loot asa_animator:dyno/head/after_bstep
execute unless entity @s[tag=IsHeatHead] if entity @s[tag=IsHeatTail] run loot spawn ~ 0 ~ loot asa_animator:dyno/tail/after_bstep
execute if entity @s[tag=IsHeatHead] if entity @s[tag=IsHeatTail] run loot spawn ~ 0 ~ loot asa_animator:dyno/head_tail/after_bstep
# 尻尾・遠距離攻撃
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run function asa_animator:dyno/manager/change_normal/_/shot
# 尻尾・飛び込み叩きつけ
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run function asa_animator:dyno/manager/change_normal/_/swingj
# ブレス・通常
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmBreath
# ブレス・サイドステップ
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run function asa_animator:dyno/manager/change_normal/_/breaths
execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s