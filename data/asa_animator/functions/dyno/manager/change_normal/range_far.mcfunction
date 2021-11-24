# ランダム
execute unless entity @s[tag=IsHeatHead] unless entity @s[tag=IsHeatTail] run loot spawn ~ 0 ~ loot asa_animator:dyno/normal/far
execute if entity @s[tag=IsHeatHead] unless entity @s[tag=IsHeatTail] run loot spawn ~ 0 ~ loot asa_animator:dyno/head/far
execute unless entity @s[tag=IsHeatHead] if entity @s[tag=IsHeatTail] run loot spawn ~ 0 ~ loot asa_animator:dyno/tail/far
execute if entity @s[tag=IsHeatHead] if entity @s[tag=IsHeatTail] run loot spawn ~ 0 ~ loot asa_animator:dyno/head_tail/far
# 移動
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmMove
# 尻尾・遠距離攻撃
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run function asa_animator:dyno/manager/change_normal/_/shot
# 尻尾・飛び込み叩きつけ
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run function asa_animator:dyno/manager/change_normal/_/swingj
# ブレス・通常
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:4}}}] run tag @s add AnmBreath
# ブレス・バックステップ
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:5}}}] run tag @s add AnmBreathBStep
# ブレス・サイドステップ
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:6}}}] run function asa_animator:dyno/manager/change_normal/_/breaths

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s