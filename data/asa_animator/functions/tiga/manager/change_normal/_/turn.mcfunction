
# 
# ランダム

# ランダム
execute if entity @s[tag=DashAct] run loot spawn ~ 0 ~ loot asa_animator:tiga/dash
# 噛みつき
execute if entity @s[tag=DashAct] if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add DashSpin
# 噛みつき・2連
execute if entity @s[tag=DashAct] if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add DashBite
# 腕薙ぎ払い
execute if entity @s[tag=DashAct] if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add DashStop
execute if entity @s[tag=DashAct] if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s
tag @s add DashAct

# 左右確認
execute facing entity @e[limit=1,tag=TigaAttackTarget] feet positioned ^ ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run tag @s add Right

execute if entity @s[tag=Right,tag=!DashSpin] run tag @s add AnmDashTurnRN
execute unless entity @s[tag=Right] if entity @s[tag=!DashSpin] run tag @s add AnmDashTurnLN
execute if entity @s[tag=Right,tag=DashSpin] run tag @s add AnmDashTurnRS
execute unless entity @s[tag=Right] if entity @s[tag=DashSpin] run tag @s add AnmDashTurnLS

tag @s remove Right